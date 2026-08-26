-- Converts MkDocs Material-style admonitions:
--   !!! note "Title"
--       Body text, indented by 4 spaces...
-- (the title is optional: "!!! note" alone is valid, with a default title
-- per type) into a styled tcolorbox for LaTeX/PDF output.
-- Pandoc doesn't understand this syntax: it all ends up as a single
-- paragraph ("!!!", the type, optionally the quoted title, then the body).
-- See \newtcolorbox{...block} in styles.md for each type's style.

local default_titles = {
  note = "Note",
  warning = "Warning",
  tip = "Tip",
  danger = "Danger",
  info = "Info",
  example = "Example",
}

function Para(el)
  local inlines = el.content
  if not (#inlines >= 3
      and inlines[1].t == "Str" and inlines[1].text == "!!!"
      and inlines[2].t == "Space"
      and inlines[3].t == "Str" and default_titles[inlines[3].text]) then
    return nil
  end

  local kind = inlines[3].text
  local title, bodyStart

  if inlines[4] and inlines[4].t == "Space" and inlines[5] and inlines[5].t == "Quoted" then
    title = pandoc.utils.stringify(inlines[5].content)
    bodyStart = (inlines[6] and inlines[6].t == "SoftBreak") and 7 or 6
  elseif inlines[4] and inlines[4].t == "SoftBreak" then
    title = default_titles[kind]
    bodyStart = 5
  else
    return nil
  end

  local body = {}
  for i = bodyStart, #inlines do
    table.insert(body, inlines[i])
  end

  local envname = kind .. "block"
  return {
    pandoc.RawBlock("latex", "\\begin{" .. envname .. "}{" .. title .. "}"),
    pandoc.Para(body),
    pandoc.RawBlock("latex", "\\end{" .. envname .. "}"),
  }
end
