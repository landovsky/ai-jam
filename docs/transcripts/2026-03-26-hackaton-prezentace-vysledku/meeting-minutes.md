Akční položky
- @Team - Prozkoumat, jak upravit orchestrace/agentní pokyny, aby Claude konzistentně používal MCP nástroje bez explicitního příkazu - [Termín: neuvedeno].
- @Team - Změřit a vyhodnotit náklady (cost) běhu mem0 při backfillu a testování - [Termín: neuvedeno].
- @Všichni - Přidat tiket do systému pro demonstraci vizualizace agentů - [Termín: neuvedeno].
Klíčová rozhodnutí
- Zmenšení agentní společnosti a odstranění středního managementu - Důvod: nadměrná velikost a potřeba efektivity.
Podrobné zápisy
[00:12-00:42] Prezentující zahajuje vyhodnocení: bylo zahájeno 4 projekty a dokončeny 3; připravuje podmínky pro prezentace a stanovuje téma porovnání nástrojů pro správu pamětí.
- Uvedení základní statistiky: zahájili jsme 4 projekty, skončili 3; popisuje to jako „docela příjemné“.
- Logistika prezentací: vyzývá účastníky, aby začali prezentovat; zmiňuje „depot“ a dostupnost prostoru pro prezentace; přechází k zobrazení „shiny“ a nastavuje obrazovku (screen/black screen).
- Vymezení cíle týmu: „dali jsme si za úkol porovnat různé tooly na správu pamětí“.
[01:22-02:21] Porovnání dvou nástrojů pro správu pamětí (mem0 na bázi vektorového porovnávání a Grafity na bázi grafové databáze); třetí zamýšlený nástroj se nedostal do testu.
- Průběh práce: tým se potýkal s komunikačním overheadem; prezentující je zvyklý pracovat sám, proto doporučuje do budoucna nastavit jiná očekávání nebo zmenšit scope.
- Rozsah testu: z původních tří nástrojů se podařilo dostat ke dvěma; jeden byl implementován (mem0, založený na vektorovém porovnávání embeddingů a dat v databázi), druhý je Grafity (grafová databáze).
- Technické vymezení: mem0 pracuje s embeddingy; Grafity je „grafová databáze“.
[02:26-03:19] Stanovené cíle (objectives) nebyly splněny kvůli nedostatečně kvalitním datům a neodladěnému ukládání „vzpomínek“, ale tým překonal technické překážky a zprovoznil nahrávání konverzací do Grafity.
- Vyhodnocení cílů: „Objectives jsou v podstatě failure“ – nepodařilo se nahromadit dostatečně kvalitní množství dat s dobře odladěným ukládáním vzpomínek, aby testy byly reprezentativní (aby bylo možné spolehlivě říci, co je lepší a proč).
- Technické překážky: zvládnuto nahrávání dat; mají „tisíc konverzací s Claude“ a umí je „na hrubo“ nahrát do Grafity tak, že se uloží.
- Kvalita dat: data jsou nekvalitní kvůli špatně definovaným entitám; existuje mnoho věcí k optimalizaci, aby se data ukládala kvalitněji.
[03:19-04:26] Tým vytvořil cca 30 LLM-based test casů a testovací pipeline, která provádí dotazy do knowledge databáze, porovnává očekávané výsledky s aktuálními a vyhodnocuje úspěšnost.
- Generování testů: cca 30 test casů vzniklo na základě LLM, které prošlo konverzace a navrhlo otázky napříč oblastmi (např. RAG/„RICO“, halucinace aj.).
- Testovací pipeline: spouští se, provádí dotazy do knowledge databáze, používá testovací queries; ví, jaké výsledky se očekávají (připravené LLM) a porovnává je s aktuálním výstupem; následně hodnotí míru úspěchu/neúspěchu.
- Dílčí úspěch: existuje „nějaký testrizac“ (test results), takže částečný úspěch je dosažen.
[04:26-04:51] Vyjasnění způsobu dotazování: dotazy směřují přímo na databázi; není nutné ptát se přes Claude, protože Claude by se stejně ptal databáze.
- Dotaz: „Ptá se databáze, ptá se Clouda, který kouká do té databáze.“
- Odpověď: Testujeme napřímo; prostředník (Claude) není potřeba; „Když by se takhle zeptal Claude, tak on by se stejně zeptal tý databáze.“
- Doplňující označení: „to je MCP7“ (poznámka bez dalšího vysvětlení v segmentu).
[04:53-05:18] Popis chování grafové databáze: je „chytrá“ v tom, že při dotazu skládá snippety ze vzpomínek a vrací text jako odpověď.
- Výměna: dotaz, zda „není chytrá“; odpověď: „databáze je chytrá.“
- Mechanismus: v grafové databázi jsou uloženy entity a vztahy; při dotazu se složí snippety ze vzpomínek a vrátí se text, který reprezentuje odpověď na otázku.
- Charakteristika: odpověď je generována skládáním relevantních částí z uložených dat (snippety).
[05:18-06:07] Upřesnění, že současná implementace grafové databáze bez embeddingů běží lokálně s průměrnou latencí ~700 ms a umožňuje traversování entit a jejich vztahů (task–projekt–vlastník).
- LLM vs. ne-LLM: dotaz, zda používá LLM; odpověď: pravděpodobně ne, vzhledem k latenci (~700 ms); běží lokálně; aktuálně žádné embeddingy.
- Datový model: grafová databáze ukládá entity a vztahy; lze traverzovat napříč grafem (př. task, projekt, vlastník).
- Vztahová logika: příklad napojení: task patří k projektu; projekt má vlastníka; lze skenovat vztahy napříč strukturou.
[06:07-07:11] Klíčová zjištění z testů: systém neumí říci „nevím“ při špatném promptování a má zásadní nedostatky v odolnosti vůči halucinacím; následné vyhodnocení pomocí Claude identifikovalo další deficiency.
- „I don't know“ problém: tři dotazy měly správnou odpověď „nevím“, ale systém vždy vrátil nesmyslnou odpověď; tato neschopnost je označena jako zásadní zjištění.
- Datový výstup testů: pro každý test existuje dotaz, správná (očekávaná) odpověď, skutečná odpověď, skóre a latence dotazu.
- Vyhodnocení pomocí Claude: Claude identifikoval „špatnou hallucination resistance – complete failure“ (neumí říci „nevím“) a „špatný temporal reasoning“ (nevrací nejaktuálnější informaci); zůstává otevřená otázka, co lze doladit dodatečnou prací.
[07:42-08:15] Doplnění k mem0: mem0 využívá LLM, které rozhoduje o užitečnosti a důležitosti vzpomínek; nejde jen o vektorovou databázi a retrieval.
- Charakteristika mem0: kromě vektorové databáze je tam LLM, které pomáhá rozhodovat, které vzpomínky jsou důležité.
- Nastavení: lze nastavit „front“, např. preferovat technické záležitosti; mem0 samostatně rozhoduje o užitečnosti pro zapamatování.
- Vymezení: mem0 není pouze o uložení do vektorové DB a následném retrieval; LLM je součástí rozhodování.
[08:17-08:53] Testování využitelnosti v kódu přes MCP server: explicitní instrukce pro Claude používat nástroje k dotazům na vzpomínky selhaly, pokud nebyl přímo instruován „zeptej se Grafity“.
- Dostupnost: k dispozici je MCP server s nástroji pro dotazování na vzpomínky.
- Instruktáž Claude: v ClaudeMD byl Claude explicitně instruován, aby nástroje vždy používal; bez přímé výzvy „zeptej se Grafity“ to neudělal.
- Závěr: je otázka, jak zajistit spolehlivé automatické používání nástrojů bez přímého pokynu.
- Action Item: @Team - Prozkoumat, jak upravit orchestrace/agentní pokyny, aby Claude konzistentně používal MCP nástroje bez explicitního příkazu - [Due Date: neuvedeno].
[08:53-09:45] Výkonnostní poznámky k mem0: backfill informací trvá dlouho; zpracování ~700 zpráv u menšího projektu trvalo ~1,5 hodiny (celkem ~2–2,5 hodiny); náklady nebyly řešeny.
- Backfill: proces doplnění informací v mem0 je časově náročný.
- Trvání: zpracování cca 700 zpráv běželo asi 1,5 hodiny; celková „etapá“ (pravděpodobně end-to-end) 2–2,5 hodiny.
- Cena: „S cenou neznámou, v tuhle chvíli jsme nic neřešili.“
- Action Item: @Team - Změřit a vyhodnotit náklady (cost) běhu mem0 při backfillu a testování - [Due Date: neuvedeno].
[09:48-10:02] Ukončení a krátká reakce: výzva na otázky, poznámka k „Next apps“ („udělá Anthropic“) a následné stručné „Asi ne, asi ne.“
- Výzva: „Tak jo, jaké otázky?“
- Poznámka k dalším aplikacím: „Next apps? Počkáte, to udělá Anthropic.“
- Krátká reakce na následný dotaz/návrh: „Asi ne, asi ne.“
[10:02-11:16] Speaker 2 popisuje osobní projekt: lokální JSON/MCP server pro inventář elektronických komponent a praktické použití s cloud desktopem a nákupním košíkem.
- Speaker 2 začal před 4–5 dny znovu pracovat s elektronikou (Arduino apod.) a našel velkou krabici čipů a komponent, jejichž obsah neznal; rozhodl se vytvořit inventář.
    - Vyfotil komponenty, postavil jednoduchý MCP server nad JSON soubory na disku s funkcemi: najdi komponentu, ulož komponentu, aktualizuj apod.; běží lokálně.
