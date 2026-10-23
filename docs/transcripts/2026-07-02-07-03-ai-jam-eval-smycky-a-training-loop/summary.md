---
title: AI Jam – eval smyčky a training loop
date: 2026-07-02
type: meeting
tags: [AI Jam, eval, training-loop, hill-climbing, prompt-optimization, ground-truth, LLM-as-judge, vibe-coding]
project: AI Jam
language: cs
duration: 2h 43m
plaud_id: b7e02fcb3db01a27cd9c97749e864dcb
---

# AI Jam – eval smyčky a training loop

## Kontext
Pravidelné setkání komunity AI Jam (facilituje speaker_1/Tomáš a speaker_0/Radek), jehož cílem je sdílet znalosti a společně držet krok s rychlým vývojem AI. Tentokrát skupina poprvé použila předpřipravená témata (viz včerejší guide + prompt na Slacku) a většina účastníků se sešla nad jedním tématem: **eval smyčka / training-loop skill** — Claude-driven harness, který iterativně vylepšuje kandidáta (kód, prompt, konfiguraci nebo model) proti měřitelné metrice.

## Klíčové body
- **Formát:** účastníci si na začátku odprezentovali připravená témata (~20 min), pak se rozdělili. Většina šla na téma *eval*, dva jeli sólo (speaker_5 – Just Dance interface; speaker_2 – browser automation na opakované nákupy).
- **Podstata training-loopu:** cyklus TRAIN → EVAL → SCORE → feedback. Claude vytváří „kandidáty" (řešení) a optimalizuje je proti evalu. Smyčka „vidí" jen jedno číslo (skóre).
- **Kdy smyčku pouštět (filtry / gates):**
  - Gate 0: dává to v kontextu smysl (nestačí prostě jen prompt)?
  - Filtr 1: dostatečný **headroom** (kam mám růst od současného stavu k maximu)?
  - Filtr 2: dokážu **kvalitu měřit levně, jednoznačně a stabilně**?
  - Filtr 3: mám dost **trénovacích dvojic** (vstup–výstup) za rozumnou cenu?
  - Plus: iterace nemá být jen 2–3 (to raději řešit přes běžný code); vhodné pro vysoký objem, vícekriteriální optimalizaci (např. funkce + rychlost + paměť).
- **Terminologie (word gaps), kterou skupina explicitně pojmenovala:**
  - **Kandidát** – konkrétní zkoušené řešení (kód/prompt/konfigurace/model).
  - **Eval** – objective / fitness / reward funkce; buď binární (0/1) nebo gradient (0–1).
  - **Ground truth** – správné odpovědi, mohou být i špinavé/syntetické. **Golden data set** – ručně prověřená podmnožina, referenční etalon.
  - **Negativní příklady** patří do ground truth (jinak se model naučí „všechno OK").
  - **Holdout** – oddělená testovací data, na která trénér nikdy nevidí (proti overfittingu); ML používá train/validation/test, tento skill dvě sady.
  - **Meta eval** – test samotného evalu: dej mu známé dobré i špatné příklady a ověř, že je rozliší.
  - **Hill climbing / lokální vs. globální maximum** – smyčka může uváznout v lokálním maximu; skill to sám neřeší, nutno pustit víc diverzních kandidátů. Zdroje: DeepMind FunSearch, AlphaEvolve; „LLM-guided evolutionary program search" / „eval-driven code generation". Není to trénink vah, ale optimalizace v prostoru artefaktů.
- **Probrané use-casy pro eval smyčku:**
  1. Detekce botů (speaker_1) – zjištěno, že strop dat je ~80 %, single-page návštěvy nedetekovatelné → úloha při stávajících datech nedává smysl.
  2. Validace/generace eRecept kódů (speaker_1) – ideální: jasný golden (přijaté preskripce), deterministický eval, milisekundy.
  3. Optimalizace promptu pro user stories (speaker_0/Radek) – artefakt je prompt; eval subjektivní → nutno rozsekat kritéria nebo LLM-as-judge; meta eval kritický.
  4. Kvalita transkripce / srovnání speech-to-text modelů (speaker_3) – **není** pro smyčku: neiteruješ, jen srovnáváš modely (benchmark, ne optimalizace). Lze doplnit syntetická data přes ElevenLabs.
  5. Ladění inference serveru – BIOS/GPU/model config (speaker_3) – vícekriteriální (throughput, latence do 1. tokenu, tool-calling success rate), pozor na stabilitu metrik (průměr z více běhů), iterace drahá/pomalá ale ne LLM-časově.
  6. Optimalizace SQL dotazu na rychlost (speaker_1) – místo wall-clock měřit stabilní proxy (buffery, řádky, cost z EXPLAIN ANALYZE), cache-nezávislé.
  7. Kvalita kódu z coding agentů (speaker_7/Honza) – nejvíc fuzzy, riziko pasti; realističtější zaměřit se na konkrétní aspekt (např. verbose komentáře).

## Rozhodnutí
- Skupina věnovala evalu i ~20 min z prezentačního času navíc.
- Každý, kdo přišel s příkladem, si má nainstalovat **training-loop skill** (ve vlákně v kanálu AI témata na Slacku), hodit mu své téma a nechat se provést designem evalu.
- Setkání skončilo ve 12:03 bez protažení (speaker_0 nechtěl protahovat).
- Tomáš prezentaci zatím nezveřejní — dopracuje mentální model / diagram a slovník pojmů s kolegy.

## Akční položky
- [speaker_1/Tomáš] Upravit training-loop skill/README, aby zmiňoval problém lokálního maxima (nutnost pouštět víc kandidátů) — *už během sezení updatnul*.
- [speaker_1/Tomáš] Přepracovat prezentaci: přidat diagram mentálního modelu, omezit buzzwordy; poslat as-is a průběžně aktualizovat (speaker_5).
- [speaker_1/Tomáš] Rozhodnout, kam na Slacku dát eval materiály (zvažoval nový kanál s expiry).
- [speaker_0/Radek] Vyzkoušet skill na optimalizaci promptů pro user stories; upravit eval, aby netrestal chybějící německé překlady; doplnit negativní/špatné příklady do meta evalu.
- [speaker_3/Kuba] Zabrainstormovat use-case (nemá teď kde spustit), případně se přidat k Radkovi; použít eval na GPU/inference optimalizaci a pricing.
- [speaker_7/Honza] Zvážit eval na kvalitu kódu / konkrétní aspekty (verbose komentáře), i když je to fuzzy.

## Otevřené otázky
- speaker_0/Radek odchází s „mlhavým mentálním modelem" — chybí mu jasnost, na *které* use-casy eval smyčku vůbec aplikovat (rozpoznávací hook „not this way → eval"); potřeba konvergence.
- Jak spolehlivě odhadnout headroom, když neznám maximum úlohy.
- Nakolik heterogenita kontextového okna a style cache ovlivňují kvalitu/náklady (best practices: čištění okna dvojitým Esc, BTW command, handoff markdown, /compact).
- Fork/subagenti v Claude Code pro paralelní meta-úlohy se stejným kontextem — speaker_0 z toho odchází zmatený, hledá tipy.
