---
class: immutable
type: transcript
title: "Radek: kde jsi v AI hypu – checkpointy sessions a úrovně autonomie agentů"
date: 2026-10-23
event_date: 2026-10-23
category: interview
tags: [ai-hype, pět-poloh, human-in-the-loop, checkpoint, autonomie-agentů, gates, claude-code, kognitivní-zátěž, meetup-pitch, kopernici]
project: AI Jam
language: cs
duration: 13m
source: wispr
wispr_id: d23aff57-749a-4446-9212-2160e7ce6886
---

# Radek: kde jsi v AI hypu – checkpointy sessions a úrovně autonomie agentů

## Kontext

Tomáš testuje na Radkovi dva slajdy pro meetup pitch. Levý slajd „Ztrácíte se v AI hypu?“ popisuje pět poloh práce s AI: Asking, Collaborating, Delegating, Juggling, Managing. Pravý slajd „Nižší poloha, méně starostí“ je matice 11 otázek, které v jednotlivých polohách bolí. Radek jde otázky po jedné a říká, co ho opravdu bolí. Tomáš mu pak ukazuje svoje řešení ze cc-tree a Claude Code: automatický checkpoint session a úrovně autonomie s gates. Diarizace místy prohazuje mluvčí, a proto je v souhrnu uvádím jménem podle obsahu.

## Klíčové body

- **Největší a trvalý pain podle Radka: kde je human in the loop.** Agent si často sám řekne, kde Radka potřebuje a kde ne, a trefí se špatně oběma směry. Podle Tomášových poznámek jde o falešně pozitivní i falešně negativní případy. Radek si myslí, že tenhle problém nezmizí: agenta je potřeba naučit, kdy má informovat a kdy má jet dál.
- **Na slajdu chybí kontrola výstupu.** Tomáš si poznamenal, že v matici chybí otázka, jak hluboko kontrolovat výstup.
- **Co je pro Radka zvládnuté:** ví, kde na něj něco čeká a kde visí komentář. Má celkem srovnané, co je v Gitu, co v Notionu a co běží na infrastruktuře. Občas ale zapomene, kde mu běží něco, co si vyrobil, třeba ve Val Town.
- **Jak Radek rozhoduje:** záleží na doméně. V UX, contentu a výstupu má silný názor a chce, aby ho agent challengoval, rozhoduje ale sám. Technické volby, jako knihovnu nebo kam nasadit, většinou nechá na agentovi.
- **Řádek „kde čekají moje rozhodnutí“ je na slajdu formulovaný nejasně.** Bylo by lepší „co čeká na moje rozhodnutí“.
- **„Kde jsme včera skončili“ Radka bolí hodně.** Má rozjetých spoustu agentů a v některém tabu agent stojí třeba 4 dny. Načíst si zpátky kontext je pro něj velká zátěž. Dnes se agenta prostě zeptá na summary. Tokeny neřeší, nedokáže je vyčerpat.
- **„Co se děje, když se nedívám?“ ho zatím moc netrápí, ale začíná.** Jde o projekt, kde agentovi Vojtěšovi dal volnou ruku: jeho Chrome, odpovídání na zprávy. Bojí se, že agent udělá průser, za který bude Radek popotahovaný.
- **Na slajdu se Radkovi líbí hlavně otázky.** Připadají mu jako dobré prompty a hodně užitečné.
- **Tomášovo řešení „kde jsme skončili“: automatický `/checkpoint`.**
  - Hlídač sessions sleduje, kdy končí cache okno kontextu.
  - Když je session zhruba hodinu neaktivní, spustí se 5–10 minut před koncem okna obyčejný prompt.
  - Prompt zapíše checkpoint ve struktuře Done / Found / Decided / Open / Next.
  - Po návratu do session je hned vidět stav. Shrnutí vzniká, dokud je kontext čerstvý, a skoro nic nestojí.
  - „Found“ znamená zjištění, která nejsou zřejmá, třeba negativní.
  - Radek si odnáší hlavně to, že jako spouštěč funguje doba neaktivity. To pro něj bylo nové.
- **Radkův obecný požadavek: předání s nízkou kognitivní zátěží.** Agent má podávat informace jako executive summary od zaměstnance: nic navíc, ale nic důležitého vynechat. Done, Decided a Open se mu líbí.
- **Tomášův recept na HITL: autonomie ve dvou dimenzích.**
  - *Úroveň autonomie*:
    - L1 Follow to the dot
    - L2 Task autonomous
    - L3 Goal autonomous
    - L4 Autonomous, kdy agent rozhoduje sám a jen informuje
  - *Gates / boundaries*: hranice nezávislé na úrovni, třeba infrastruktura, náklady, deploy a externí zprávy. Výchozí hranice je například „nesmí to nic stát navíc“, takže agent si neobjedná předplatné. Uživatel do nich přidává svou doménovou znalost, třeba „buď autonomní, ale do tohohle tématu nechoď“.
  - Při ukázce se ukázalo, že Tomáš má výchozí boundaries zatím nedefinované („Default boundaries: not defined yet“). Agent mu na místě navrhl tabulku výchozích gates pro L2–L4, u L4 například drobné výdaje s limitem ≤ 500 Kč.
- **Proč to dělat:** Tomáš chce lidem ve vyšších polohách přinést „pokoj“, tedy odříznout jim témata, která jsou na ně zatím moc daleko. Radek to formuluje spíš jako **jasnost**: „Tady jsi a tohle se tě netýká, nejdřív se zlepši tady.“
- **Kritika vizuálu:** řádek „Agenti, orchestrace, automatizace“ je podle Radka AI slop. Je to zbytečný blob a v UI vůbec nemusí být.

## Rozhodnutí

- Tomáš pošle Radkovi checkpoint prompt jako inspiraci. Radek si ho upraví a doporučeno je spouštět ho automaticky.
- Text o úrovních autonomie Radek nepotřebuje. Koncept úrovní a boundaries pochopil a zpracuje si ho sám.

## Akční položky

- [Tomáš] Poslat Radkovi checkpoint command.
- [Radek] Postavit si vlastní checkpoint nad session, ideálně automatický po době neaktivity, a vlastní úrovně autonomie s boundaries.
- [Tomáš] Upravit slajdy:
  - přidat kontrolu výstupu a hloubku kontroly,
  - přeformulovat „kde čekají moje rozhodnutí“ na „co čeká na moje rozhodnutí“,
  - odstranit blob „Agenti, orchestrace, automatizace“,
  - promyslet, kde se ukáže otázka HITL a falešně pozitivních či negativních případů.
- [Tomáš] Doplnit výchozí boundaries k úrovním autonomie. Agent k tomu navrhl tabulku do dokumentace cc-flow.
- [Tomáš, Radek] Vrátit se k tématu, až si Radek tuhle oblast projde.

## Otevřené otázky

- Jak naučit agenta správně rozpoznat, kdy je člověk potřeba, aby nevznikaly falešné eskalace ani tiché rozhodování tam, kde se rozhodovat nemělo?
- Jak hluboko kontrolovat výstupy agenta a kam to v modelu pěti poloh patří?
- Jak hlídat rizika plně autonomního agenta, který odpovídá na zprávy za uživatele (Radkův agent Vojtěš)?
- Má cílem rámce být „pokoj“, nebo „jasnost“? Jde o rozdílné vnímání Tomáše a Radka.