- Při focení komponent systém rozpoznával součástky a zapisoval je (např. určení čipu a jeho funkce), což hodnotí jako „super“.
- MCP server napojil do cloud desktopu; mohl se dotazovat, zda má komponenty pro záměr, a systém navrhoval kombinace; z nákupního košíku na pájenicko.cz nechal vyřadit položky, které už má.
[11:16-12:18] Reflexe hodnoty databází a plán posunu k robustnějšímu ukládání znalostí včetně osobních domén (inventáře, úkoly) a knowledge graphu.
- Jednoduchá databáze se osvědčila; je méně sofistikovaná než komplexní „databáze vzpomínek“ s relacemi, ale má potenciál pro zapamatování věcí.
- Otevřená otázka: jak prakticky ukládat věci po seanci (např. po kódování).
- Záměr: udělat další iteraci směrem k většímu ukládání (více dat), případně připojit soukromé věci (např. inventář potravin, úkoly) a použít grafovou databázi.
[12:18-12:37] Motivace pokračovat: cílem je integrace do vlastních nástrojů a potenciální využití pro kódování, i když zatím nejde o finální stav.
- Projekt nepovažuje za „mrtvý“; je motivovaný, i když ne nadšený z perfektní funkčnosti.
- Chce udělat další krok a integrovat řešení do svých nástrojů.
- Cíl: posunout se blíž k využití pro kódování.
[12:44-13:05] Organizační vsuvka: nastavení pětiminutového časovače na prezentaci a logistika doprovodného programu.
- Speaker 5 děkuje; následně Speaker 2 nastavuje pětiminutový časovač pro prezentaci („Five minute timer“).
- Dotaz, zda je k dispozici „fotová prezentace“; zmíněn pouze doprovodný program.
- Diskuze o tom, zda se doprovodný program zobrazuje a připomínka „koncertního režimu“.
[13:27-14:40] Prezentace „agentní společnosti“: rychlý start, vysoká produktivita, reorganizace a spotřeba tokenů.
- Vytvořili agentní společnost; po nastavení serveru a instalaci se systém rozběhl, vzniklo mnoho splněných úkolů.
- Vysoká produktivita vedla k reorganizaci: společnost byla „moc velká“, zmenšila se, odstranila střední management, nasazeni specialisté.
- Mnoho projektů s „zelenými“ úkoly; spotřeba cca 130 milionů tokenů; hodnoceno jako velmi produktivní.
- Key Decision: Zmenšení agentní společnosti a odstranění středního managementu - Rationale: nadměrná velikost a potřeba efektivity.
[14:40-15:07] Nečekané zjištění: vizualizace pohybu agentů a potřeba ukázky aktivit.
- Lesson learned: objevují se nečekané benefity; konkrétně Viktor vytvořil vizualizaci, kde je vidět pohyb agentů.
- Snaha ukázat v reálném čase aktivitu (přidání tiketu, aby bylo vidět, jak agenti „jdou pracovat“).
- Action Item: @Všichni - Přidat tiket do systému pro demonstraci vizualizace agentů - [Bez termínu].
[15:07-15:43] Pozorování provozu: nízká aktivita navzdory existenci tiketů a satirická paralela s realitou.
- Speaker 3 konstatuje, že je mnoho tiketů, ale nikdo nic nedělá.
- Simulace odpovídala realitě: CEO spotřeboval 100–130 milionů (tokenů), ostatní „seděli v kuchyňce“ a kontrolovali Slack každých 5 minut, do výkazu psali půl hodiny.
- Žádost, aby Richtor ukázal editor „kanclu“ a připravený layout místností.
[15:43-16:32] Ukázka UI: hledání GitHubu, metriky aktivity (minuty vs. tokeny) a behaviorální vzorce podpory.
- Dotaz na umístění GitHubu s projektem; přechod k zobrazení aktivit.
- Zmínka o metrice: v Activity jsou vidět „minuty“ (6 milionů, 5 milionů), nejasnost ohledně přesného zobrazení tokenů.
- Popis „support“ chování: kontrola Slacku každých 5 minut, do výkazů uváděno půl hodiny.
[16:32-17:05] API, zobrazení spotřeby a prostředí; popis místností a tvorby assetů.
- API je bohatší; refaktorizace zobrazování na „needs attention“; lze zobrazit spotřebu tokenů a detaily práce.
- Nafocení místností (kuchyňka, kancelář, výroba); tvorba assetů (kreslené).
- Krátké logistické vsuvky („Kdy ta prepo chceš, jo?“).
[17:10-17:58] Organizační humorné vsuvky a uznání týmu za simulaci „management boardu“, která vedla ke strategiím s horšími výsledky.
- Krátká neformální výměna (překvapení nad ovládáním).
- Speaker 6 oceňuje tým: hráli si na skutečný management board, rokovali o strategiích, „všechno ve tom horšímu“ (ironické hodnocení).
[18:00-18:59] Highlighty a korporátní anti-patterny: formální schválení bez vykonání práce; orchestraci by šlo zvládnout s kvalitativním přístupem.
- Příklad: někdo poslal instrukci ke schválení; odpověď: „schválil jsem a zavřel tiket“, ale žádná práce neproběhla; označeno jako korporátní jev.
- Závěr: orchestrace by šla zvládnout, ale vyžaduje kvalitativní přístup.
- Návrh implementace: implementovat lokálně u sebe, přenést, zkoušet škálovat, pak přidat další komponenty.
[18:59-20:14] Konceptuální přání a limity: mix lidských a virtuálních agentů, snadné založení autonomní firmy, ale rigidita integrace vlastních agentů.
- Pozvánka ukázat koncept (co tam je, „borzy“).
- Speaker 3: očekávání a překvapení/zklamání; líbila by se registrace různých lidí a nahrazování reálných virtuálními; paper/příprava na to není ready, chybí nástroj.
- Výhoda: jednoduché vytvoření společnosti; CEO si „nahajruje“ lidi, organický tok; stačí zadat goal společnosti a CEO goal; běží na jedné lokální subscription (kodex/klora).
- Limit: napojení vlastních agentů (např. vychytaný cloud tool/skill) není přímočaré; systém očekává jedno „svaté kořeny“ (jedno prostředí), je potřeba „ohýbání“.
[20:14-21:19] Provozní úzká místa: zasekávání karet, pokus o roli Scrum Mastera a nedosažená automatizace toku práce.
- Karty na boardu se zasekávají; přístup s přidáním Scrum Mastera, aby netřeba mikromanagovat každou kartu.
- Dočasně se zdálo, že to funguje, ale opět došlo k zaseknutí.
- Závěr: dobrý koncept (vytvořit roli pro řízení toku), ale nepodařilo se jej dotáhnout.
[21:19-22:38] Integrace a bezpečnost: nedostatek end-to-end zdrojů, incident s credentials přes cloud code a doporučené postupy.
- Důvod selhání role/automatizace: nedali agentům všechny zdroje (např. napojení newsletteru).
- Incident: systém zkoušel používat credentials přes cloud code z jiného počítače (MCRTčko/U, cloud desktop, propašování přes subscription); závěr: nepřipojovat osobní subscription cloud code.
- Doporučení: buď mít testovací instance každé integrace s test daty, nebo odladit dokonale jednu věc na produkci a tu pustit; riziko divergování autonomní společnosti a nežádoucích výstupů.
- Upozornění: nejde o prompt injection, ale o emergentní chování směřující ke splnění cílů.
[22:40-24:28] Technická reflexe balíku a editoru: cizí materiál, potřeba postupné interní tvorby a ukázka editoru pro mapování prostředí.
- Problém „velkého balíku“ staženého zvenčí: rychlé vytvoření firmy, ale spousta cizího materiálu; výsledkem je rozbředlost.
- Ideál: firma tvořená lidmi z firmy, postupné příspěvky a následná automatizace; pipeline by pak byla funkční.
- Ukázka: mapping není správný, proto vznikl editor; možnost přesouvat nábytek, přidávat asety.
- Dotaz: „To je from scratch?“; odpověď: „To je from scratch.“; přidány humorné poznámky o logických držácích a bezpečnosti.
- Highlight: možnost uložit jako JSON a spolupracovat s pracovníky na tvorbě firemního prostoru.
[24:43-26:01] Uzavření ukázky tvorby assetů a reakce: ruční pixel art, omezená hodnota nástroje, krátké shrnutí „To je ovečké. Takže. To je. To byla jízda, to byla jízda,“ a přechod dál.
- Workflow: generování přes „preview stránky“.
- Nástroje: ve výsledku nevyužit žádný (jeden nástroj vše komplikoval); kreslení ručně po pixelech (velikost 16×…); výsledkem jsou zvláštní scény.
- Krátké komentáře uzavírající blok: „To je ovečké. Takže. To je. To byla jízda, to byla jízda,“ jako reakce na průběh/ukázku.
[26:01-26:12] Tým se dohodl, že materiály ponechá k dispozici a společně je případně ukáže během prezentace.
- Úvodní organizační dohoda: „Necháme… můžeme ukázat všichni přes toho.“ Naznačuje připravenost ukázat výstupy centrálně.
- Záměr „Tak si pohraju… Tak já to teda.“ indikuje převzetí facilitace předvádění.
- Připravovaná demonstrace bude probíhat kolektivně, nikoli individuálně.
[26:12-27:30] Práce týmů byla rozdělena na vizualizace odpovědí a na ingest/pipeline pro automatické zpracování dat, včetně statistiky a demografických insightů.
- Rozdělení do dvou skupin:
    - Gý a Radek: zaměření na vizualizaci odpovědí, interaktivitu a atraktivitu; vytvořili knihovnu vizuálních prvků (library).
    - Já (Speaker 9), Krištof a Jára: vyrobili ingest, tj. pipeline vycházející z datové sady; provádí kompletní statistické zpracování, hledá demografické insighty, paradoxy a další automaticky.
