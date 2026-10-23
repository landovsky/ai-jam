---
title: "AI Jam: coaching agenti, skill librarian a cyklistický data pipeline"
date: 2026-09-03
type: meeting
tags: [ai-jam, chatgpt-scheduled-tasks, exposure-therapy, skill-librarian, feedback-loop, cyklistika, data-normalizace, claude-skills]
project: default
language: cs
duration: 24m
source: plaud
plaud_id: cb4f0e5f610f701b354872762dcdc565
---

# AI Jam: coaching agenti, skill librarian a cyklistický data pipeline

**Kontext**

Neformální AI Jam setkání (speaker_0, speaker_1, speaker_2, speaker_3/4 jako účastníci), kde si členové navzájem sdílí osobní experimenty s AI agenty. Speaker_0 popisuje dva paralelní projekty: (1) ChatGPT scheduled tasks jako "coaching" systém pro exposure/rejection therapy (oslovování žen) a (2) rozjetý research/task-suggestion nástroj v Claude. Součástí je i update od speaker_1 o cyklistickém data-projektu s Kryštofem.

**Klíčové body**

- Speaker_0 si v ChatGPT nastavil dva nezávislé scheduled tasky — "Marco" (týdenní terapeut/reviewer strategie) a "Niko" (denní accountability partner/kouč) — sdílející společnou Notion stránku s instrukcemi, principy (implementation intentions) a logem historie.
- Inspirace vznikla z diskuze o tom, že si agenti mohou "povídat" přes sdílený blackboard.
- Hlavní technický problém bylo zprovoznění push notifikací v ChatGPT appce (nutný reinstall na iOS); scheduled tasky lze spouštět i z mobilní i desktopové aplikace.
- Filosofický spor o cíli exposure therapy: speaker_0 optimalizuje na *approach bez ohledu na výsledek*, čím větší anxiety/awkwardness, tím víc "bonusových bodů" (inspirace MCT terapií — nesnažit se cítit dobře, ale zvládat nepříjemné pocity). Speaker_1 by místo toho optimalizoval na to, aby oslovování bylo příjemné, s důrazem na vnitřní stav nezávislý na výsledku.
- Speaker_2 přispívá anekdotami o přirozených "openerech" (náhodná setkání) vs. aktivní approach; zmiňuje trend mladé generace odklonu od seznamovacích aplikací.
- Speaker_0 ukazuje druhý nástroj — Claude-based research/task agregátor, který táhne zdroje (Simon Willison, Nathan Mollick, Hacker News, Alpha Signal) a navrhuje úkoly s accept/dismiss/"nechápu" hodnocením a odhadem času.
- Diskuze o chybějící feedback loop: chybí krok "udělal jsem to → jak to dopadlo → ulož si to".
- Vznikl nápad na "skill librarian" — jednoduchý mechanismus/klíčové slovo (např. "this sucked because...") pro průběžné zaznamenávání frustrací/incidentů do souboru, bez nutnosti okamžité akce, aby šlo později agregovat vzorce (princip "neřeš jeden oheň, ale hledej společný jmenovatel z více ohňů" — inspirováno radou od Fable).
- Krátká meta-úvaha (speaker_1) o tom, že lidské interakce s AI agenty samy generují nová unikátní data, ze kterých se může AI učit (na rozdíl od vyčerpaných veřejných zdrojů).
- Update od speaker_1: diskuze s Kryštofem o cyklistickém data pipeline projektu — první krok je normalizace vstupních záznamů (zvuk/vibrace) napříč různými nahrávkami (různá kola, směry, nahuštění). Navrhli s Claude aplikaci, která ukládá do S3 odvozené statistiky/metadata (délka záznamu, frekvence sběru, síla signálu, váha jezdce atd.) jako standardizovaný katalog místo nutnosti vše ingestovat a projíždět model přímo.

**Rozhodnutí**

- Speaker_0 pokračuje v testování obou ChatGPT/Claude nástrojů, zatím bez finálního zavedení do denní praxe (50/50 jistota, že bude pokračovat).
- Kryštof a speaker_1 se zaměří nejdřív na normalizaci dat (první fáze pipeline) a standardizovaný metadata katalog v S3.

**Akční položky**

- [speaker_0] Vyzkoušet konkrétní navržený task z Claude research agregátoru (odhad 20 minut) a zhodnotit užitečnost.
- [speaker_0] Navrhnout/implementovat "skill librarian" pro průběžné logování frustrací/incidentů s klíčovým slovem a pozdější agregaci vzorců.
- [speaker_0] Rozšířit accept/dismiss feedback o textové zdůvodnění ("proč ano/ne") podle návrhu speaker_1.
- [speaker_1 / Kryštof] Sesbírat od kamarádů 5× 40minutové záznamy stejného segmentu jízdy v různých podmínkách (kolo, směr, nahuštění) pro normalizaci dat.
- [speaker_1] Dopracovat eval pro cyklistický data pipeline (nestihnuto v době nahrávky).

**Otevřené otázky**

- Jak dál rozvíjet/spustit "skill" z prozatímní Claude konverzace (research agregátor) — jaká je správná struktura procesu (accept/dismiss → implementace → feedback → uložení)?
- Zda a jak bezpečně přebírat instrukce/nastavení z Fable do vlastního Claude promptu, aniž by to nechtěně zhoršilo chování agenta.
