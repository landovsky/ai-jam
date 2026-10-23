## Informace o schůzce
> Datum: 2026-02-26 10:14:15
> Místo konání: [Vložte místo konání]
> Účastníci: [Speaker 1], [Speaker 2], [Speaker 3], [Speaker 4], [Speaker 5], [Speaker 6], [Speaker 7], [Speaker 8], [Speaker 9], [Speaker 10], [Speaker 11]
## Poznámky ze schůzky
### Úvod a cíle setkání
- Toto je páté setkání skupiny, která se pravidelně schází za účelem sdílení zkušeností s AI.
- Cílem je maximalizovat přenos informací mezi účastníky a zajistit, aby každý odcházel s novými poznatky.
- Důraz je kladen na to, aby diskuze vedly ke konkrétním, použitelným závěrům (takeaways) a dalším krokům (next steps).
- Doporučuje se zaměřit se na osobní růstový potenciál a co by každý mohl dále prozkoumat.
### Struktura a organizace setkání
- Setkání experimentuje s novým formátem, který zahrnuje sběr témat předem.
- Agenda:
    - Prvních ~15 minut: shoda na probíraných tématech.
    - Následující 2 hodiny: "hands-on" práce na vybraných tématech.
    - Posledních 30 minut (11:30-12:00): rekapitulace (check out), sdílení poznatků a stanovení dalších kroků pro každého účastníka.
