# Souhrn AI Hackathonu: Od úvodních nápadů po finální prezentace

![PLAUD NOTE](permanent/861dcbee060d34c60accb5feb08cb13b/mem_clFGB495vj/summary_poster/card_20260430101957-v2@0dbb67c18a782b0ee72879-1_20260430102429_b6a80726.png)

## Úvod a organizace hackathonu
Organizátor Radek přivítal účastníky a představil záměr akce inspirované barcampy: kolektivní učení, sdílení postupů a rychlé testování nápadů. Připomněl, že projekt AI Gen Z vznikl z jeho potřeby dohnat „ujíždějící AI vlak“ společně s dalšími lidmi, nikoli osamoceně. Cílem dne je, aby každý odešel s konkrétním posunem: něco se naučil, něco si vyzkoušel, zároveň předal poznatky ostatním. Akce klade důraz na fragmentaci do menších skupin, kde se „víc udělá, vyzkouší a zeptá“.

Logistika dne:
- Úvodní kolečko (cca 30 minut): každý řekne, čemu se chce věnovat.
- Práce ve skupinách nebo samostatně (preferovány menší skupiny).
- Před obědem lightning talky (cca 30 minut): rychlé sdílení užitečných zjištění.
- Závěrečné sdílení: vyhrazený čas na předání co nejvíce naučeného ostatním.

Metrika „ujíždějícího AI vlaku“ a „energie“ (škála 0–10):
- Radek: ujíždění 3, energie 8.
- Krištof: ujíždění 6, energie 7.
- Jaromír: ujíždění 7, energie 5.
- Tomáš: ujíždění 2, energie 8.
- Honza: ujíždění 3, energie 8–9.
- Honza (další): ujíždění 5 („vlak je možná nahypovaný“), energie 5.
- Viktor: ujíždění 4, energie 7.
- Tomáš (další): ujíždění 8, energie 2.
- Jarek: ujíždění 8, energie 2 (stejně jako Tomáš).
- David: ujíždění objektivně 8–9, pocitově 2–3, energie 8.
- Jakub: ujíždění 7, energie 7.

Reflexe:
- Kolektivně zaznělo, že investice času do AI snižuje pocit „ujíždění“. Jakub připomněl opačnou zkušenost: větší investice odhalují, jak „rychlý a daleko“ vlak je.
- Radek přinesl „naději zkratky“: dobře vedený den a sdílení mohou zkrátit cestu k dohnání vlaku.

## Prezentace témat a formování pracovních skupin
V „popcornovém“ brainstormingu se nahazovala témata napříč designem, marketingem, vývojem her, osobní automatizací, analýzou dat, chatboty a cenotvorbou. Radek koordinoval přes Slack, kde vznikaly vlákna s tématy; zároveň se řešily notifikace, které některým nepřišly.

Navržená témata:
- AI hygiena: do čeho AI cíleně nepouštět, jaké to má dopady; opřená o výzkum mozkové aktivity a produktivity. (Radek)
- Tvorba rytmické hry v Godot enginu na téma focení pro Fujifilm: pohyb loutek, skákání po „klíšťatech“ se zabarvenou explozí; následná fotokniha z in-game fotografií. (David)
- Využití AI pro tvorbu designu / Claude Design (UI, prototypování). (Honza)
- AI nástroje pro marketing (LinkedIn, promo materiály, vizuály). (Mirek)
- Rozdělení design tématu: „marketingový design“ vs. „vizualizace apky“ (design aplikací). (Rozhodnutí)
- Pokračování na projektu Deviat: interaktivní prezentace výzkumů, dotazování na postoje, vizualizace dat, výběr správných typů zobrazení. (Mirek)
- Chatbot pro národní číselník laboratorních položek: napojení na API a „skilovaný“ Claude. (Honza S.)
- AI to AI: výběr fotek pomocí AI hodnocení emocí/estetiky pro knihu/kalendář. (David)
- Osobní asistent: orchestrace jednoduchých úkolů (psaní e-mailů, nákup „z ledničky“) s propojením na Google Assistant/Siri. (Tomáš)
- Analýza uživatelského chování v Google Analytics s Claude (lightning talk). (Radek)
- Aktualizace dovedností s Claude Code (retrospektivy, praxe) – lightning talk. (Radek)
- Pricing služeb v éře AI: dopady na hodinovku, marže, konkurenci. (Tomáš)
- Průzkum a používání Claude Code Work v projektech. (Mirek)

Rozdělení do skupin (výběr):
- Radek: výzkum nástrojů pro tvorbu designu (Claude Design).
- Mirek: marketingový design; zároveň osobní asistent.
- Jaromír: Deviat.
- David: tvorba hry; preferuje pro pitch video „jako hra“ před plnou produkcí.
- Viktor: spolupráce na tvorbě hry.
- Tomáš: osobní asistent; prozkoumání Claude Code Work.
- Honza S.: osobní asistent; chatbot pro laboratorní položky.
- JD: nejdřív lightning talky, poté Deviat a/nebo osobní asistent.

Organizační poznámky:
- Je v pořádku pracovat i samostatně; skupiny nad 3 osoby ztrácí efektivitu.
- Možnost změny tématu v průběhu dne.
- Přesun do dvou místností nebo „ochozu s tělocvičnou“ pro práci.

## Prezentace výsledků a sdílení poznatků
Časový rámec oběda: rezervace na Anděl ve 12:20; odchod v 12:00.

