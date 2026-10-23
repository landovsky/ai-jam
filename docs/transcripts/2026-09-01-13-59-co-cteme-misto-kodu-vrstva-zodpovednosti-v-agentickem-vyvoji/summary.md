---
title: "Co čteme místo kódu: vrstva zodpovědnosti v agentickém vývoji"
date: 2026-09-01
type: developer-sync
tags: [ai-vývoj, code-review, dokumentace, agentický-vývoj, abstrakce, md-canvas, mutation-testing, ai-jam-téma]
project: AI Jam
language: cs
duration: 1h 35m
source: wispr
wispr_id: c5b19566-fc8b-4e39-961d-916d62ce0c7a
instructions: "This was more of a private chat and a personal thing than something project-related, but we had a really interesting discussion about code reading or not. What in our profession replaces code reading, and what are some of the ways that we as humans can ensure the software is functioning properly without reading the code?  I would like you to focus on this part of the conversation and build good quality, cohesive text that captures the ideas and examples that were said in a way that nicely reads and can be shared with others for provoking their thoughts on this topic. It should not invent new ideas, but it should skillfully put it together in a well-readable way."
---

# Co čteme místo kódu: vrstva zodpovědnosti v agentickém vývoji

## Kontext

Pravidelný sync Tomáše Landovského a Petra Černého (1. 9. 2026, 95 minut). Po osobním úvodu — Petr letí ve čtvrtek na tři dny do Amsterdamu na Stingův muzikál *The Last Ship*, Tomáš se chystá na kurz stříhání ovcí — se hovor stočil k práci a odtud k tématu, které nakonec zabralo většinu callu.

Spouštěčem byla Petrova konkrétní situace: dokončil velkou integraci třetí strany, prošel několik kol agentické implementace, otestoval ji z pohledu uživatele — a **samotný kód nepřečetl**. Před releasem stojí před otázkou, jestli si má vyhradit celý další den na klasické code review, nebo jestli existuje způsob, jak si být jistý i bez toho. Tomáš to zobecnil na otázku, která tvoří jádro celé diskuze: *když už nečteme kód, s čím vlastně jako lidé pracujeme a za co neseme zodpovědnost?* Tomáš si zároveň poznamenal, že tohle by mohlo být téma pro AI Jam.

---

## Klíčové body

### Kde dřív žila znalost — a proč to skončilo

Tomášova výchozí teze: dřív naše znalost systému žila v kódu. Věděl jsi, co řešení dělá, protože jsi ho psal — znal jsi podmínky, věděl jsi, co to umí a co ne. Když sis něco nepamatoval přesně, otevřel jsi soubor a dohledal detail.

> „Dneska to v něm nedohledáváš, ptáš se Clauda. Nečteš ho, to znamená, nevíš, co v něm je, takže jsi vlastně úplně ztratil kontakt s tím řešením."

A z toho plyne nepříjemný důsledek: pokud se vzdáš čtení kódu a nemáš žádnou náhradní vrstvu, nemáš ownership řešení. Děláš jenom diffy — „tady to asi funguje takhle a já to chci změnit takhle" — aniž bys kdy měl celkový obraz.

### Protiargument: kód je jediné médium, které se nemůže vychýlit

Petr tuhle náhradní vrstvu zpochybnil z principiálního důvodu. Kód je doslovný. Nemůžeš v něm zapomenout aktualizovat dokumentaci, protože kód *je* ta dokumentace — a co je v něm napsané, to se opravdu vykonává.

> „Pokud ten kód je tvoje dokumentace, tak to je nejlepší, protože se to nevychýlí."

Jakákoli abstraktnější vrstva je z definice duplikace znalosti, a duplikace se rozchází. Petrova zkušenost s agenty to potvrzuje: agenti zapomínají něco pokrýt, něco neaktualizují, něco zduplikují — protože si nevšimli, že to už existuje, jen se to v jiném kontextu jmenovalo jinak.

### Co kód naopak neříká

Petr zároveň sám pojmenoval hranici svého argumentu. Kód bez komentářů je *seznam možností, co se může stát*. U webové aplikace z něj vyčteš, co všechno jde v UI udělat, co se může pokazit, jaké jsou interní joby. Ale:

