---
title: "AI Jam: harness architektura, cache mechanismus a výběr modelů podle náročnosti úkolu"
date: 2026-09-03
type: meeting
tags: [ai-jam, harness, context-caching, agentic-loop, model-selection, tool-calling, security-guardrails]
project: default
language: cs
duration: 50m
source: plaud
plaud_id: 5b3f5e9ae9845f7d7e8b7cb84a2f0ba2
---

# AI Jam: harness architektura, cache mechanismus a výběr modelů podle náročnosti úkolu

**Kontext**

Pravidelný AI Jam meetup, kde účastníci (speaker_0 Radek, speaker_1 Jirka, speaker_2, speaker_3) sdílejí svoje aktuální learningy z práce s agentickými AI nástroji. Jirka prezentuje výzkumný dokument o fungování AI harnessů (na příkladu Claude Code / Codexu), David (speaker_3) prezentuje vlastní systém pojmenovaných agentů (Wizard/Monk/Warrior/Peasant) pro směrování úkolů na různé modely podle náročnosti.

**Klíčové body**

- Jirka nechal vygenerovat obsáhlý dokument (~10 kapitol) vysvětlující architekturu agentického loopu, prompt caching, bezpečnostní klasifikátory a slovníček pojmů (harness, scaffold apod.) — porovnáno s open-source zdrojovým kódem Codexu, protože Claude Code svůj harness nezveřejňuje.
- Vysvětlen mechanismus promptu: systémový prompt tvoří cca 98 % velikosti odesílaného kontextu; cache breakpoint odděluje statické části (systémový prompt, definice nástrojů, historie) od proměnlivých (aktuální požadavek) — jakákoli změna před breakpointem zneplatní cache.
- Cache má krátké okno (5 min / 1 hod), zápis do cache je dražší, čtení z cache je zlomek ceny (až 90% úspora).
- Na konkrétním příkladu (přejmenování metody `send_email` → `deliver_email`) proběhla smyčka 8× (4 volání search + 4 edit), než model usoudil, že nepotřebuje další tool use.
- Bezpečnostní vrstvy: deterministické guardraily (sandbox, izolovaná síť/adresář) + agentní klasifikátory (jiný, specializovaný model), které např. zabránily agentovi odeslat obsah `.env` souboru na základě instrukce vložené uvnitř zdrojového souboru (prompt injection).
- Diskuse o "effort" nastavení: mění (1) hloubku thinking/reasoning tokenů, (2) agentické chování harnessu (méně tool calls, méně větvení), (3) celkovou spotřebu tokenů/cenu; změna effortu uprostřed session může zneplatnit cache a prodražit běh.
- Diskuse o tool callingu obecně: harness musí namapovat JSON tool-call výstup modelu na konkrétní aplikační volání (deterministický kód) — bez této mapovací vrstvy nelze fyzicky nic ovládat (příklad s otevíráním vrátnice).
- Language servery jako příklad deterministického tool, který model využívá místo vlastního parsování syntaxe.
- David prezentuje vlastní "spawn" skill se 4 archetypy agentů (Wizard = Fable 5.1 medium, Monk = Opus 5 X-high, Warrior = Opus 5 high, Peasant = Sonnet 5 medium), rozřazovanými podle matice judgment / size / cost-of-wrong; má hard rules (např. Wizard nikdy nebuilduje, Peasant nikdy nedělá code review).
- Otázka, proč Claude Code defaultně spawnuje subagenty se stejným modelem jako parent, místo chytrého defaultu/klasifikátoru pro výběr modelu — zatím nezodpovězeno, zmíněno jako možná mezera na trhu.
- Diskuse o "swim lane" přístupu k modelům (Opus jako default, ruční přepínání na Fable pro náročné úkoly) a jeho nespolehlivosti (zapomínání přepnout zpět).

**Rozhodnutí**

- Žádná formální rozhodnutí, jde o sdílení poznatků a otevřené otázky.

**Akční položky**

- [speaker_1] Nasdílet odkaz na svůj výzkumný dokument o harness architektuře do skupinového threadu (aktuální verzi, ne "latest" pokud nejde veřejně sdílet).
- [speaker_3] Otestovat funkčnost spawn skillu (zatím neotestováno).
- [speaker_2] Zvážit striktnější používání subtasků/subagentů s explicitní instrukcí šetřit tokeny a vybírat vhodný model podle úkolu, případně to zakotvit v globálním CLAUDE.md.

**Otevřené otázky**

- Existuje v Claude Code / harnessech nastavení, které zabrání defaultnímu spawnování subagentů se stejným (drahým) modelem jako parent?
- Je možné mít víc než jeden cache breakpoint v jednom promptu?
- Dá se do produkčních fyzických/bezpečnostních systémů (např. vrátnice) reálně nasadit LLM-řízené rozhodování, a jaká je potřebná úroveň evalů/certifikace pro takové nasazení?
- Existuje již nástroj/klasifikátor, který by automaticky doporučoval optimální model podle typu úkolu (na základě benchmarků), aby uživatel nemusel ručně sledovat release notes a přepínat modely?
