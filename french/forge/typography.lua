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