Přehled prezentovaných výstupů a zjištění:
- Analýza dat s Claude Code a Google Analytics:
  - Claude Code analyzuje eventy z Google Analytics a koreluje je s kódem aplikace, pomáhá lokalizovat, kde se co děje v aplikaci.
  - Vznikla referenční tabulka eventů z kódu a changelog. (Tomáš)
- Claude Design (UI, prototypování):
  - Import existujícího Figma design systému a repozitáře kódu.
  - Z promptu vznikl klikatelný prototyp s animacemi a vizuálními efekty; výstup vizuálně vylepšen oproti původnímu návrhu, ale vyžaduje další iterace. (Tomáš)
  - Spotřeba kreditů: Tomáš spálil 44 % týdenního limitu; Honza S. 4–6 % za podobnou dobu. (Tomáš, Honza S.)
- Godot rytmická hra s pomocí AI:
  - AI pomohla s generováním assetů (pozadí, „klíště“, postavy) a s implementací logiky.
  - Mechanika: skákání na brouky do rytmu; problém s rytmem – AI bez lidského vstupu nedokáže přesně vyhodnotit. (Viktor)
- Chatbot pro národní číselník laboratorních položek:
  - Chatbot API volá interní API nad číselníkem; Claude Code vrací odpovědi.
  - Claude Code běží v Dockeru na našem serveru.
  - Režim auto mode: classifier rozhoduje o reakci; citlivé akce vyžadují explicitní potvrzení.
  - Bariéra pro vytvoření chatbota je nízká. (Honza S.)
- Deviat.io – interaktivní výzkum (postoje k armádě):
  - Zlepšena grafika a vizuální prezentace, s cílem emocionální zapamatovatelnosti.
  - Důraz na lidský faktor a umělecké zpracování dat. (Jaro)
- Postřehy k developer experience:
  - Radek ocenil vychytané skilly a plynulost práce („v zenu“).

Doplňující poznatky a perspektivy:
- Velké modely jsou obecně lepší; roste trend vysoce specializovaných LLM a „řídících“ modelů (např. Anthropic Opus Advisor), důležité pro optimalizaci nákladů na tokeny. (Krištof)
- Osobní asistent ideálně na hlas: „OK Google, tell Claude to buy another supplement“ – plná automatizace nákupu až do doručení do Alzaboxu. (Tomáš)
- Praktické doporučení: u Claude Designu volit menší jednotky práce („jednu kartu“) a provádět více iterací než zadávat příliš velké tasky. (Tomáš)

## Strategické a filozofické diskuze o dopadech AI
Diskuze se soustředila na cenotvorbu v kontextu zvyšující se efektivity díky AI, budoucnost hodinové sazby, value-based pricing a širší tržní dopady.

Hlavní závěry:
- Trh postupně rozpozná, že programátorský „effort“ klesá, a zakázky zlevní proporcionálně s mírou sníženého effortu; udržení „hodinovky“ půjde nějakou dobu, ale trend míří dolů. (Krištof)
- Snížení hodnoty samotného kódu bude tlačit na poskytovatele, aby nabízeli přidanou hodnotu mimo kód: kvalita, garance, business definice, komunikace se zákazníkem, návrh řešení. (Krištof, Tomáš, Honza)
- Možný posun k value-based pricingu. (Krištof)
- Produkce menších, mikro-individualizovaných aplikací se stane dostupnější – služby „vývoj na zakázku“ proniknou k menším klientům (např. kadeřnice s rezervací) díky rentabilitě po zlevnění práce. (Krištof)

Perspektivy a argumenty:
- Dodavatelé budou bránit snižování cen přes důraz na „kvalitu“ a garance; marže zůstane „na půl cesty“, ale část trhu bude podstřelovat ceny (undercut), aby získala zakázky. (Krištof)
- Očekává se menší celkový počet potřebných lidí pro stejné výstupy (příklad: místo „1000“ stačí „300“), ale objem práce poroste skrze více realizovatelné projekty. (Tomáš, David – ilustrativní tok práce: místo „10 dní“ → „10 hodin“, ale více zakázek)
- Programátoři izolovaní od komunikace a širšího problem solvingu mohou o práci přijít; adaptace je nutná (příklad „od Pascala dál“). (Honza, Tomáš)
- Cena na konci může reflektovat přidané garance (např. práce oceněná na „3–4 mandaye“ místo „2“, i když effort je menší). (Tomáš)
- Příklad „leštění podlahy“: práce se redefinuje s novými nástroji; analogicky v softwaru. (Krištof)
- Diskuze se shodla na dlouhodobém tlaku směrem k levnější práci, změně struktury dodavatelů služeb a nutnosti nabízet „něco navíc“ nad rámec kódu.

## Ukončení a další kroky
- Oběd: odchod v 12:00; rezervace na Anděl ve 12:20.
- Další termín setkání: „28.5.“ je aktuálně nahozený (hledá se finální potvrzení).
- Skupiny se přesunuly a pracovali dle rozdělení; závěr potvrdil pokračování komunitní aktivity.

## Akční položky
**@Radek**
- [ ] Synchronizovat se na Slacku a pravidelně zveřejňovat témata (vlákna), aby je účastníci měli na očích - [TBD]

**@Účastníci**
- [ ] Zapnout Slack notifikace (zejména na klíčová slova) tak, aby nezmeškali nová témata a vlákna - [TBD]

**@JD**
- [ ] Zhlédnout lightning talky, poté se připojit k projektu Deviat a/nebo k týmu osobního asistenta - [TBD]

**@Tomáš**
- [ ] Zadávat Claude Designu menší úkoly (např. „jednu kartu“) a provést více iterací pro kvalitnější výsledek - [TBD]