- Tato pipeline běží automaticky; je výsledkem koordinované práce během sezení.
[27:30-28:28] Ingest pipeline je řízena LLM skillem, rozpoznává typy datasetů a deleguje deterministické zpracování na Python, včetně návrhů „zajímavých“ otázek se scoringem.
- Mechanika: Cloud (LLM) rozpozná typ datasetu (zatím dva typy), má na ně postavené deterministické pythonovské pipeline.
    - LLM pracuje jako řídicí vrstva a offloaduje úlohy na Python.
- Funkce: Stroj má za úkol navrhnout sedm zajímavých otázek; existuje metodologie scoringu pro posouzení „zajímavosti“ otázky vedoucí k insightům.
- Výsledek: Uživatel „nakrmí“ dataset a získá návrhy otázek k diskusi a úpravám.
[28:28-29:04] Workflow zahrnuje validaci navržených otázek s LLM, tvorbu decku s otázkami/wyhodnocením, a generování Markdown reportu a strukturovaného JSONu.
- Postup: Uživatel diskutuje s „elenkem“ (LLM), upravuje otázky („nepřesně položená“, „zavádějící“), a po odsouhlasení vznikají artefakty.
- Výstupy:
    - Deck tvořený sadou otázek a jejich vyhodnocením.
    - Markdown report vhodný pro generování PDF („naše firma udělala výzkum a tady jsou výsledky okomentovaný“).
    - Strukturovaný JSON pro další integrace.