- Zvažuje se koncept "Lightning Talks" – krátkých, 5minutových prezentací na úvod, které mohou inspirovat k hlubší diskuzi.
### Rozšiřování skupiny
- Existuje velký zájem o připojení nových členů, ale skupina chce postupovat opatrně, aby neohrozila kvalitu setkání.
- Je zde snaha rozšířit zaměření i na jiné oblasti než programování (např. marketing, UX/UI).
- Diskutuje se o potřebě přivést "ženský element" a také lidi s různou úrovní zkušeností, včetně začátečníků.
- Budoucí škálování a koncept budou probrány na konci setkání po vyhodnocení aktuálního formátu.
### Plánování témat a technické problémy
- Nejvíce hlasů získala témata "OpenClaw zkušenosti" a "Best Cloud Code for Assisted Dev".
- Další navrhovaná témata zahrnují "Family, Weekend, Wishlist", klasifikaci e-mailů, trackování času a další.
- Účastníci řešili technické problémy s připojením notebooku k televizi přes HDMI kabel, což bylo nakonec vyřešeno použitím Chromecastu.
### Diskuze o dopadu AI na programátory
- Zmíněna byla diskuze z jiné přednášky, kde programátoři vyjádřili obavu, že AI je připraví o kódování, které je baví.
- Objevily se protichůdné názory – od přesvědčení, že AI programátory do roka nahradí, po názor, že se pouze změní jejich role z praktického programování spíše do manažerské pozice, což nemusí každému vyhovovat.
### Představení a analýza nástroje OpenClaw (Open Interpreter)
- OpenClaw (nebo Open Interpreter) je popisován jako systém s rychlým vývojem (až 50 pull requestů denně), který může ovládat celý systém v závislosti na nastavení. Je považován za praktický, ale zároveň za „bastl“ s historickými bezpečnostními nedostatky.
- **Bezpečnost:** Doporučuje se spouštět nástroj v izolovaném prostředí (např. virtuální stroj nebo Docker), protože nerespektuje nastavené hranice a může mít přístup k celému systému.
- **Vlastnosti:** Podporuje pluginy (např. pro Gemini, Eleven Labs, Telegram), ukládá interakce do paměťových souborů a funguje jako jednovláknový agent, který neumí přirozeně přepínat mezi rolemi (např. firemní vs. osobní asistent).
- **Problémy:** Agent má tendenci „překračovat své meze“ a míchat úkoly. Problémem je také správa kontextu, kdy může posílat LLM modelům obrovské množství tokenů (až 100 000), což vede k vysokým nákladům a dosažení rate limitů. Některé funkce, jako jsou notifikace, je nutné doprogramovat.
- **Srovnání:** Zmíněna byla alternativa Ironclad, která má být bezpečnější, ale její instalace se nepodařila.
### Praktické využití OpenClaw / Open Interpreter
- **Vývoj:** Byl použit k orchestraci vývoje kvízové aplikace, kde přes Telegram řídil proces změn, pushování do Gitu a automatické nasazení přes CI/CD pipeline v Kubernetes.
- **Opravy webu:** Nástroj byl použit k opravě metadat webu a generování obrázků (OG Share Image) dle specifických požadavků.
- **Osobní asistent:** Umí pracovat s nativními aplikacemi jako Apple Reminders a kalendář. Byl propojen s iMessage a Notes pro automatizaci osobních úkolů.
- **Automatizace administrativy:** Nasazen jako "hlídač" firemního inboxu pro notifikace kritických zpráv do Slacku (např. storno objednávky). Také byl využit k dotazování nad firemními daty v přirozeném jazyce pro netechnické uživatele.
### Integrace AI asistentů do Slacku a využití modelů
- Bylo diskutováno vytvoření rozhraní do Slacku pro datového analytika, který by generoval reporty (Google Sheets, PDF). Slack je ideální platforma pro snadné nasazení.
- Pro běh těchto systémů se používá Claude (modely Sonnet pro úsporu, Opus pro vývoj), přičemž Opus je hodnocen jako výrazně lepší. Pro agentní úkoly je také využíván GPT Codex (verze 3.5).
- **Správa nákladů:** Bylo zdůrazněno riziko zacyklení agenta a spotřeby tokenů, proto se doporučuje model předplatného (např. 20 dolarů měsíčně).
### Usecase: Family Wishlist
- Byl představen proces, kde se hlasové záznamy konverzace s dcerami přepisují pomocí Rev AI.
- Přepsaný text je vložen do vlastního GPT, který extrahuje přání a vytvoří strukturovaný seznam v Markdownu s emoji.
- Tento seznam je následně zkopírován do sdíleného dokumentu v aplikaci Notion pro další plánování a odškrtávání.
### Přehled a srovnání produktů Cloud Code
- **Cloud Code Desktop App & Web:** Nabízí chat, spouštění session nad GitHub repozitářem na externí virtuálce a nástroj "Co-work" pro ovládání desktopových aplikací.
- **Cloud Code CLI:** Spouští se lokálně, pracuje se soubory v daném adresáři a lze mu udělit plná práva bez dotazování.
- **Vlastní prostředí:** Možnost připojit Cloud Code k vlastnímu serveru přes SSH, což umožňuje plnou kontrolu nad prostředím a verzemi knihoven. Funkce "Teleport" pro přenos session mezi prostředími však nefungovala.
### Dohled nad AI a framework Golem
- **HAPI:** Představena byla open-source nadstavba HAPI, která umožňuje sledovat a ovládat vzdálenou Cloud session přes webové rozhraní, což je bezpečnější než spouštět AI s plnými právy na lokálním stroji.
- **Golem:** Framework pro usměrnění vývoje, který nejprve vytvoří plán a uživatel ho může schválit nebo upravit. Osvědčil se spíše pro zavedené projekty. Problémem je, že se proces neumí větvit a velké úkoly je nutné dělit ručně. Může také zanechávat prázdné metody, které neodhalí ani následná analýza.
### Týmová práce a zadávání úkolů v Cloud Code
- Cloud Code má beta funkci "týmů", kde AI vytvoří agenty s různými rolemi (např. Security reviewer, Architecture reviewer), kteří mezi sebou komunikují a pracují paralelně.
- Byla zdůrazněna důležitost kvalitní a detailní specifikace pro AI; příprava může trvat déle než samotná implementace AI.
### Automatizace účetnictví a vývoj AI "skillů"
- Představena byla automatizace pro přípravu účetních podkladů pomocí Cloudu a Fakturoidu. Proces zahrnuje zpracování faktur z e-mailů a rekonciliaci plateb z bankovního výpisu.
- Základem jsou "skilly" (dovednosti) a deterministické skripty. Pro integraci stačí získat API token a vložit ho jako proměnnou prostředí.
- Byl navržen postup: začít s "hands-on" přístupem v Cloud Code, vytvářet atomizované skilly a postupně řešení škálovat.
### Praktická ukázka: Vývoj "skillu" pro Toggl reporty
- Během 15 minut byl vyvinut a otestován skript a následně "skill" pro stahování reportů z nástroje Toggl.
- Dále byl skill rozšířen o schopnost vytvářet návrhy faktur v systému Fakturoid. Asistent si sám dohledal chybějící údaje (IČO, sazba) a za cca 5 minut vytvořil faktury.
### Dekompozice a orchestrace agentů
- Byla diskutována dekompozice velkých skillů na menší, znovupoužitelné sub-skilly pro úsporu kontextu a modularitu.
- Řešila se otázka, zda používat jednoho univerzálního agenta (jako OpenClaw), nebo hlavního agenta, který orchestruje práci specializovaných agentů. Druhý přístup je považován za bezpečnější kvůli riziku "prompt injection" a míchání kontextů u univerzálních agentů.
### Překážky při automatizaci a další diskuze
- Účastníci identifikovali problém přejít od nápadu k realizaci kvůli pocitu zahlcení možnostmi.
- Zazněla kritika, že se ztratilo 30-40 minut diskusí o výběru tématu, místo aby se drželo plánovaných lightning talků.
- Byly navrženy témata pro příští setkání: integrace AI do vývojového procesu, praktické "case studies" a automatizace osobních i firemních procesů.
## Další ujednání
- [ ] Zorganizovat společný hackathon zaměřený na využití AI jako osobního asistenta.
- [ ] Vytvořit testovací e-mailové adresy a definovat use-casy k otestování na hackathonu.
- [ ] Na konci setkání probrat, jak dnešní formát fungoval, a získat nápady na další rozvoj.
- [ ] Diskutovat o způsobech, jak rozšířit skupinu o lidi z různých oborů a s různou úrovní zkušeností.
- [ ] Každý účastník si na konci setkání stanoví svůj další konkrétní krok (actionable item) prozkoumání do příštího setkání.
- [ ] Naplánovat příští setkání se zaměřením na integraci AI do vývojového cyklu, řešení konkrétních praktických problémů ("case studies") a téma automatizace a orchestrace.
- [ ] Naplánovat společný oběd.
## Návrhy AI
> **Návrhy AI**
> AI identifikovala následující problémy, které nebyly na schůzce uzavřeny nebo postrádají jasné akční kroky; věnujte jim prosím pozornost:
> 1. **Škálování skupiny:** Nebyl stanoven jasný mechanismus nebo kritéria pro přijímání nových členů, přestože byl zmíněn velký zájem. Stejně tak nebyly navrženy kroky k aktivnímu zapojení lidí z netechnických oborů.
> 2. **Architektura agentů:** Nebyl stanoven jasný závěr ohledně nejlepšího přístupu (univerzální agent vs. orchestrátor specializovaných agentů), přestože byly diskutovány výhody a nevýhody obou přístupů.
> 3. **Technická omezení nástrojů:** Byla zmíněna řada problémů s nástroji (vysoké náklady u OpenClaw, nefunkční "Teleport" v Cloud Code, neúplný kód od frameworku Golem), ale nebyla navržena konkrétní řešení nebo workarounds.
> 4. **Řízení schůzky:** Diskuze se několikrát odchýlila od plánu, což vedlo ke ztrátě času a přeskočení naplánovaných témat ("lightning talks"). Nebylo rozhodnuto, jak lépe moderovat budoucí setkání.
> 5. **Bezpečnost:** Byly zmíněny bezpečnostní problémy (např. "prompt injection" u OpenClaw, rizika spouštění s plnými právy), ale nebyla navržena konkrétní opatření nebo řešení, jak těmto rizikům čelit.