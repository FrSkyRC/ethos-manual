-- Règle typographique française : espace insécable avant : ; ! ? pour
-- qu'un retour à la ligne ne puisse jamais isoler la ponctuation seule en
-- début de ligne. Babel-french le fait automatiquement via ses
-- "shorthands", mais on les a désactivés (bug d'espacement avec
-- l'apostrophe, voir styles.md) — on le refait donc ici, au niveau Pandoc.

function Inlines(inlines)
  local new = {}
  for i, el in ipairs(inlines) do
    local nextEl = inlines[i + 1]
    if el.t == "Space" and nextEl and nextEl.t == "Str"
        and nextEl.text:match("^[:;!?]") then
      table.insert(new, pandoc.RawInline("latex", "~"))
    else
      table.insert(new, el)
    end
  end
  return new
end

-- Un longtable (toujours utilisé par Pandoc pour les tableaux Markdown) gère
-- ses propres sauts de page et fausse le calcul de place restante pour une
-- figure flottante qui suivrait immédiatement, la faisant parfois déborder
-- en bas de page. \FloatBarrier (placeins, voir styles.md) après chaque
-- tableau force un placement propre des flottants en attente.
function Table(el)
  return { el, pandoc.RawBlock("latex", "\\FloatBarrier") }
end

-- Lignes « icône + libellé » : un paragraphe qui commence par une image suivie
-- immédiatement d'un espace (une tabulation dans l'ODT, p. ex. une icône puis
-- sa description) est une légende d'icônes, pas une capture. On rend l'icône
-- en ligne, en face de son libellé, au lieu de laisser \pandocbounded la
-- poser seule sur sa ligne en bloc réduit.
local function icon_label_para(b)
  return (b.t == "Para" or b.t == "Plain")
     and b.content[1] and b.content[1].t == "Image"
     and b.content[2] and b.content[2].t == "Space"
end

local function inline_icon_para(b)
  local src = b.content[1].src
  local out = pandoc.List()
  -- hangindent pour qu'un libellé qui passe à la ligne s'aligne sous lui-même
  -- et non sous l'icône
  out:insert(pandoc.RawInline("latex",
    "\\hangindent=2em\\hangafter=1 " ..
    "\\raisebox{-0.25\\height}{\\includegraphics[height=1.5em]{" .. src .. "}}\\hspace{0.5em}"))
  for i = 3, #b.content do
    out:insert(b.content[i])
  end
  return pandoc.Para(out)
end

-- Les titres de niveau 6 (######, \subparagraph) sont « run-in » : ce qui
-- suit continue sur la même ligne, ce qui va bien avant un paragraphe mais
-- casse avant une image — KOMA diffère alors le titre, qui se retrouve
-- détaché de l'image et imprimé après elle. Quand un titre de niveau 6 est
-- immédiatement suivi d'un bloc commençant par une image (figure, capture
-- seule, ou ligne « icône + libellé »), on force le titre sur sa propre
-- ligne (\leavevmode\par) avec un petit espace avant l'image, en gardant les
-- deux sur la même page.
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