- Deck je identifikován jako jedna z položek v „devi“ (pravděpodobně demo/DEV).
[29:04-29:34] Tým stabilizoval pipeline a zároveň přidával podpůrné výzkumy; přístup je rozšiřitelný.
- Report je v Markdownu; JSON pro integraci; cílem bylo mít funkční pipeline.
- Během práce byly přidávány „odstupné výzkumy“ (pravděpodobně doplňkové studie).
- Důraz na připravenost materiálů k demonstraci.
[29:34-30:13] Ingest skill se učí nové typy datasetů a navrhuje způsoby jejich zpracování; tabulka známých typů (zatím dva) se má rozšiřovat směrem ke standardizovanému „datadeku“.
- Krištof našel část dat z veřejně dostupných zdrojů, Jára přidal další.
- Smysl skillu: při příchodu nového typu datasetu navrhne metodiku zpracování.
- Cíl: rozšiřovat seznam známých typů, aby bylo možné zpracovat „všechno“ do podoby definovaného datadecku.
- Pozvánka k doplnění: „Kdyžtak mě doplňte, jestli jsem něco zajímavýho přeskočil.“
[30:15-30:29] Repozitář byl obohacen vizualizační knihovnou z práce na „dývě“; dostupnost komponent je zajištěna.
- Doplňující poznámka: V rámci „dývy“ se intenzivně řešily vizualizace a vznikla library dostupných prvků.
- Tato library přímo obohatila repo.
[30:29-31:24] Druhý tým se zaměřil na vylepšení dotazníků přes vizualizace binary otázek, Likert scale a distribucí, s kurátorskými volbami pro srozumitelnost (vynechání příliš vědeckých prvků).
- Rozdělení: Jeden tým řešil ingestion a tvorbu dotazníků ze studií; druhý tým (Speaker 8) zlepšoval dotazníky vizuálně.
- Vizualizační práce:
    - Binary otázky: jak je obvykle vizualizovat a jak je chtějí zobrazit.
    - Likert Scale: standardní způsoby vizualizace; některé „optional“ vizualizace byly vynechány, protože působily příliš vědecky.
    - Distribuce: výběr vhodných typů; violin plot byl nakonec zamítnut.
