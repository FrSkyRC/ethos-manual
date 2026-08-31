-- A longtable (always used by Pandoc for Markdown tables) manages its own
-- page breaks and throws off the remaining-space calculation for a floating
-- figure placed immediately after it, sometimes pushing the image past the
-- bottom of the page. \FloatBarrier (placeins, see styles.md) after every
-- table forces any pending floats to be placed cleanly first.
function Table(el)
  return { el, pandoc.RawBlock("latex", "\\FloatBarrier") }
end

-- "Icon + label" lines: a paragraph that leads with an image immediately
-- followed by a space (a tab in the ODT source, e.g. an icon then its
-- description) is an icon legend, not a screenshot. Render the icon inline,
-- next to its label, instead of letting \pandocbounded drop it onto its own
-- line as a scaled block.
local function icon_label_para(b)
  return (b.t == "Para" or b.t == "Plain")
     and b.content[1] and b.content[1].t == "Image"
     and b.content[2] and b.content[2].t == "Space"
end

local function inline_icon_para(b)
  local src = b.content[1].src
  local out = pandoc.List()
  -- hangindent so a wrapped label lines up under itself, not under the icon
  out:insert(pandoc.RawInline("latex",
    "\\hangindent=2em\\hangafter=1 " ..
    "\\raisebox{-0.25\\height}{\\includegraphics[height=1.5em]{" .. src .. "}}\\hspace{0.5em}"))
  for i = 3, #b.content do
    out:insert(b.content[i])
  end
  return pandoc.Para(out)
end

-- Level-6 headings (######, \subparagraph) are run-in: what follows continues
-- on the same line, which reads fine before a paragraph but breaks before an
-- image -- KOMA then defers the heading and it ends up detached from, and
-- printed after, the image. When a level-6 heading is immediately followed by
-- a block that leads with an image (a figure, a bare screenshot, or an
-- "icon + label" line), force the heading onto its own line (\leavevmode\par)
-- with a small gap before the image, and keep the two on the same page.
local function leads_with_image(b)
  if b == nil then return false end
  if b.t == "Figure" then return true end
  if b.t == "Para" or b.t == "Plain" then
    local first = b.content[1]
    if first == nil then return false end
    if first.t == "Image" then return true end
    if first.t == "RawInline" and first.text:find("includegraphics") then return true end
  end
  return false
end

function Pandoc(doc)
  local out = pandoc.List()
  for i, b in ipairs(doc.blocks) do
    local next_block = doc.blocks[i + 1]
    if icon_label_para(b) then
      b = inline_icon_para(b)
    end
    out:insert(b)
    if b.t == "Header" and b.level == 6 and leads_with_image(next_block) then
      out:insert(pandoc.RawBlock("latex", "\\leavevmode\\par\\nobreak\\vspace{0.3\\baselineskip}\\nobreak"))
    end
  end
  doc.blocks = out
  return doc
end
