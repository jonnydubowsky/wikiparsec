{-# LANGUAGE NoImplicitPrelude, OverloadedStrings #-}

import WikiPrelude
import Test.HUnit
import Text.MediaWiki.Wiktionary.Base
import Text.MediaWiki.Wiktionary.French

cloudberryEntry :: Text
cloudberryEntry = unlines [
    "== {{langue|fr}} ==",
    "=== {{S|étymologie}} ===",
    ": De ''[[plat-de-bierre]]'', cité en 1755 par le botaniste, agronome et physicien français {{nom w pc|Henri Louis|Duhamel du Monceau}}, provenant peut-être de ''plat de [[bièvre]]'' (« nourriture du castor »){{R|DuMonceau}}.",
    "",
    "=== {{S|nom|fr}} ===",
    "{{fr-rég|plak.bjɛʁ}}",
    "'''plaquebière''' {{pron|plak.bjɛʁ|fr}} {{f}}",
    "[[Image:Rubus chamaemorus close-up.JPG|vignette|Une '''plaquebière''' (définition 1).]]",
    "[[File:Reife moltebeeren.JPG|vignette|Des '''plaquebières'''. (définition 2)]]",
    "# {{plantes|fr}} Petite [[plante]] [[vivace]], typique des [[tourbière]]s des pays [[nordique]]s, de nom scientifique ''[[Rubus chamaemorus]]''{{R|MMPND}}.",
    "#* ''Le blason représente un plant de '''plaquebière''', ou mûre arctique, plante répandue dans la région.'' {{source|Wikipédia, article ''{{w||Nesseby}}'', 2010}}",
    "#* ''Des sommets couverts de la toundra alpine, où les '''plaquebières''' ambrées brillent parmi les conifères nains.'' {{source|Raoul {{pc|Blanchard}}, ''Mélanges géographiques canadiens offerts'', Institut de géographie, Université Laval, 1959, page 464}}",
    "# {{métonymie|fr}} Le [[fruit]] de cette plante, d’abord rouge puis jaune d’or à maturité, utilisé pour les [[confiture]]s et dont on fait une [[liqueur#fr|liqueur]].",
    "#* ''Un extrait de '''plaquebières'''.''",
    "#* ''On travaillait au jardin, on allait aux '''plaquebières''', on cueillait des coques et du homard sur les grèves.'' {{source|Louis {{pc|Haché}}, ''Tourbes jersiaises'', Éditions d’Acadie, 1980}}",
    "#* ''La '''plaquebière''' ressemble à une framboise orangée, tandis que l’aronie est une baie rouge ou noire.'' {{source|Carole {{pc|Minker}}, ''Myrtille et autres fruits rouges : Un concentré de bienfaits pour votre santé'', Eyrolles, 2011, page 15}}",
    "",
    "==== {{S|variantes orthographiques}} ====",
    "* [[plaque-bière]]",
    "===={{S|hyperonymes}}====",
    ";''plante''",
    "*[[rosacées]]",
    ";''fruit''",
    "*[[baie]] {{populaire|nocat}}",
    "*[[fruit charnu]] {{botanique|nocat}}",
    "*[[fruit composé]] {{botanique|nocat}}",
    "",
    "==== {{S|synonymes}} ====",
    "{{(}}",
    "* [[baie polaire]]",
    "* [[blackbière]]{{R|Naud}}",
    "* [[chicouté]] {{Québec|nocat=1}}",
    "* [[chicoutai]]{{R|foodlexicon}} {{Québec|nocat=1}}",
    "* [[faux mûrier]]{{R|foodlexicon}}",
    "* [[framboise jaune]]{{R|foodlexicon}}",
    "* [[moréale]]",
    "* [[mûre arctique]]",
    "* [[mûre des marais]]{{R|foodlexicon}}",
    "* [[mûrier nain]]{{R|foodlexicon}}",
    "* [[plate-bière]]{{R|Naud}}",
    "* [[ronce des tourbières]]",
    "* [[ronce petit-mûrier]]",
    "{{)}}",
    "==== {{S|vocabulaire}} ====",
    "{{voir thésaurus|fr|cueillette|framboise}}",
    "",
    "==== {{S|traductions}} ====",
    "{{trad-début|La plante et le fruit (sauf mention contraire)}}",
    "* {{T|en}} : {{trad+|en|cloudberry}}, {{trad+|en|bakeapple}} (''Canada atlantique'')",
    "* {{T|ba}} : {{trad--|ba|һаз еләге}}",
    "* {{T|ca}} : {{trad-|ca|móra vermella}}",
    "* {{T|zh}} : {{trad-|zh|云莓|tradi=雲莓|tr=yúnméi}}, {{trad-|zh|兴安悬钩子|tradi=興安懸鈎子|tr=xìng’ān xuángōuzi}}",
    "* {{T|conv}} : ''{{trad+|conv|Rubus chamaemorus}}'' (L.)",
    "{{trad-fin}}"
    -- cut many more translation entries that are just using the same templates
    ]

cloudberryFacts :: [WiktionaryFact]
cloudberryFacts = [
    WiktionaryFact "definition" (term ["plaquebière","fr","nom","1","def.1"]) (term ["Petite plante vivace, typique des tourbières des pays nordiques, de nom scientifique Rubus chamaemorus","fr"]),
    WiktionaryFact "context" (term ["plaquebière","fr","nom","1","def.1"]) (term ["plantes","fr"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.1"]) (term ["plante"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.1"]) (term ["vivace"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.1"]) (term ["tourbière"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.1"]) (term ["nordique"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.1"]) (term ["Rubus chamaemorus"]),
    WiktionaryFact "definition" (term ["plaquebière","fr","nom","1","def.2"]) (term ["Le fruit de cette plante, d’abord rouge puis jaune d’or à maturité, utilisé pour les confitures et dont on fait une liqueur","fr"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.2"]) (term ["fruit"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.2"]) (term ["confiture"]),
    WiktionaryFact "link" (term ["plaquebière","fr","nom","1","def.2"]) (term ["liqueur","fr"]),
    WiktionaryFact "variant" (term ["plaquebière","fr","nom","1"]) (term ["plaque-bière","fr"]),
    WiktionaryFact "hypernym" (term ["plaquebière","fr","nom","1"]) (term ["rosacées","fr"]),
    WiktionaryFact "hypernym" (term ["plaquebière","fr","nom","1"]) (term ["baie","fr"]),
    WiktionaryFact "hypernym" (term ["plaquebière","fr","nom","1"]) (term ["fruit charnu","fr"]),
    WiktionaryFact "hypernym" (term ["plaquebière","fr","nom","1"]) (term ["fruit composé","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["baie polaire","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["blackbière","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["chicouté","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["chicoutai","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["faux mûrier","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["framboise jaune","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["moréale","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["mûre arctique","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["mûre des marais","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["mûrier nain","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["plate-bière","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["ronce des tourbières","fr"]),
    WiktionaryFact "synonym" (term ["plaquebière","fr","nom","1"]) (term ["ronce petit-mûrier","fr"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["cloudberry","en"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["bakeapple","en"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["һаз еләге","ba"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["móra vermella","ca"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["云莓","zh"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["兴安悬钩子","zh"]),
    WiktionaryFact "translation" (term ["plaquebière","fr","nom","1","La plante et le fruit (sauf mention contraire)"]) (term ["Rubus chamaemorus","mul"])
    ]

compareLists :: (Eq a, Show a) => String -> [a] -> [a] -> [Test]
compareLists name input output =
  -- This deliberately runs off the end of the list. If the lists are the
  -- same length, then indexing both of them by (length input) will
  -- confirm this by successfully comparing Nothing to Nothing.
  [(name <> ": item " <> (show i)) ~: (index input i) ~?= (index output i) | i <- [0..(length input)]]

entryTests = compareLists "Example entry for 'plaquebière'" (frParseWiktionary "plaquebière" cloudberryEntry) cloudberryFacts

tests = test entryTests

main :: IO ()
main = void (runTestTT tests)