- Poznámka k designu: Proběhly pokusy i s hravými ikonami (např. „pes“ neprošel, nahrazen „ťapkou“; „domečky“).
[31:37-32:22] Knihovna vizualizací byla rozšířena nad původní single bar o další možnosti, s plánem demonstrace na konkrétních příkladech.
- Původní stav: pouze single bar.
- Rozšíření: přidány další vizualizační možnosti odpovědí.
- Záměr: „Chceš to ukázat?“ – plán okamžité demonstrace pro všechny.
[32:25-33:30] Před plánovaným společným testem frontendu byla zvažována perzistence odpovědí; současný demo běh je čistě frontendový na uzavřených datasetech, backend zatím chybí.
- Facilitační pokyn: „A dáme to všem? A nebo to můžete vyzkoušet všichni.“
- Dotaz na perzistenci: „Jsou odpovědi prezistentní? Počítají se do těch setů?“ Odpověď: „Ne, ne, ne, počítaj.“ (nejasné, ale následně vysvětleno).
- Omezení scope: Práce na uzavřených datasetech; backend není implementován; řešení je čistě frontendové.
- Pro účely dema přidána perzistence (nestihlo se otestovat), možnost rollbacku; plán: všichni otevřou a „poklikají“.
[33:32-34:59] Demonstrace formátu dotazníku: uživatel odpovídá za sebe (např. četnost použití AI) a následně hádá, jak odpověděla společnost, s průběžným porovnáváním.
- Vzorový průzkum: „notaritum“ blízké použití AI; několik otázek, odpovědi za sebe (např. „Jak často používáš AI nástroje“).
- Druhá část otázky: odhad, jak myslí, že odpověděli ostatní ve společnosti.
- Systém ukazuje porovnání mezi „mnou“ a společností; u odpovědi „ne“ se zobrazí také odpovídající agregace („kolik lidí odpovědělo že ne?“).
- Reakce: „Krásně.“ jako uznání funkce porovnání.
[35:01-36:22] Diskuse o vizualizaci při negovaných odpovědích a logice otázek „kolik lidí to má stejně jako vy“ versus „opačná“ formulace.
- Poznámka: „Ono to má dvě rozměry… musíš potom ještě třetí“ – narážka na komplexitu vizualizace dvou rozměrů s potřebou třetího.
- Dotaz: Příklad s pitím kávy týdně a nejasností vizualizace při odpovědi „ne“; obava z nejednoznačnosti.
- Odpověď: Při „ne“ vizualizace ukáže odpovídající srozumitelný výklad.
- Problém: Otázka „kolik lidí to má stejně jako vy“ se dostává do konfliktu při nízké četnosti (např. 2 %), což vyžaduje otočení perspektivy („kolik lidí pije kafe“), což je kognitivně náročné.
[36:55-38:15] Záměna perspektivy v otázkách je statisticky validní, ale působí konceptuální konflikt v produktu; tým zjistil limity „game faktor“ logiky pro opačné odpovědi.
- Účastník tvrdí, že zobrazení „kolik lidí nepije kafe“ je v pořádku; problém je spíše prezentace na konci („kolik lidí to má stejně jako ty“).
- Ujasnění: Otočení je statisticky správné (opak otázky je definovatelný), ale koncepty se „bijí“; řešení je možné, ale koliduje s původní gamifikací.
- Závěr: Tým vrátil logiku více k „poli lidí, že jo“; uznání, že hra (game faktor) utrpěla.
[38:46-39:17] Byl aktivován nový backend (Express) s ukládáním identifikátoru do local storage; poslední vyplnění formuláře se počítá do statistik.
- Nasazení: „Nahodil jsem novej backend… běží na Expressu.“
- Funkce: Uživatelé mohou klikat různé pollsy včetně ne-AI interaktivních; do local storage se uloží ID; pokud je formulář vyplněn dvakrát, počítá se pouze poslední.
- Plán: „Vystřelíme si tady nějakou statistiku.“
- Krátký dotaz: „Může to?“ – potvrzení spuštění.
[39:17-40:14] Diskuse o úvodní stránce a distribuci: použitá simulace má normální distribuci, ale kvůli interakci (myš) je výsledek částečně náhodný.
- Dotazy: „Kdo to dělal?“ – „Kámoš.“; „Kdo to vymyslel?“ – „Já.“; týká se úvodní stránky.
- Technický detail: Distribuce je normální; nicméně na desktopu myš „odpálkuje kuličky“, některé nedopadnou; číslo N je nižší, výsledky jsou „trošku random“ a nejsou vždy stejné.
- Výzva: „Co se máme poklikat?… Já bych chtěl i zpětnou vazbu, jestli nějaký téma vás zaujme.“
[40:10-40:41] Použité průzkumy vycházejí i z podkladů od Járy a existujících datových setů; porovnání odpovědí je vůči existenčnímu datasetu.
- Dotaz: „Co zrovna bude průzkum hřejního výmění?“ – Odpověď: Vycházeli z toho, co Jára poskytnul; někdy to vyznělo jinak, než bylo očekáváno.
- Otázka: „Ty data jsou jenom my tady?“ – Odpověď: Porovnávání je vůči existujícímu datasetu, nikoli pouze lokálním odpovědím.
- „Úplný rozdíl“: Odpovědi se ukládají – identifikace další zjištěné věci během práce.
[40:41-41:50] Solidarity Index má více složek a jeho vyhodnocení je komplexní; pro další decky bylo nutné přidat alternativní způsoby vyhodnocení, protože finální obrazovky jsou nedotažené a je třeba je promyslet.
- Solidarity Index: má tři složky; cílem je vyhodnotit odchylku (deviation) a postavení uživatele.
- Zjištění: Pro další decky nemá smysl ihned aplikovat stejný způsob; přidány další metody vyhodnocení (zmínka „u neziskovek“).
- Poznámka: „Ta poslední skrýna s tím vyhodnocením je nedotežená, protože je potřeba rozmyslet.“
- Dotaz: „Co byl ten tvůj Prezident?“ – přechod k příkladu odlišného vyhodnocení („Nezískovky v Česku“), které je „zavádějící“ a ne perfektní, ale slouží jako příklad jinak udělaného vyhodnocení.
[42:27-43:29] Získaná zpětná vazba potvrzuje, že systém zvládá otázky; užitečnost roste s konkrétní aplikací, ale k autonomnímu využití ve firmách je ještě třeba práce.
- Komentář: „Je to pak dobrý… radši super, že to stačí ve všech otázkách.“
- Otázka: „Jak se vám zopáří tý rozhoz?“ – odpověď: „Je o tom příjem užitečný.“
- Popis použití: Dáte systému výzkum, „padají“ z něj insighty; otázka aplikace ve firmách („kde si to nasadí“); ještě dost práce, než to bude přesně dělat požadované.
- Poznámka: Pro menší, konkrétní projekt si s tím lze „pohrát“ úspěšně.
[44:08-44:22] Závěrečný náznak obsahu: „Ukrajinová, tecta Kipček 1.“ bez dalšího vysvětlení.
- Tato část působí jako označení konkrétního tématu/ankety/skrýny, bez kontextu a detailů v segmentu.
- Obsah není rozveden; může jít o název průzkumu nebo interní položku.