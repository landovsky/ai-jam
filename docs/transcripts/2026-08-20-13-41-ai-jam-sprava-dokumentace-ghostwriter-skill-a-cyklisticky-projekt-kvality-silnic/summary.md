---
title: "AI Jam: správa dokumentace, ghostwriter skill a cyklistický projekt kvality silnic"
date: 2026-08-20
type: brainstorm
tags: [ai-jam, cyklistika, accelerometr, kvalita-silnic, claude-skill, ghostwriter, dokumentace, lifecycle, hypotezy, deep-research]
project: AI Jam
language: cs
duration: 3h 21m
plaud_id: 5d5cacdc210f816555edae7d9d952fd2
---

# AI Jam: správa dokumentace, ghostwriter skill a cyklistický projekt kvality silnic

> **Poznámka ke zpracování.** Mikrofon byl po celou dobu v hlavní místnosti AI Jamu. Nahrávka proto zachycuje čtyři různé fáze, jak se místnost postupně naplňovala a měnila účel. Souhrn je podle těchto fází členěný. Časové značky odpovídají transkriptu (`[mm:ss]`). Nahrávka je ořezaná („trimmed“) a končí uprostřed závěrečné diskuse.

## Kontext

Setkání komunity **AI Jam** — skupina lidí, kteří stavějí a zkoumají řešení s AI (produkťáci, vývojáři, datař, UX, kouč). Formát: každý krátce představí své téma, pak se skupina rozdělí do týmů, pracuje na projektech a nakonec si prezentuje výstupy. Tato nahrávka pokrývá celý den z pohledu hlavní místnosti, kterou v prostřední části obsadil tým řešící **cyklistický projekt „Není asfalt jako asfalt“** (sběr a normalizace dat o kvalitě povrchu silnic).

