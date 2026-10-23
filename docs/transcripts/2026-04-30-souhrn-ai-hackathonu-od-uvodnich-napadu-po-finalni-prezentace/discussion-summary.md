## Formát dne, cíle a koordinace
Skupina přijala barcamp‑ový formát: rychlé představení (jméno, míra „ujíždění vlaku“ 0–10, energie 0–10), popcorn vyhlášení krátkých témat, rozdělení do malých týmů (2–3 osoby) během 20 minut, následná hands‑on práce a lightning talky před obědem. Důraz na krátká, dobře vymezená témata pro dosažení „jádra problému“, disciplinovaný sběr témat bez dlouhé filozofie a průběžná synchronizace přes Slack (notifikace na klíčová slova a vlákna). Ve finále dne proběhne sdílení pokroku a materiálů.
## Vnímání „ujíždějícího AI vlaku“
Účastníci sdíleli subjektivní míru „ujíždění“ (2–9/10) a energii (2–8/10). Část vnímá negativní korelaci: čím více času investují, tím více vidí, jak rychle vlak ujíždí; jiní zdůraznili existenci „zkratek“ ke zrychlení (dnešní formát jako jedna z nich). Padla poznámka o nadhodnoceném vnímání vzdálenosti („500 mil vs. reálně 100“).
## AI hygiena
Záměrně nevyužívat AI v vybraných činnostech (kognitivní rozvoj, rozhodování, kreativní jádro) a vytvořit praktickou sadu doporučení podloženou výzkumy (aktivita mozku, efektivita, kvalita rozhodování). Součástí je mentální inventura, kdy AI použit a kdy ne (tlak na kvóty, vědomé volby).
## Vizuální design s pomocí AI
Vznikla dvě témata: marketingové vizuály (LinkedIn, promo, konferenční letáky) a vizualizace/produktový design aplikací („vizualizace banky“). Uvažuje se krátká společná explorace a případné rozštěpení podle kapacity. Cíl: kompenzovat nedostatek designérů pomocí AI nástrojů (zmíněn „cloud design“) a definovat workflow, nástroje, metriky kvality a prototypy.
## Interaktivní vizualizace výzkumu pro veřejnost
Pokračuje práce na interaktivní prezentaci výsledků s vyvážením vizuálu, míry interakce a množství obsahu. Volba vhodných typů zobrazení pro různé otázky a segmentace (např. věk), porovnání odhadů vs. realita. Jirka zajišťuje technologii, partner dodává data; plán je připravit ukázkový průchod a testovat vizuální styl na malé skupině.
## R‑chatbot pro národní číselník laboratorních položek
Cíl: jednoduchý chatbot napojený na externí LLM a API číselníku, který ulehčí vyhledávání ~60 tisíc položek. Pipeline proti halucinacím: nejprve přes API najít relevantní položky, vypsat a přečíst detaily, potom odpovědět. Prototyp běží přes vlastní server/„Cloud Code“; pro produkci je nutný přechod na oficiální API (soulad s ToS), stabilizace (chyby „fail to fetch“, kódy 400/451) a dokumentace.
## AI to AI: hodnocení fotografií a generování fotoknih
Koncept hodnotí nahrané fotografie na základě emočně‑estetických pilířů, minimalizuje autorský bias a cílí na východní Evropu (mezera v servisu). Cílem je po „hrách“ generovat sekvencované fotoknihy pro ekosystém Fujifilm (tisk). Plán: definovat pilíře a metodiku, mechaniku sekvencování, demo pro pitch a ověřit tržní potřeby.
## Osobní AI asistent a orchestraci úkolů
Potřeba zrychlit jednoduché úkoly (e‑maily, nákupy „Ulíko“) tak, aby hlasové zadání přes Google Assistant/Siri a propojení na AI bylo rychlejší než manuální provedení. Zvažuje se integrace existujícího workflow („žarver“), jasná volba technologie, bezpečnost firemních dat a evaluace efektivity.
## Lightning talky a GA analýzy s Claude MCP
Ukázka propojení Google Analytics s Claude MCP nad adresářem aplikace: přesná čísla o eventech, kontext z kódu (mapování eventů na UI), generování referencí eventů a changelogu analytiky. Zjištění: nárůst registrací a možný pokles dokončení onboardingu po změně „registrace před onboardingem“ vyžaduje validaci (kampaně, platformy, volitelné kroky). AI poskytuje krokové návody pro GA (bez API), pro prezentace lze rychle vygenerovat HTML/CSS.
## Cowork/agentní ovládání prohlížeče a retrospektivy
Představen nástroj, který automatizovaně „kliká“ v Chrome (Cloud4Chrome), otevírá taby a provádí kroky. Rozdíl mezi režimy („Plan“, „Auto“, „Bypass permissions“): preferováno bezpečné zastavování u citlivých akcí. Automatické retrospektivy zatím spouštěny jen při urgentních věcech; AI navrhuje zlepšení skillů, promptů a ukládání znalostí (paměť, projektový kontext, soubory).
## Limity, spotřeba a správa účtů u AI služeb
Zazněly praktické limity plánů (denní/týdenní resety, vyčerpání při náročných webových úlohách; Sonnet udělá single‑prompt, ale následuje „pět hodin“ pauza, Opus „nezvládne“). Upozornění na monitoring spotřeby („usage“), Mac utilita pro sledování, vyčerpání kreditů („dvacet dolarů“). Správa dvou účtů (firemní vs. osobní) je problematická; workaround přes „Path Plot Home“ a dva OAuth tokeny, doporučeno robustnější řešení a jasná pravidla.
## Pricing v éře AI: hodinovka vs. value‑based, marže a trh
AI zrychluje práci, trh bude tlačit cenu dolů u činností s vysokým podílem kódování. U velkých aplikací dramatické zlevnění neproběhne: většinu nákladů tvoří definice problému, architektura, bezpečnost, kvalita; psaní kódu je do ~20–33 %. Diskutován přechod k value‑based/hybridnímu oceňování s garancemi kvality a rizik, etika transparentnosti času vs. AI. Analogii s taxislužbou: služba bude dostupnější, poroste objem menších zakázek (mikroaplikace pro malé podniky), kvalita a garance zůstanou klíčové. Specializace modelů a orchestrátorů může snižovat náklady (menší model rozhoduje, kdy volat velký).
## Workflow, nástroje a bezpečnost
- Diktování vs. psaní: přesnost vstupu zásadně ovlivňuje odpovědi; WhisperFlow doporučen pro kvalitní přepis (mobil, levné předplatné).
- Synchronizace složek: cloudové složky (Drive/Dropbox) mohou kolidovat s lokálním Git workflow; doporučeno držet source of truth v Gitu a pečlivě volit, co se synchronizuje.
- Prohlížeče: někteří preferují Firefox kvůli stabilitě; jasné doporučení zatím bez závěru.
- Wi‑Fi a demo prostředí: nutnost spolehlivé sítě, připravit offline fallbacky.
## Projekty a prototypy
- Fujifilm edukační miniseriál a rytmická hra: dvě loutky („Samoráj a Ka“) cestují mezi „planetami“ (kontrast, rytmus, textura). V Godotu vznikl technický prototyp s AI asistencí pro assety; rytmická mechanika vyžaduje slider‑parametry, lidské doladění (animátor), definici referenčních hodnot. Koncept „fotografické hry“ (hráči krmí hru fotkami) má lidskou hodnotu i obchodní potenciál.
- „Diviáty/Diviáci“: tým chce navázat na hackathonový projekt a posunout jej; název, cíl a backlog je třeba upřesnit.
- Interaktivní výzkum (Deviat/STEM): probíhá redesign přehledu od kompozitního „Indexu solidarity“ ke „zásadním zjištěním“ pro zapamatovatelnost, branding STEM běží, pracuje se na rezervačním toku a design tweacích; směr vizualizací inspirován „Black Infographics“ a scrollytelling knihovnami.
- GitHub Star Search: vytvořen vizuálně atraktivní prototyp (animace, particles), ale chybí funkční vyhledávání a deployment; velká mezera mezi prototypem a kódovým designem – preferován rychlejší přechod do kódu. Import firemního design systému z Figmy proběhl úspěšně, výstupy kvalitní s drobnými lapsy (ikonografie); nutná konzistence Figma → kód, promazání nepoužívaných komponent. Redesign homepage (horizontální slidery/karty) zlepšil stav, ale vyžaduje další iterace a jasné specifikace ikon a obsahu. Handoff/export (HTML/CSS vs. React/React Native vs. Canva/cloud code) není sjednocen.
- Pre‑AI projekt vyhledávání v Git repozitářích: dvoukrokový vstup (username, query), semantické hledání knihoven; UI zatím „basic“, plán využít design systém; detekce UI frameworku se mýlí (Material UI vs. web API).
## Rozdělení do skupin a průběh dne
Účastníci se rozdělili na dvě části: 15min lightning talky a paralelní malé skupinky (cloud design, asistenti, marketing, „Diviacio“). Po krátké samostatné práci si sdíleli postupy a výsledky, koordinovali marketing s designem. Praktické pokyny k prostoru: dvě místnosti + ochoz, AirPlay (Wi‑Fi „MidMildBlueGuest“, heslo „HelloMildBlue“, kód Samsung TV „4324“). Logistika oběda: část účastníků nešla; rezervace na Anděl 12:20, cíl odchod ve 12:00, rychlé komentářové sdílení.
## Optimalizace využití Cloud Code/Cloud Design
Importy design systému a široké experimenty rychle „pálí“ týdenní kvóty (např. 44 % za den). Doporučen přechod na menší iterativní úkoly („udělat jednu kartu“), zavést monitoring usage s prahy (40/80 %), zjistit, které operace spotřebu zvyšují, a podle toho upravit workflow. U herního prototypu zavést slider‑parametry (reverb/hall/timing), ověřit Godot vs. Unity a schopnost AI nástrojů spouštět hru, dělat screenshoty a validovat změny.
## Nedořešené body k pozornosti
- AI hygiena: doplnit odpovědnosti, kritéria „kdy AI nepouštět“ a termín první verze doporučení.
- Vizuální design s AI: určit vlastníky pro marketing vs. produktový design, seznam testovaných nástrojů a termíny prototypů.
- Fujifilm rytmická hra: přiřadit herního vývojáře/animátora, definovat rozsah MVP a milníky pro pitch v půlce června.
- „Diviáty/Diviáci“: upřesnit název, cíl, backlog, dnešní deliverable a další milník.
- Slack notifikace: sjednotit klíčová slova, doporučené nastavení a ověřit aktivaci u všech.
- Validace GA zjištění: metodika ověření propadu „onboarding finish“ (segmentace platforma/kampaně, organické vs. paid, release timing); definovat KPI a reporting pro marketing.
- Osobní AI asistent: zvolit technickou architekturu (Assistant/Siri), vymezit podporované úkoly, bezpečnost a termíny.
- Orchestrace modelů: plán evaluace orchestrátorů (cena tokenů, latence, kvalita), testy a termíny.
- Pricing: připravit balíčky a komunikační rámec pro value‑based/hybrid, vybrat pilotní klienty a nastavit SLA/QA standardy.
- Správa kreditů/účtů: nastavit monitoring usage, upozornění a pravidla přepínání firemní/osobní účet.
- Synchronizace vs. Git: definovat source of truth, pravidla pro synchronizované složky a CI/CD postupy.
- GitHub Star Search: určit handoff proces a cílový stack (HTML/CSS vs. React/React Native), implementovat vyhledávání a nasadit; sjednotit ikonografii a specifikace karet.
- Deviat/STEM: určit vlastníky pro „příjem v půl“, finální rezervace a vizualizační kurátorství; rozhodnout, jak (a zda) promítat uživatelské „kliky“ do hlavních výstupů.