- **neříká, proč aplikace existuje;**
- **neříká, co je hlavní flow** — že uživatel může dělat deset dalších věcí, je něco jiného než to, co má dělat;
- a paradoxně, čím lepší kód, tím míň to říká. U dobře modularizovaného kódu v unixové filozofii — malé balíčky, jedna věc, jeden důvod — z výsledné mozaiky vůbec nepoznáš, proč to celé je.

Tomáš to shrnul jednou větou: kód neřekne, **proč to má ten shape, jaký to má**.

### Nápad: programovací jazyk o patro výš

Petr (inspirován podcastem Lexe Fridmana s DHH) nadhodil možnou budoucnost: velmi jednoduchý high-level jazyk, vzhledem něco jako Ruby, který umí prakticky jen podmínky a definice funkcí — a uvnitř každé funkce je implementace třeba v Rustu, kterou čte **jenom agent**, ne člověk.

Tomáš namítl, že přesně tohle se nestane, a to z jednoho důvodu:

> „Veškerá cesta přes AI je neučit se novou syntax. Veškerá cesta přes AI je mluvit přirozeným jazykem."

Petr myšlenku okamžitě překlopil: pak tedy tou vyšší vrstvou má být **dokumentace psaná přirozeným jazykem, ale programaticky namapovaná na soubory se zdrojovým kódem**. Neotevřeš source code — otevřeš dokumentaci featury, změníš v ní větu, a systém se začne chovat podle toho. Vazba na soubory zaručí, že se při změně kódu ví, která část dokumentace se musí aktualizovat nebo ověřit.

### Kde je háček: abstrakce bez determinismu

Tomášova nejpřesnější formulace celé debaty. Historicky jsme abstrakci zvyšovali *skrz determinismus* — nad céčkem postavíš Rails, programuješ „skoro anglicky", ale pořád máš pevnou syntax a jednoznačnou interpretaci.

> „Ty posouváš tu abstrakci, ale ne díky determinismu, ale díky AI a přirozenému jazyku. (…) Tam máš tu nejistotu, jak ty instrukce budou interpretované."

Proto se dokumentační vrstva **nedá poctivě přirovnat k vyšší vrstvě abstrakce v programování**. Je to něco jiného a hraje se v ní o důvěru, ne o garanci.

### Tomášova hypotéza: architektura se přesouvá do dokumentace

Z toho Tomáš odvodil svou hlavní tezi:

> „Pokud chci dobrou architekturu řešení a nechci věnovat čas kódu, tak musím mít dobrou architekturu dokumentace — strukturování toho problému ne skrz kód, ale skrz dokumentaci. A nad tou mám kontrolu."

A pak je to hypotéza, že se to transformací přes LLM převede do dobrého kódu. Bez ní totiž jenom lepíš jednotlivé požadavky, aniž bys věděl, do čeho spadají — a řád nevznikne.

### Vzkříšení Gherkinu

Nápad, který v hovoru vznikl na místě: co když je hledaným formátem něco jako **Gherkin** — byznysová pravidla zapsaná jako testy, mapovaná na RSpec? Historicky na tom bylo pracné právě udržování obou stran té vazby. Dnes tu vazbu udělá a ověří AI.

Výhoda by byla v možnosti měnit úroveň detailu: v dokumentaci máš byznysovou logiku, a když potřebuješ, **rozklikneš se do testů na edge casy**, které v dokumentaci být nemusí a nemají. Tomáš už dnes po Claudovi chce testy psané tak, aby popisovaly byznys logiku — tohle by na to navazovalo přirozeně.

Ve výsledku by merge requesty nebyly na kód, ale **na featury** — na to, co to má dělat. S výhradou: není jasné, jestli tahle úroveň abstrakce sedne na všechny druhy softwaru (u hluboké utility to nemusí dávat smysl).

### Jak si zajistit kvalitu, když kód nečteš

Praktická odpověď obou na otázku „jak vědět, že to funguje":

**Automatizované záruky místo čtení.** Petr místo tradičního code review nechal postavit quality proces, který stojí na:
- **mutation testingu** — flipne podmínky; pokud testy nespadnou, něco není pořádně otestované. Petr dřív neměl rád „zbytečné testy", ale tady mu to dává smysl právě proto, že to garantuje reálné pokrytí;
- **RuboCopu** a metrice **komplexity funkcí** — čistý kód není samoúčel, je to podmínka, aby agent líp performoval;
- **dalších kolech review celé branche** provedených Claudem.