Hlavní účastníci (dle rolí, které zazněly v kolečku): **Tomáš** (`speaker_1`, analytik/vývojář/produkťák a podnikatel, staví AI firmu — v projektu vystupoval jako devil's advocate), **Kryštof** (`speaker_0`, datový konzultant, architektura datových řešení, matematický background — vlastník cyklistického tématu), **Radek** (`speaker_3`, produktový management + UX + vývoj — téma ghostwriter skill), **Jirka** (`speaker_2`, vývojář), **Janka** (`speaker_5`, ex-vývojářka, dnes kouč s agenty, vystudovaná psychologie a teoretická fyzika — dělala deep research), **JD** (`speaker_6`, daňový software, background počítačová bezpečnost) a další.

---

## Fáze 1 — Představení témat a členů (`[00:00]`–`[32:28]`)

Úvod, prezentace témat, kolečko „kdo co dělá“.

**Představená témata:**
- **Tomáš — životní cyklus a discoverability markdown dokumentace** (`[00:07]`). Problém: specky, ADR a další `.md` v repu zastarají hned, jak se začne implementovat, a hrozí „korupce kontextu“ Claude čte neaktuální data. Chce přenosný mentální framework (od jednoduchých po složité projekty), aby Claude i on sám snadno našli aktuální dokumenty a věděli, co je živé, co archivní. Připravil analytický prompt na inventuru dokumentů (bez „Tomáš-specific“ věcí, použitelný pro všechny). Kryštof doporučuje zvážit Obsidian; Tomáš se brání „heavy“ nástrojům s learning curve — jde mu o lightweight mentální model + strojově čitelný front matter.
- **Kryštof — „Vždycky není asfalt jako asfalt“** (`[05:19]`). Sběr, transformace, integrace a využití dat o kvalitě silničního povrchu pro cyklisty. Endgame: naplánuješ trasu a nástroj ti podle typu kola řekne, zda je povrch vhodný. Motivace z osobní zkušenosti (časovkářské kolo, Polsko). Cíl na dnešek: roadmapa — co a jak sbírat (akcelerometr + GPS z telefonu), kam integrovat, jak distribuovat uživatelům. Prostor pro technické i netechnické lidi.
- **Radek — Ghostwriter skill** (`[12:18]`). Dlouhodobě nespokojen s AI summaries, chce univerzální Claude skill, který píše „jeho hlasem“ (forma, hustota textu), spouštěný automaticky na rozumné tasky. Ví, že klíčové jsou páry vstup→výstup pro evaly; největší bottleneck je nasbírat kvalitní páry. Dnešní cíl: draft skillu + vyzkoušet na vlastních transkriptech.

**Organizační + tangenty:** rozdělení do týmů (`[17:25]`), delší odbočka o investici do inference/GPU (nabídka Kosmikcomp / Kuba Zech — koupě GPU + podíl na serveru, pronájem výpočetního výkonu) (`[30:00]`–`[32:28]`). Uprostřed proběhlo **kolečko „kdo co dělá“** (`[22:33]`–`[29:04]`) s představením účastníků.

---

## Fáze 2 — Pracovní session cyklistického týmu (`[32:28]`–~`[120:00]`)

Místnost převzal tým kolem Kryštofova tématu; Tomáš se přidal na první půlhodinu jako devil's advocate (`[32:28]`), pak session pokračovala do polední pauzy.

**Klíčové body diskuse:**
- **Nejkřehčí místo = normalizace** (`[33:08]`). Data z různých kol / rychlostí / umístění telefonu musí dát stejný výsledek — vlastnost *cesty*, ne *jízdy*. Dokud není důvěryhodná normalizace, zbytek je irelevantní. Kryštof má myšlenkově navržený test: jednu trať projet víckrát různě a ověřit, že po normalizaci vypadne totéž.
- **Grand hypotéza** (Tomáš, `[37:25]`): jsme schopni vytvořit dataset a interpretovat ho tak, aby byl užitečný pro plánování trasy na libovolném kole. Produktová otázka „komu to dá hodnotu“ se zatím odkládá — uživatelem je sám Kryštof.
- **Osobní vs. produktové** (`[39:56]`): jakmile mají data sbírat i ostatní, normalizace se stává povinnou → produkt. Škála např. 0–10 kvality povrchu.
- **Konkurence / zdroje dat:** Strava (subjektivní hodnocení + odvození z rychlostí, ale data z OpenStreetMap, neřeší potholes), OSM `surface` tagy (asfalt = jen „asfalt“, žádná granularita), Street View / satelit (nízká frekvence aktualizace 2–4 roky, špatný úhel a komprese na potholes), Smart Road Sense (sběr z aut). Mapy.cz už rozlišují gravel.
- **Monetizace** (`[54:57]` dále): crowdsource — cyklistům zpřístupníš data výměnou za jejich sběr; na datasetu „sedíš“ a prodáváš samosprávám / mapovým firmám. „Initial loop“: sbírám ↔ poskytuji; po dosažení critical mass se problém otočí na „kdo data potřebuje“.
- **Technický přístup / learning loop** (Tomáš, `[46:52]`–`[54:40]`): malá data (desítky jízd), doporučeno stavět jako algoritmizaci s train/test splitem (např. 20 jízd na učení normalizace, 10 na test). Riziko: pokud bude nutný on-device preprocessing (jiné vzorkování mezi telefony), změní se vstupní data a normalizační algoritmus se musí přetrénovat → udělat z toho ověřovanou hypotézu.
- **Datová sada:** Kryštof přinesl vzorek (~40–55 min jízda), akcelerometr @ 20 Hz + GPS.
- **Research:** Janka rozjela deep research k vědeckým článkům (Bicycle Road Roughness Index); zmíněn Notebook LM / Gemini Notebook, Strava Metro (for Academics).

---

## Fáze 3 — Společné prezentace výstupů (`[139:01]`–`[173:25]`)

Po polední pauze se místnost naplnila celým publikem a týmy prezentovaly.

- **Radek — Ghostwriter skill** (`[140:35]`). Demo: pětiminutový braindump ze zahrady → summary přepsané jeho ghostwriterem. Sebehodnocení **2−** (nadprůměr, ale ještě to není „jeho“). Skill má i **judge/rubriku** s kritérii (délka, actionability, styl — nesnáší „Captain Obvious“, opakování, fráze typu „hope it helps“). **Největší bottleneck: nedostatek čistých párů** — nechal Claude „hunt down the pairs“ napříč sessions/PR/Slack, ale nevěří, že našel správné (některé „jeho“ texty byly ve skutečnosti AI summary). **Takeaway:** při práci si hned ukládat původní i cílový stav textu jako budoucí eval data. Proces: destilace z existujících rolí/CLAUDE.md → derivace stylu z textů → hunt párů. Výstup = skill + eval.
- **Tomáš — mentální model správy dokumentace** (`[152:21]`). Tři třídy dokumentů, přenosné mezi repy:
  - **immutable** (platný k datu pořízení — transcript, ADR),
  - **living** (trackuje část kódu/domény → nutná freshness, atribut `last_verified`),
  - **transient** (má stav: pracuje se / archivováno — např. specka).
  
  Vlastnosti: generovaný index (ne ručně udržovaný), **kalkulovaný trust score** (ne stanovený člověkem, aby nedriftoval), enforcement přes **CI / pre-commit hook** (upozorní na neverifikované living dokumenty, kde `last_verified` < poslední commit). Definováno přes **front matter** v markdownu. Zatím preliminary model k dalšímu „shapování“.
- Krátká odbočka o tom, jak Tomáš vyrobil prezentaci (jen jednoduchý prompt Claude), a o artefaktech na platformě Claude.

---

## Fáze 4 — Prezentace cyklistického projektu → hluboká technická diskuse (`[173:25]`–`[201:25]`, konec ořezán)

Kryštofova prezentace výstupů plynule přešla v nejživější (rabbit-hole) diskusi dne o kalibraci akcelerometru.

**Prezentované výstupy cyklistického týmu** (`[173:25]`):
- **Deep research** (Janka) přes ChatGPT + Gemini + Perplexity, ~30stránkové PDF, ~50 citovaných článků. Varování: nástroje občas udělaly z článku jinou konkluzi, než v něm reálně je — text je koherentní, ale ne vždy přesný → nutné číst ručně.
- **Strava Metro** — zažádáno o přístup (cesta k velkým číslům jako doplněk k rigoróznímu sběru).
- **Formulováno ~20 hypotéz** (dobrý vstup od Tomáše: začít hypotézami a tím, jak je otestovat) — normalizace, vhodnost telefonů, vliv umístění senzoru, dostatečná frekvence, objem dat.
- **Klíčové zjištění:** Android při zhasnutém displeji uspí senzory → původní „nultý“ vzorek je **nevalidní** (sbíralo se jen ~první a poslední minutu). Reálný objem po korekci ≈ **30 MB/hod** (ne 1 MB) → uživatele je nutné instruovat, aby povolili běh na pozadí.
- **Monetizace** (vstup od Toma) potvrzena jako zajímavá (samosprávy).

**Hluboká diskuse — orientace os akcelerometru** (`[181:00]`–`[201:00]`):
- Jirka přináší analogii **filmové klapky**: tapnutí/„triple knock“ na začátku pro **časovou synchronizaci** a značení segmentů.
- Jádro sporu (Tomáš ↔ Kryštof ↔ Janka): **automaticky detekovat dominantní osu** z dat (preprocessing) **vs.** stanovit **referenční rovinu** knockem/tlačítkem po namontování na kolo. Rozbor tříosého akcelerometru vs. gyroskopu, kalibrace kompasu (osmičky), problém, že když je telefon v klidu, samotné zmáčknutí tlačítka **neprozradí naklonění** (gyroskop je na nule — je nutné pohnout). Závěr diskuse: pro měření kvality povrchu **nepotřebují znát absolutní orientaci telefonu**, jen referenci vůči „bumpovací“ ose; vše zůstává jako neověřené hypotézy k prověření při reálném sběru.
- Meta-reflexe Tomáše o vlastním stylu argumentace („asshole in discussing“) a přání umět detekovat vzájemné nepochopení, ne jen tlačit argumenty.

*(Nahrávka je ořezaná a končí uprostřed této diskuse.)*

---

## Rozhodnutí

- **Cyklistický projekt:** postupovat přes **formulaci a ověřování hypotéz** (ne rovnou výpočty nad chabými daty). Začít reálným sběrem z telefonů, včetně testu různých umístění senzoru.
- Původní vzorek dat prohlášen za **nevalidní**; příště zajistit běh senzorů na pozadí + časové značky (klapka) na začátku a při změně povrchu.
- Zažádáno o přístup do **Strava Metro** jako alternativní zdroj (velká čísla).
- **Radek:** pokračovat v budování ghostwriter skillu; zavést návyk průběžně ukládat páry původní→finální text pro evaly.
- **Tomáš:** dál „shapovat“ model immutable/living/transient s CI enforcementem trust score.

## Akční položky

- [Kryštof] Provést reálný sběr dat z telefonu se zapnutým během na pozadí; otestovat hypotézu vlivu umístění senzoru (kapsa vs. řídítka) a orientace os. `[182:36]`
- [Kryštof] Ukládat data v úspornějším formátu než JSON. `[177:42]`
- [Kryštof / tým] Projít ~20 formulovaných hypotéz a navrhnout ke každé způsob ověření. `[178:00]`
- [Janka] Dokončit / rozšířit deep research; ručně ověřit konkluze proti citovaným článkům. `[174:33]`
- [Kryštof] Sledovat schválení přístupu do Strava Metro. `[175:00]`
- [Radek] Reviewnout páry, které skill nasbíral (věrohodnost vstupních dat); zavést průběžné ukládání původního i finálního stavu textů. `[146:40]`
- [speaker_7 → Radek] Poslat přes Slack skill „Anslop“ ke srovnání/kombinaci. `[146:19]`
- [Tomáš] Dodefinovat pravidla pro výpočet trust score a chování modelu nad třídami dokumentů. `[157:39]`

## Otevřené otázky

- Lze data z akcelerometru spolehlivě **normalizovat** napříč koly, rychlostmi a umístěním telefonu? (grand hypotéza)
- Stačí **čistě časová synchronizace** (klapka), nebo je nutná detekce orientace os? Auto-detekce dominantní osy vs. referenční rovina?
- Bude nutný **on-device preprocessing** (různé vzorkování mezi telefony), a pokud ano, jak neznehodnotí normalizační algoritmus?
- Přináší vlastní rigorózní sběr dostatečnou přidanou hodnotu oproti **Stravě** (velká čísla) pro daný účel?
- Je jeden **univerzální** ghostwriter skill užitečný, nebo je potřeba jiné chování pro tasky / prózu / meeting notes?

