---
title: "AI Jam: sběr cyklistických dat pro skórování povrchu silnic a diskuze o effort levelech"
date: 2026-09-03
type: meeting
tags: [ai-jam, machine-learning, effort-level, cyklistika, data-collection, pojmoslovi, training-loop]
project: default
language: cs
duration: 2h 23m
source: plaud
plaud_id: 5add5b843045bc61e9e5f02d81a36ca9
---

# AI Jam: sběr cyklistických dat pro skórování povrchu silnic a diskuze o effort levelech

## Kontext

Pravidelné setkání skupiny AI Jam (speaker_0 Jirka/Tom?, speaker_1 Tomáš Landovský, speaker_2, speaker_3, speaker_4, speaker_5, speaker_7 a další), kde si účastníci navzájem prezentují témata, na kterých chtějí ten den pracovat, a pak se rozdělí do menších skupin. Hlavní vlákno dne: jeden z účastníků (speaker_0) sbírá akcelerometrická data z jízd na kole, aby z nich odvodil objektivní skóre kvality povrchu silnice, a společně s speaker_1 (Landovský) navrhují ML přístup (normalizace signálu → skórovací funkce) i sběrnou webovou aplikaci pro dobrovolníky. Paralelně běží dvě další témata: osobní "learning pipeline" pro sledování AI novinek (speaker_2) a snaha sjednotit pojmosloví kolem agentních systémů a effort levelů (speaker_3).

## Klíčové body

- **Téma 1 – Personalizovaný research/learning agent (speaker_2):** Chce scheduled task, který bude prohledávat historii jeho Claude session a důvěryhodné zdroje (newsletter), navrhne mu týdně cca 5 témat/utility tipů k vyzkoušení, na základě jeho zpětné vazby (zajímá/nezajímá) se bude učit. Preferuje spolupráci max. s jedním člověkem (minule bylo příliš lidí a bylo to overwhelming). Tom i speaker_0 mají zájem se přidat/použít výsledný skill.
- **Téma 2 – Sjednocení pojmosloví AI agentů (speaker_3):** Iniciováno otázkou "co se děje pod pokličkou, když měníš effort level" – nikdo v skupině neuměl jasně odpovědět. Cíl: udělat si "akademický" vhled do fungování harnessů/agentních systémů (co je harness, co je agent, co je deterministický skript, v čem jsou napsané nástroje jako Claude Code/Codex, permission systémy atd.). Práce má být rozdělená mezi účastníky po pojmech.
- **Téma 3 – Cyklistická data / skórování silnic (speaker_0 + speaker_1 + speaker_4):**
  - Cíl: z akcelerometrických dat (sbíraných appkou Sensor Logger) odvodit skóre kvality povrchu silnice na úrovni segmentu (např. 10 m).
  - Klíčový problém: normalizace signálu napříč různými "rigy" (typ kola, tlak v pláštích, váha jezdce) tak, aby šlo porovnávat/průměrovat záznamy stejného úseku od různých lidí.
  - Navržený postup (learning loop speaker_1): nejprve společně s LLM navrhnout **eval** (jak poznat kvalitní normalizovaný signál, jak oddělit šum od podstatného signálu), a teprve pak nechat model hledat transformační funkci vůči tomuto evalu.
  - Odděleny byly dvě fáze: (1) normalizace syrového signálu na srovnatelné "normalizované" nahrávky, (2) až následně skórovací/interpretační funkce mapující na finální skóre segmentu – tyto kroky se nemají směšovat.
  - Diskutována potřeba filtru/validátoru kvality nahrávky (např. nesmyslný povrch, špatně upevněný telefon) se skóre/flagem kvality, aby špatná data nezkreslila průměr.
  - Domluven sběr dat "laboratorně" (jedno kolo, různé tlaky, různá kola, cca 5min úseky tam a zpět) i od kamarádů v terénu.
  - Navržena jednoduchá webová sběrná aplikace (bez loginu, profil v prohlížeči) pro upload nahrávek + metadata (typ kola/rig, hmotnost jezdce atd.), s client-side validací dat při nahrání, ukládáním do S3 (manifest JSON, raw soubory, index), doménou riders.kopernici.cz, K3S deploymentem.
  - speaker_1 nechal (autonomně, přes subagenty) Claude postavit specifikaci a K3S deployment na pozadí, včetně review přes vlastní markdown-review nástroj (MD Canvas) s vláknovými komentáři.

## Rozhodnutí

- Sběr cyklistických dat a tvorba skórovací pipeline se rozdělí na dvě oddělené fáze: normalizace dat vs. skórovací/interpretační funkce; nejdřív se řeší normalizace.
- speaker_0 do příštího setkání posbírá více (kvalitnějších, "laboratorních") dat na stejném úseku s různými koly/tlaky.
- Vznikne jednoduchá webová sběrná aplikace pro upload dat od dobrovolníků (doména riders.kopernici.cz), nasazená na K3S clusteru.
- speaker_2 chce pracovat max. s jedním spolupracovníkem na svém research/learning agentovi.
- speaker_3 rozdělí pojmy k prozkoumání mezi účastníky svého podtématu.

## Akční položky

- [speaker_0] Posbírat kvalitnější/laboratorní data z více jízd/kol/tlaků na stejném segmentu do příštího setkání.
- [speaker_0] Dopracovat specifikaci "what to collect" (data od jezdců – profil, rig, atributy jízdy).
- [speaker_1] Postavit s LLM eval pro normalizaci signálu (bez čekání na kompletní data).
- [speaker_1] Dokončit a nasadit sběrnou webovou aplikaci (data-collection-app), doménu riders.kopernici.cz, K3S deployment.
- [speaker_1] Poslat speaker_0 specifikaci "derived statistics" a "recording validation" k review přes PR/MD Canvas nástroj.
- [speaker_2] Pokračovat na scheduled learning/research agentovi, přizvat max. jednoho spolupracovníka.
- [speaker_3] Rozdělit pojmy k prozkoumání (effort level, harness, agent, permission systém) mezi zúčastněné a připravit "školní" výstup/zápisky.
- [speaker_4] Prostudovat repo speaker_0 a hypotézy, než se zapojí do diskuze o cyklistických datech.

## Otevřené otázky

- Jaká přesně bude výstupní veličina/formát normalizovaného signálu (jeden sjednocený signál napříč typy kol vs. skupiny podle typu riggu)?
- Do jaké míry a jak validovat/filtrovat nekvalitní nahrávky (skóre kvality vs. true/false)?
- Kolik dobrovolníků reálně bude ochotno pravidelně sbírat data a jak je motivovat?
- Co přesně znamená "effort level" a jaké části agentních harnessů jsou deterministické vs. řízené modelem (nezodpovězeno, cíl dalšího zkoumání speaker_3).