Cíl: dostat se do bodu, kdy z kódu nemusí číst skoro nic — jen ověřit, jestli tam není fuck-up na úrovni *designu* featury (databázový model, závislosti, rozbití jiné featury).

**Metriky místo detailů.** Tomášova analogie: chovej se jako manažer aplikace. Nedefinuješ kvalitu pro každou featuru zvlášť, ale máš **obecně platné kvalitativní metriky** — page load time, průměrný počet dotazů, N+1 — které se sbírají a hlásí. Když zčervenají testy, Claude na to reaguje sám; když bude součástí vývojového cyklu i operations vrstva, bude stejně reagovat na porušené SLA.

> „Nemůžeš mít tu lidskou zodpovědnost, že toho člověka znáš a věříš mu, že je důsledný. Musíš ji mít programaticky checkovatelnou."

**Kde ta hranice je.** Petrova námitka: musíš si vybrat **mez, pod kterou už nejdeš**, a chtít popis přesně na té mezi — dost na to, abys byl sebevědomý, že to není implementované hnusně nebo riskantně, ale ne tak hluboko, že zase čteš kód. A ta mez je case by case. Většinou stačí vědět „ano, opravdu tam není N+1"; ale když jednou budeš řešit performance konkrétního modulu, budeš potřebovat detaily, které v dokumentaci nikdy nebudou.

### Governance dokumentace (Tomáš)

Tomáš ukázal systém, který si na tenhle problém postavil. Vadilo mu, že má v repu markdowny v různém stavu, Claude si je může libovolně načíst a **sám neumí posoudit, jestli tomu dokumentu může věřit**.

Dokumenty mají třídy s povinnými atributy ve front matteru (tedy queryovatelné):
- **immutable** — pravdivý v daném čase (např. zápis ze schůzky); není nikdy citovatelný, může mít `superseded by` s cestou na náhradu;
- **living** — trackuje kód; povinně nese pole `covers` (jaké soubory pokrývá) a `last_verified`. Když se změní pokrývaný soubor, dokument je nutné znovu ověřit — vynutitelné přes CI;
- **reference** — typ na něm už nezávisí;
- **transient** — např. spec. Spec implementace časem přeroste a přestane platit; je na tobě označit ji jako `draft` / `shipped` / `killed`, načež přestane být citovatelná.

Z toho se počítá **skóre důvěryhodnosti**, které Claudovi říká, jestli je dokument zdroj pravdy, nebo jen advisory. Systém má i migrace (změna frameworku vygeneruje migraci nad dokumenty) a postupnou adopci ve stylu `rubocop_todo`, aby se dal nasadit na existující repo bez invalidace všeho.

Klíčový přechod: spec (transient) → **vědomě** ji povýšíš na living dokument, přiřadíš jí `covers` a datum verifikace — a od té chvíle žije.

Petr souhlasil s mechanikou, ale trval na jiném rozdělení rolí: hodnocení důvěryhodnosti má sloužit **člověku**, aby věděl, co může číst a jak aktuální to je. Agent by měl vždycky číst source code, protože pro něj je zdrojem pravdy kód.

### Nástroje na komentování (praktický mezistupeň)

Vedlejší, ale úzce související linie. Petr narazil na to, že Claude artefakty jdou hezky sdílet, ale **jakmile je nasdílíš odkazem, zmizí tlačítko pro komentování** — takže nedostaneš zpětnou vazbu zpátky.

Tomáš ukázal vlastní řešení, **MD Canvas**: lokální web server vedle repa, který rendruje markdowny (včetně Mermaid diagramů), umožňuje komentovat jako v Google Docs — včetně jednotlivých buněk tabulek — a komentáře **nezapisuje do komentovaného souboru**, ale do sidecar JSONL. Ten pak předáš Claudovi přes příkaz; Claude má API na reply / resolve / reopen / apply.

Zásadní rozdíl proti artefaktům je záměrný: **Tomáš nechce, aby Claude začal reagovat na každý komentář hned.** Chce si review nabatchovat, submitnout a teprve pak vidět změny.

