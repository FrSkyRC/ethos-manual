-- Convertit les admonitions au format MkDocs Material :
--   !!! note "Titre"
--       Corps du texte, indenté de 4 espaces...
-- (le titre est optionnel : "!!! note" seul est valide, avec un titre par
-- défaut selon le type) en boîte tcolorbox stylée pour la sortie LaTeX/PDF.
-- Pandoc ne comprend pas cette syntaxe : tout finit comme un seul paragraphe
-- ("!!!", le type, éventuellement le titre entre guillemets, puis le corps).
-- Voir \newtcolorbox{...block} dans styles.md pour le style de chaque type.

local default_titles = {
  note = "Note",
  warning = "Attention",
  tip = "Astuce",
  danger = "Danger",
  info = "Info",
  example = "Exemple",
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
    -- !!! note "Titre" ...
    title = pandoc.utils.stringify(inlines[5].content)
    bodyStart = (inlines[6] and inlines[6].t == "SoftBreak") and 7 or 6
  elseif inlines[4] and inlines[4].t == "SoftBreak" then
    -- !!! note (sans titre) -> titre par défaut selon le type
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