Co MD Canvasu chybí a co by celou smyčku uzavřelo: **zobrazit diff jen za poslední kolo** — přečtu si aktuální stav, okomentuju, submitnu, uvidím právě ty změny, které vznikly z mého submitu, bez akumulace předchozích. Petr k tomu doporučil vestavěný `/diff` v Claude Code CLI, který ukazuje změny po jednotlivých krocích, a navrhl to napojit do sidebaru.

Petrova představa architektury takového nástroje: **jedna codebase, dvě instance** — lokální (napojená na terminál, Kitty, session picker) a publikovaná pro externí komentující, se stejným JSONL formátem a možností merge komentářů zpátky na lokál. Publikovaná verze je vlastně subset té lokální. Zabezpečení přes Cloudflare Access s whitelistem e-mailů.

### Kam to spěje

Petrova pointa na závěr, která celou debatu uzavírá do kruhu: i kdybys tu stručnější, dokonale namapovanou dokumentaci měl, **za pár měsíců budeš chtít nečíst ani ji**. Objective-driven development: „Mám tenhle problém, vyřeš to." Modely budou mít dost dobrý judgement, aby trefily rozumné řešení napoprvé — jako dobrý kontraktor. Řekneš, že to chceš používat ve dne, a ono to bude bílé, protože si to systém odvodí.

Tomášova námitka proti neomezené delegaci:

> „Musíš toho znát tolik, abys byl schopný o tom diskutovat a argumentovat. Když něco neznáš, tak o tom nemůžeš ani argumentovat."

A společný závěr, ke kterému oba dospěli nezávisle: **prostředků generovat kvalitní výstup je dnes mnohem víc než kdy dřív — jenže kontextové okno člověka je malé.** Někde se to musí zastavit. Buď delegovat ještě víc, nebo počkat na další vývoj rychlosti zpracování.

---

## Rozhodnutí

- [Petr] Před odletem už nebude integraci dál ladit — zabalí ji do prezentovatelného balíčku (artefakt s uživatelskými cestami + screenshoty z implementovaného UI, diagramy v Notionu) a předá k review. Copy se doladí až po feedbacku.
- [Petr] Pro popis featury zvolil formu artefaktu s user journeys místo psaného návodu — protože pro integraci neexistuje testovací prostředí, jen jedna testovací klinika v téměř produkčním stavu.
- [Petr] Code review v každém iteračním kole vědomě neprováděl: trvalo by dlouho, věci se v průběhu měnily a bylo efektivnější dostat nejdřív výsledek.
- [Tomáš] MD Canvas staví záměrně jako sidecar — komentáře se nezapisují do komentovaného souboru.
- [Tomáš] Zvažuje toto téma jako námět pro AI Jam.

## Akční položky

- [Petr] Rozhodnout, jestli před produkčním releasem udělat plné code review, a případně komunikovat časový dopad („bude to stát x hodin navíc") zadavateli.
- [Petr] Předat balíček (artefakt + diagramy) k review.
- [Petr] Vyzkoušet `/diff` v Claude Code CLI a zvážit napojení do vlastního toolingu.
- [Tomáš] Doplnit do MD Canvasu diff omezený na poslední kolo (round-trip), případně dořešit sdílení a kolaboraci.
- [Tomáš] Zvážit vypsání tématu „za co neseme zodpovědnost, když nečteme kód" pro AI Jam.
- [Petr] Poslechnout / doporučeno k poslechu: podcast Lex Fridman × DHH.

## Otevřené otázky

- **Kde přesně leží mez detailu**, pod kterou už člověk nejde? Je stanovitelná obecně, nebo nutně case by case?
- Existuje už dobrý nástroj pro dokumentaci programaticky mapovanou na zdrojový kód, nebo se to musí postavit? A jak zajistit, aby nebyl vázaný na konkrétní agentský systém (čitelný lidsky + CLI nástroje pro AI)?
- Má být skóre důvěryhodnosti dokumentů vstupem i pro agenta (Tomáš), nebo výhradně pro člověka, zatímco agent vždy čte kód (Petr)?
- Sedne dokumentační vrstva jako primární rozhraní na všechny druhy softwaru, nebo jen na user-facing featury?
- Jak zaručit, že vygenerovaná high-level dokumentace nic neopomněla — a čím to prakticky ověřit?
- Jak sdílet a kolaborativně komentovat mimo lokální prostředí, aby zpětná vazba dorazila zpět do smyčky s agentem?
