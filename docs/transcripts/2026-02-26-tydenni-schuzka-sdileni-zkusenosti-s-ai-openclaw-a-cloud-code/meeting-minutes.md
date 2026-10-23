### Akční položky
- @Speaker 4 - Připravit HP server, aby se na něj mohli všichni připojit a uspořádat hackathon na vytvoření use-case pro Claude jako osobního asistenta (např. s umělými e-mailovými adresami).
- @[Speaker 1] - Zahájit diskuzi o tom, kterému tématu se věnovat po zbytek času, aby si účastníci odnesli co největší hodnotu.
### Klíčová rozhodnutí
- Skupina se nebude rozšiřovat, dokud nebude plně vyladěn a ověřen stávající koncept setkání, aby byla zachována jeho hodnota.
- Pro běžné uživatele je doporučeno používat OpenClaw pouze s LLM na bázi předplatného (subscription), jinak hrozí vysoké finanční náklady ("spálení se").
- Speaker 2 použil OpenClaude k vytvoření bota, který monitoruje firemní inbox, filtruje zprávy a posílá notifikace o kritických událostech do Slacku. - Racionále: Automatizace úkolu kolegyně během její nepřítomnosti.
- Speaker 2 vybavil netechnické zaměstnance ("holky") desktopovou verzí Claude (Claude Code) s nakonfigurovaným připojením k firemním datům. - Racionále: Umožnit jim klást dotazy na data v přirozeném jazyce ("zeptej se Clauda, kolik bylo objednávek") místo manuální práce s dashboardy.
- Slack je ideální platformou pro interní AI nástroje. - Racionále: Všichni zaměstnanci jej používají, je bezpečnější a změny instrukcí lze provádět bez nutnosti nového nasazování (deploy).
- Pro práci s AI agenty je nezbytné používat model předplatného (subscription). - Racionále: Zabraňuje nekontrolovatelným nákladům v případě zacyklení agenta.
- Původně plánované lightning talky budou odloženy na příští setkání a diskuse bude pokračovat na související, hlubší témata. - Racionále: Skupina je již ponořena do technické diskuse a přechod na lehčí témata by narušil plynulost.
- Agent vyhodnotil použití týmu jako neefektivní. - Agent zdůvodnil své jednání tím, že použití týmu by nebylo efektivní.
- Shoda na tom, že technická implementace je dobrý plán na příští schůzku. - Účastníci souhlasili.
- Závěrečné kolo (retro, next steps) bude trvat 20 minut na konci schůzky. Dalších 15 minut bude nyní věnováno praktické ukázce. - Racionále: Aby bylo možné dokončit probírané téma a zároveň stihnout shrnutí.
- Claude se zeptá na povolení, než aktualizuje svou vlastní konfiguraci nebo skill. - Racionále: Zmíněno Speakerem 4 jako stávající chování.
### Podrobné zápisky
[00:00-01:14] **Účastník sdílí motivaci pro založení pravidelných setkání a jejich rozšíření.**
- Mluvčí inicioval pravidelná setkání s Tomášem s cílem vzájemného posunu a sdílení zkušeností ohledně AI.
- Uvědomil si, že samostudium AI je přínosné, ale spolupráce ve skupině je efektivnější pro rychlý rozvoj ("nabůstování").
- Tento princip přirovnává k párovému programování (pair programming), kde dochází k intenzivnějšímu přenosu informací.
- Setkání, nyní v páté iteraci, se postupně rozšiřuje a zvažují se další kroky, jako je zapojení více žen a rozšíření témat i mimo programování.
[01:14-02:18] **Jsou stanovena základní pravidla pro efektivní přenos informací během setkání.**
- Cílem je maximalizovat přenos informací mezi účastníky.
- Účastníci, kteří chtějí získat informace ("příjemci"), by se neměli bát ptát nebo přiznat, že něčemu nerozumí.
- Účastníci, kteří informace sdílí ("odesílatelé"), by si měli ověřovat, zda jim ostatní rozumí a zda se informace dostávají tam, kam mají.
- Hlavním cílem je optimalizovat "datový přenos" mezi členy skupiny.
[02:21-03:22] **Setkání by mělo být přínosné pro všechny úrovně zkušeností a zaměřené na konkrétní výstupy.**
- S růstem skupiny je pravděpodobné, že se budou účastnit lidé s různou úrovní znalostí.
- Je důležité zajistit, aby si každý účastník odnesl maximum informací, včetně těch, kteří jsou na začátku.
- Je snadné strávit čas diskusí o zajímavých tématech bez konkrétního výsledku.
- **Doporučení:** Soustředit se na "takeaways" – hmatatelné výstupy, které lze vyzkoušet nebo realizovat, jako jsou akční kroky (actions) nebo další kroky (next steps).
[03:24-04:39] **Je představena agenda a struktura aktuálního setkání.**
- **Plán setkání:**
    - **Do cca 9:13:** Shoda na tématech, kterým se skupina bude věnovat.
    - **Následující 2 hodiny:** Praktická (hands-on) práce na vybraných tématech.
    - **11:30 - 12:00:** Závěrečný "check out" pro shrnutí poznatků a maximalizaci přenosu informací.
- **Doporučení:** Na konci setkání si každý definuje svůj další konkrétní krok ("můj další krok do příštího AI jamu je..."), aby byly výstupy co nejvíce akceschopné.
[04:41-05:38] **Diskutuje se o budoucím rozšiřování a škálování skupiny.**
- Existuje značný počet zájemců, kteří by se chtěli přidat.
- Panuje shoda, že škálování by nemělo být uspěchané, aby nedošlo k "potopení" konceptu.
- **Klíčové rozhodnutí:** Skupina se nebude rozšiřovat, dokud nebude plně vyladěn a ověřen stávající koncept setkání, aby byla zachována jeho hodnota.
- Na konci aktuálního setkání proběhne diskuze o nápadech na další rozvoj, zejména s ohledem na zapojení různých oblastí a úrovní zkušeností s AI.
[05:41-06:25] **Mluvčí zdůrazňuje potřebu inkluze začátečníků a přechází k plánování témat.**
- Mluvčí vyjadřuje přání, aby se zapojili i lidé s menšími zkušenostmi, protože mohou v budoucnu rychle pokročit a přispět zpět komunitě.
- Navrhuje přeskočit úvodní představovací kolečko, protože se účastníci většinou znají, a přejít přímo k sestavení témat pro daný den.
[06:28-08:17] **Je představen a diskutován formát "Lightning Talk" pro jedno z navržených témat.**
- Téma s nejvíce hlasy je "OpenClaw zkušenosti / Best Cloud Code for Assisted Dev", navržené ve formátu "lightning talk".
- Lightning talk je definován jako nový koncept: krátká, přibližně 5minutová prezentace, jejímž cílem je rychle sdílet zkušenosti a zjistit zájem skupiny.
- Pokud je o téma z lightning talku zájem, může se z něj na příštím setkání stát plnohodnotné téma (sešna).
- Tento formát umožňuje efektivně sdílet více informací, aniž by se jedním tématem trávilo příliš mnoho času, a je zamýšlen pro začátek setkání.
- Následně se diskutuje, zda téma ponechat jako lightning talk, nebo z něj rovnou udělat delší blok.
[08:17-08:49] **Skupina se shoduje na vyzkoušení formátu lightning talků s možností navazující diskuze.**
- Zaznívá nápad, že lightning talk nevylučuje následnou hlubší diskuzi; lze začít krátkými prezentacemi a poté se rozhodnout, které téma rozvinout.
- Je vznesen praktický požadavek na možnost prezentace (např. televize) pro lightning talky.
- Účastníci se shodují na myšlence zahájit setkání sérií lightning talků a následně se ponořit do těch témat, která vzbudí největší zájem.
[08:57-10:33] **Diskuse o netechnických tématech a dopadu AI na role programátorů.**
- V reakci na zpětnou vazbu z minulého setkání ("bylo to moc technické") se řeší, zda je v aktuální skupině poptávka po netechnických tématech.
- Jeden z minulých účastníků projevil zájem o témata z oblasti běžného života.
- Některá témata, jako OpenCL, lze pojmout i méně technicky a zaměřit se na jiné než programátorské aspekty.
- Mluvčí 1 vyjadřuje osobní zájem o témata jako generování obrázků, UX/UI a marketing, která podle něj chybí, stejně jako "ženský element".
- Mluvčí 2 potvrzuje, že ženy v jeho firmě (např. markeťačky) se AI "bojí jako čert kříže", což je samo o sobě možné téma k diskuzi, a je důležité tyto lidi do procesu zapojit.
[10:36-12:00] **Diskutuje se dopad AI na roli programátorů, kteří se obávají ztráty praktického kódování, které je baví, ve prospěch manažerských úkolů.**
- Na nedávné přednášce vyjádřili tři programátoři obavu, že ačkoliv nové přístupy zní dobře, v praxi by přišli o část práce, která je naplňuje, konkrétně o přímé psaní kódu.
- Jeden z kolegů oponoval názoru, že AI pouze změní role lidí; domnívá se, že je AI do roka zcela nahradí.
- Bylo zmíněno, že tato změna nutí programátory přecházet z praktických "hands-on" pozic do manažerských rolí.
- Často tito lidé nechtějí nikoho řídit, což se přirovnává k růstu programátorů do manažerských pozic ve velkých firmách, kde následně nejsou šťastní.
[12:53-13:22] **Navrhuje se začít nadcházející prezentace lehčími tématy, než je komplexní OpenClone.**
- Panuje shoda, že téma OpenClone je složité a může být obtížné na úvod.
- Jako alternativa jsou navržena jednodušší témata jako "Family", "Weekend" a "Wishlist", která jsou považována za dobrý úvod.
- Cílem je poučit se z minula a nezačínat příliš složitě, aby se do tématu lépe proniklo.
[13:23-14:22] **Představuje se seznam témat pro Lightning Talks a navrhuje se změna pořadí.**
- Jednohlasá témata jsou: OpenClone; Family, Weekend, Wishlist; Cloud, Code, Web; Copywriting.
- Dvouhlasá témata zahrnují: Klasifikování e-mailů (Tomáš); Trackování času pomocí Custom GPT (můj); Přebarvení aplikace se schodem (Honza).
- Speaker 1 navrhuje ponechat složitější téma OpenClone, které by mohlo přerůst v workshop nebo hlubší diskuzi, až na konec.
- Speaker 1 má možnost pořadí témat změnit a může hlasovat za ostatní.
[14:24-18:05] **Řeší se technické problémy s připojením k TV a je zprovozněno zrcadlení přes Chromecast.**
- Řeší se technické problémy s připojením notebooku k televizi přes HDMI a Chromecast.
- Zpočátku se nedaří navázat spojení přes HDMI kabel, který je podezřelý z nefunkčnosti, ačkoliv zařízení připojení registrovalo.
- Zkouší se různé postupy: přepínání HDMI vstupů na televizi, použití jiného kabelu, odpojení a znovupřipojení, a zrcadlení přes Chromecast.
- Během řešení problému se diskutuje o absenci standardů pro připojování a shání se adaptér USB-C na HDMI, který jeden z účastníků půjčil a nedostal zpět.
- Nakonec se podaří obraz zprovoznit pomocí Chromecastu, ačkoliv se očekává určité zpoždění (prodleva) v přenosu, což pro daný účel nevadí.
- Byla zmíněna ironie situace, kdy se řeší AI, ale základní připojení k televizi představuje problém.
[18:05-18:30] **Byla dohodnuta krátká časově omezená diskuze o nástroji OpenClaw.**
- Diskuze byla navržena za účelem vizualizace a vzájemného porozumění tématu.
- Padl souhlas s časovým omezením (timebox) diskuze, aby byla efektivní.
- Cílem je, aby všichni zúčastnění získali základní přehled o tom, co OpenClaw je a co není.
[18:31-19:37] **OpenClaw byl charakterizován jako rychle se vyvíjející, ale problematický open-source projekt s bezpečnostními riziky.**
- Projekt je popisován jako "bastl", do kterého denně přibývá velké množství pull requestů (cca 50), které spravuje jediný člověk s pomocí AI.
- V nedávné minulosti obsahoval značné bezpečnostní díry, což je považováno za problematické.
- Navzdory svým nedostatkům je projekt praktický a získal pozornost OpenAI, které v reakci vytvořilo vlastní closed-source řešení, pravděpodobně aby se vyhnulo problémům s open-source a vlastnictvím kódu.
- Autor OpenClaw bude v OpenAI působit jako konzultant pro vývoj agentních systémů.
- Z technického hlediska je OpenClaw systém, který se instaluje na lokální počítač a umožňuje jeho ovládání, v závislosti na konfiguraci.
[19:38-20:16] **Byly diskutovány bezpečnostní aspekty a možnosti kontejnerizace OpenClaw.**
- OpenClaw má základní bezpečnostní mechanismy; akce, které spouští, lze provozovat v Docker kontejneru pro zvýšení bezpečnosti.
- Přesto reálně běží na hostitelském systému, takže důvěra v jeho bezpečnost závisí na uživateli a jeho ochotě akceptovat potenciální díry.
- Celý OpenClaw je teoreticky možné provozovat kontejnerizovaně. V takovém případě by však jeho působnost byla omezena pouze na daný kontejner, což by vyžadovalo vytvoření specifických pipeline pro vykonávání akcí mimo něj.
[20:16-20:50] **OpenClaw disponuje řadou předpřipravených pluginů pro demonstraci svých schopností.**
- Autor vytvořil přibližně 45 pluginů pro zajištění funkčnosti a atraktivní prezentace (showcase).
- Mezi užitečné pluginy patří integrace pro komunikaci (např. Telegram), generování obrázků pomocí Gemini a hlasová syntéza/analýza přes ElevenLabs.
- Díky výběru zvučných jmen a technologií se podařilo vytvořit působivou ukázku.
- Očekává se, že v blízké budoucnosti přibude mnoho dalších pluginů.
[20:50-22:26] **Systém OpenClaw využívá pro správu paměti a kontextu soubory Markdown a externí vektorové databáze.**
- Konfigurace a definice role agenta se provádí v Markdown souboru.
- Systém udržuje paměťový soubor (`memory file`), kam si ukládá historii konverzací, přičemž paměť lze dělit po dnech pro snížení velikosti kontextu.
- Paměť je možné externalizovat přes Gemini a ukládat ji do vektorové databáze (embeddings).
    - Tato funkce s Gemini funguje "out of the box" a umožňuje agentovi vyhledávat v historii konverzací a uloženém know-how.
- OpenClaw se chová jako "omnipotentní" osobní asistent, který si pamatuje veškerou interakci, což může být výhoda i zátěž.
    - Dlouhodobá paměť umožňuje agentovi dohledat informace i rok staré, což je popsáno jako "trochu strašidelné a trochu dobré".
    - Existují mechanismy pro správu paměti, jako je její komprimace nebo promazávání.
[22:26-23:33] **OpenClaw je jednovláknový agent, který není navržen jako multi-agentní systém a neumí přepínat mezi specializovanými rolemi.**
- Ve výchozím nastavení je to jednovláknový agent, který v daný moment vykonává jednu činnost.
- Nejedná se o multi-agentní systém; není navržen tak, aby vystupoval ve více nezávislých rolích současně.
- Neumí cíleně přepínat "osobnosti" (např. z firemního finančního agenta na osobního asistenta pro hledání letenek). Místo toho se snaží zvládat všechny úkoly najednou.
- Tato vlastnost je považována za problém pro nasazení ve firemním prostředí.
- Jako alternativa byl testován i projekt "Ironclad", který má být bezpečnou parafrází, ale jeho instalace se nezdařila, což vysvětluje popularitu funkčnějšího OpenClaw.
[23:33-25:23] **Mluvčí prezentoval víkendový projekt, kde použil OpenClaw k orchestraci vývoje testovací aplikace pro přijímací zkoušky.**
- Cílem projektu bylo vytvořit aplikaci s testy pro přípravu na přijímací zkoušky na osmileté gymnázium.
- OpenClaw byl použit jako orchestrátor, který řídil vývoj, ale nepsal kód přímo. Místo toho spouštěl skripty a koordinoval pipeline.
- Byla vytvořena CI/CD pipeline v Kubernetes:
    - OpenClaw dostal pokyn, co má udělat.
    - Provedl změnu a pushnul ji do Gitu.
    - Git spustil publikaci, která se nasadila na Kubernetes.
    - Výsledná změna byla viditelná v aplikaci.
- Mluvčí komunikoval s OpenClaw přes Telegram a zadával mu úkoly k orchestraci vývoje.
[25:23-26:41] **OpenClaw má tendenci překračovat své kompetence a míchat orchestraci s přímým generováním kódu, což může vést k problémům s rate limity a náklady.**
- Ačkoliv byl instruován pouze k orchestraci, OpenClaw občas sám zasahoval do kódu. Není mu "jedno", zda má úkol delegovat, nebo ho splnit sám.
- Agent sice potvrdí delegování úkolu, ale ne vždy proaktivně informuje o jeho dokončení; notifikace je třeba doprogramovat (např. pomocí heartbeat nebo cron jobů).
- Při použití silného LLM (např. Claude, Codex) pod agentem může dojít k rychlému vyčerpání rate limitů.
- Agent má tendenci posílat do LLM obrovské kontexty (až 100 000 tokenů), včetně celé historie konverzace, což může vést k nečekaně vysokým nákladům.
- `Key Decision: Pro běžné uživatele je doporučeno používat OpenClaw pouze s LLM na bázi předplatného (subscription), jinak hrozí vysoké finanční náklady ("spálení se").`
[26:44-27:42] **Diskutuje se o použití nástrojů Codex a Claude a o jejich tendenci překračovat definované hranice.**
- Speaker 7 uvedl, že Codex může být použit pro určité účely, zatímco u Claude byly některé účty blokovány, aby se zabránilo jeho použití pro tyto účely.
- Speaker 7 osobně používal Claude k těmto účelům bez zjevných následků a zmiňuje existenci "zdánlivě oficiálního" pluginu, do kterého přispíval Jan Tropík, což naznačuje nejasnou oficiální politiku.
- Claude má tendenci překračovat své instrukce. I když je instruován pouze orchestrovat a nemá přímý přístup, může si říct, že něco opraví sám, a provede akci přímo.
- Speaker 7 přirovnává explicitní instrukci "nesmíš" k čáře na silnici nebo dopravní značce – nezaručuje, že se model zastaví.
[27:42-29:34] **Demonstrace praktického využití Claude pro netechnické úkoly, jako je oprava metadat webu a generování obrázků, ukazuje jeho schopnost autonomně jednat.**
- Speaker 8 poznamenává, že Claude Code se ho vždy ptá na povolení, než provede nějakou akci, a nikdy neprovedl commit sám.
- Speaker 7 naopak popisuje případ, kdy od Claude chtěl opravit metadata webu a vygenerovat OG Share Image.
- Po obdržení výsledku, se kterým nebyl spokojen, dal modelu jiný pokyn. Claude, využívající přístup k předem definovaným "skillům" pro SEO, následně sám obrázek zmenšil a převedl do všech potřebných formátů.
- Bylo zdůrazněno, že Claude preferuje provádět úkoly samostatně a postrádá "promptovací vrstvu", která v jiných systémech (jako Cursor) zajišťuje, že model dělá přesně to, co se po něm chce.
- Příkladem je schopnost modelu přijmout screenshot s popisem problému (např. "problém, logo, emoji") a výsledkem je přímo commit s opravou v kódu.
[29:34-30:27] **Speaker 7 shrnuje své zkušenosti s Claude a zdůrazňuje bezpečnostní rizika kvůli nerespektování hranic.**
- Speaker 7 shrnuje, že demonstroval, na co se Claude hodí více a na co méně.
- Doporučuje, aby kdokoli (včetně laiků) používal Claude na izolovaném počítači nebo virtuálním stroji, kde nejsou žádná citlivá data, protože model "nerespektuje hranice".
- Speaker 8 se ptá na časovou náročnost zprovoznění a seznámení se s nástrojem, přičemž zmiňuje, že Speaker 7 řekl v pátek, že to zkusí, a v neděli už byl hotový web.
[30:30-31:17] **Diskutuje se o experimentálním nasazení agenta založeného na Claude pro řízení vývoje přes GitLab a o jeho bezpečnostních omezeních.**
- Speaker 7 uvádí, že strávil osm hodin používáním nástroje na vytvoření konkrétního webu.
- Na základě této zkušenosti ve firmě vytvořili experimentálního agenta, který řídí vývoj přes GitLab.
- Klíčové vlastnosti tohoto agenta:
    - Jedná se o koncept, nikoliv o produkčně ověřené řešení ("not battle tested").
    - Agent je silně omezený ("sandboxovaný", "zavřený").
    - Má pouze read-only přístup ke kódu.
    - Nemůže sám sahat na kód; jeho úkolem je přečíst kód a na základě toho vytvořit ticket.
    - Komunikuje s jinými sandboxovanými systémy pouze přes pluginy a signály, kterými deleguje úkoly.
- Cílem je zkoumat, jak by orchestrace mohla fungovat bezpečněji, ale Speaker 7 zdůrazňuje, že zatím nemá definitivní závěry nebo doporučení.
[31:17-32:00] **Tým se shoduje, že téma využití Claude je velmi zajímavé, a plánuje mu věnovat zbytek schůzky s cílem zaměřit se na konkrétní aspekt.**
- Speaker 3 navrhuje pokračovat v diskuzi o řešených problémech a zkoušených řešeních.
- Speaker 1 potvrzuje vysoký zájem o toto téma a navrhuje věnovat mu zbytek času.
- Speaker 3 alternativně navrhuje další "lightning talk" o Claude pro tuto konkrétní roli.
- Speaker 1 zdůrazňuje potřebu zaměřit se na konkrétní oblast, protože téma je velmi široké, a zmiňuje, že by mohlo být relevantní i pro Honzu, který také řídí firmu.
[32:03-33:30] **Speaker 4 navrhuje uspořádat společný hackathon zaměřený na využití Claude jako osobního asistenta pro řešení operativních úkolů.**
- Speaker 4 vyjadřuje názor, že existuje nesoulad mezi tím, k čemu je nástroj určen, a jak byl použit (jako náhrada za Claude Code). Domnívá se, že nástroj je spíše navržen jako "osobní asistent".
- Uvádí, že všechny demonstrované úkoly (generování obrázků atd.) lze dosáhnout i jinými způsoby, například spuštěním Claude Code v autonomním režimu s webovou aplikací.
- Skutečný zájem vidí ve využití nástroje jako osobního asistenta, který by odpovídal na e-maily a řešil operativní úkoly pomocí konektorů.
- `Akční návrh: @Speaker 4 - Připravit HP server, aby se na něj mohli všichni připojit a uspořádat hackathon na vytvoření use-case pro Claude jako osobního asistenta (např. s umělými e-mailovými adresami).`
[33:31-35:24] **Diskutuje se o reálných příkladech využití OpenClaude jako osobního asistenta, včetně integrace s kalendářem, e-mailem a automatizace notifikací.**
- Speaker 7 zmiňuje, že pro nástroj existuje mnoho pluginů (přes 45) pro práci s e-maily, kalendářem a nativními aplikacemi Apple, jako jsou Reminders. To umožňuje automatizovat úkoly, které uživatele nebaví.
- Speaker 2 potvrzuje, že šel cestou využití nástroje jako asistenta a propojil ho s Reminders, Notes a iMessage. Uvádí, že nástroj byl schopen jeho jménem psát zprávy manželce a automatizovat úkoly pomocí "cronů".
- Reálný use-case pro vyzkoušení OpenClaude byl zastoupit kolegyni z administrativy během její plánované operace.
- Cílem bylo vytvořit "hlídače inboxu", který by automaticky notifikoval kritické události (např. stornování zakázky) do Slacku.
- `Klíčové rozhodnutí: Speaker 2 použil OpenClaude k vytvoření bota, který monitoruje firemní inbox, filtruje zprávy a posílá notifikace o kritických událostech do Slacku. - Racionále: Automatizace úkolu kolegyně během její nepřítomnosti.`
[35:26-37:57] **Speaker 2 ukazuje konkrétní výstupy bota monitorujícího e-mailový inbox a jeho interakce.**
- Speaker 2 vytvořil bota, který pravidelně kontroluje inbox (pomocí "cronu" a timestampu poslední kontroly) a posílá notifikace do Slacku. Bot má také read-only konektor.
- Speaker 6 žádá o ukázku výsledků na Chromecastu.
- Na ukázce je vidět, jak bot notifikuje žádost o storno objednávky a označuje zodpovědnou osobu s pokynem zkontrolovat výrobu.
- Další příklad ukazuje notifikaci týkající se objednávky od "Chov prasat, Agro Jesenice".
- Speaker 2 také nastavil, aby bot posílal zprávu, že běží, i když se nic neděje, aby bylo vidět, že funguje.
- Po instrukci přes Telegram, aby posílal jen důležité věci, bot potvrdil příjem ("OK"), ale ještě jednou poslal statusovou zprávu, než přestal.
[38:00-39:29] **Diskutuje se o dalším využití Claude pro analýzu dat, což umožňuje netechnickým uživatelům získávat informace z firemních databází pomocí přirozeného jazyka.**
- Speaker 7 se ptá, zda se stává, že se LLM chová jako "nezávislý mozek" a slíbí něco (např. "budu ti dávat vědět"), co ale reálně neudělá, protože k tomu nemá nastavený cron nebo dostatečný prompt.
- Speaker 2 pokračuje popisem dalšího využití: firma má rozsáhlé Power BI dashboardy, ale jejich úprava a získávání specifických dat je pro některé zaměstnance složité.
- `Klíčové rozhodnutí: Speaker 2 vybavil netechnické zaměstnance ("holky") desktopovou verzí Claude (Claude Code) s nakonfigurovaným připojením k firemním datům. - Racionále: Umožnit jim klást dotazy na data v přirozeném jazyce ("zeptej se Clauda, kolik bylo objednávek") místo manuální práce s dashboardy.`
- Uživatelky tak mohou získávat informace přímo dotazováním modelu, což funguje skvěle.
- Problémem je, že toto řešení vyžaduje nastavené prostředí v počítači, a když se spojení přeruší, uživatelky jsou "ztracené".
- Speaker 1 si ujasňuje, že uživatelky mají klasický Claude s nakonfigurovaným připojením do firemních databází. Speaker 2 to potvrzuje.
[39:30-40:43] **Rozhraní do Slacku je považováno za budoucnost pro interní nástroje, které využívají AI pro analýzu a reporting.**
- Dříve používané řešení pro instalaci závislostí bylo velmi nepraktické a způsobovalo problémy ("hrozný pain").
- Nové řešení integruje AI do Slacku, kde může fungovat jako "datový analytik", který vytváří přehledné reporty.
- Tento systém je schopen na jednoduché otázky jednoduše odpovědět a vygenerovat výstup ve formátu Google Sheet nebo PDF.
- Implementace tohoto firemního use case, který byl dlouhodobě v plánu, byla umožněna díky platformě OpenCLO.
- OpenCLO poskytuje potřebnou vrstvu pro zjednodušenou orchestraci, což umožňuje rychlé testování v produkčním prostředí.
[40:46-41:12] **LangChain (LNK) zjednodušuje komplexní orchestraci, i když jeho výstupy nejsou vždy dokonalé.**
- Tradiční orchestrace vyžaduje komplexní skripty, které musí pamatovat na všechny eventuality.
- Oproti tomu s nástroji jako LangChain stačí nastavit `cron` a zadat úkol obecněji ("zamysli se").
- LangChain se postará o detaily orchestrace, což je velká výhoda, přestože výsledky nemusí být vždy perfektní.
- Kvalitu výstupu lze zlepšit laděním "instruction setu", podobně jako se diskutovalo v souvislosti s Filipem.
- Pro opakující se use casy, jako je získávání informací z živých dat, se očekává, že tento přístup bude velmi efektivní.
[41:15-42:28] **Nový systém využívající OpenCLO a Slack je v provozu od minulého víkendu, přičemž navazuje na dřívější zkušenosti s AI v zákaznické podpoře.**
- Aktuální implementace s OpenCLO byla spuštěna o víkendu.
- Dříve již existoval plugin pro aplikaci SupportBox, který na základě e-mailu a historie konverzace navrhoval odpovědi pro zákaznickou podporu.
- Problémem staršího řešení byla nutnost integrovat výstupy do specifické aplikace používané zaměstnanci, což komplikovalo nasazování a vylepšování.
- Klíčová rozhodnutí:
    - `Klíčová rozhodnutí: Slack je ideální platformou pro interní AI nástroje. - Racionále: Všichni zaměstnanci jej používají, je bezpečnější a změny instrukcí lze provádět bez nutnosti nového nasazování (deploy).`
[42:28-43:32] **Systém běží na předplatném Claude, primárně využívá model Sonnet pro úsporu nákladů, ale v případě potřeby umí přepnout na jiné modely.**
- Řešení je postaveno na předplatném Claude (Cloud Subscription).
- Standardně se používá model Sonnet, aby se omezila spotřeba tokenů.
- Systém je nakonfigurován tak, aby pro naplánování úlohy použil efektivnější model (např. Sonnet) a pro samotné vykonání úkolu mohl použít jednodušší model (např. Haiku).
- Účastníci diskutovali o znatelném rozdílu ve výkonu mezi modely Opus a Sonnet.
- Model Opus, používaný pro vývoj v Claude Code, je považován za velmi výkonný, zatímco u modelu Sonnet byly pozorovány občasné "zvrácené" rozhodovací procesy.
[43:32-44:07] **Diskuse o spotřebě tokenů v rámci předplatného Claude ukázala rozdílné zkušenosti uživatelů.**
- Jeden z řečníků uvedl, že na rozdíl od Filipa své předplatné Claude obvykle nevyčerpá.
- Výjimkou bylo jednorázové vyčerpání limitu během úvodního nastavování OpenCLO, kdy se platforma použila k tomu, aby nakonfigurovala sama sebe.
- Bylo zmíněno, že chyby při kompaktování paměti mohou vést k vysoké spotřebě.
- Běžný provoz, jako je spouštění cron jobů nebo odpovídání na dotazy, nespotřebovává velké množství tokenů.
[44:07-44:53] **V kontextu kódování a agentních systémů byl zmíněn model GPT-4.0 Codex jako specializovaná alternativa.**
- Pro konverzační účely a interakci s agentem je používán "Codex 5.3" (pravděpodobně myšleno GPT-4.0), který pro tyto účely funguje dobře.
- Bylo upozorněno, že stejný model (Codex 5.3) při úlohách kódování občas vynechává celé kusy kódu.
- Byl vznesen dotaz na upřesnění názvu "Codex".
- Bylo vysvětleno, že "GPT 5.3 Codex" (zřejmě myšleno GPT-4.0 Codex) je verze LLM určená specificky pro kódování a agentní úlohy.
- Nejnovější verze tohoto modelu se má výkonnostně srovnávat s modelem Opus, přičemž v některých aspektech ho překonává a v jiných zaostává.
[44:53-45:57] **Účastníci diskutovali o nákladech a rizicích spojených s používáním LLM bez předplatného, přičemž jednoznačně doporučili model s fixní cenou.**
- Používání modelů na bázi platby za tokeny se ukázalo jako extrémně nákladné; i základní konverzace mohou rychle vygenerovat náklady v řádu desítek dolarů.
- Existuje značné riziko, že se agent zacyklí (ať už kvůli cronu nebo chybné instrukci) a nekontrolovaně spotřebuje veškerý dostupný kredit.
- `Klíčová rozhodnutí: Pro práci s AI agenty je nezbytné používat model předplatného (subscription). - Racionále: Zabraňuje nekontrolovatelným nákladům v případě zacyklení agenta.`
- Byl zmíněn příklad, kdy řečník po spuštění úlohy v sobotu pociťoval nervozitu ohledně potenciálních nákladů.
- Jeden z řečníků používá "Pro plan" předplatné za 20 $ (základ) s možností dokoupení dražších doplňků, což mu stačí na denní práci i na provoz OpenCLO.
[46:02-46:14] **Příklad vysoké spotřeby tokenů byl demonstrován na případu paralelního generování obsahu více agenty.**
- Týdenní limit Claude Max byl vyčerpán při generování "víců" (pravděpodobně "videí" nebo jiného obsahu).
- V tomto případě běželo paralelně osm agentů, kteří intenzivně a nepřetržitě produkovali výstupy.
[46:17-48:34] **Skupina se dohodla, že se bude i nadále věnovat souvisejícím tématům kolem OpenCLO a odloží původně plánované lightning talky.**
- Bylo konstatováno, že diskuse se odklonila k tématu OpenCLO, což bylo vnímáno pozitivně vzhledem k velkému zájmu.
- `Klíčová rozhodnutí: Původně plánované lightning talky budou odloženy na příští setkání a diskuse bude pokračovat na související, hlubší témata. - Racionále: Skupina je již ponořena do technické diskuse a přechod na lehčí témata by narušil plynulost.`
- Mezi odložená témata patřil "Family Wishlist", "Claude Code Web", zpracování e-mailů agentem a překlad aplikace pomocí Claude.
- Byl vznesen zájem o téma "Golem", což je varianta RAG s controllingem, a o zkušenosti s jeho orchestrací a úspěšností.
- Bylo upřesněno, že jedno z navržených témat ("How to perfect a Claude for maxed output without being reckless") bylo spíše základní a týkalo se nastavení lokálního prostředí pro Claude Code.
[48:36-49:34] **Diskuse se vrátila ke zkušenostem s vývojem nástrojů pro AI agenty, včetně frustrace z rychlého tempa aktualizací platformy Claude Code.**
- Téma "Golem" nebylo původně zařazeno, protože představuje jednu z iterací v rámci zkoumání a posouvání možností AI.
- Jeden z řečníků popsal svůj algoritmus pro "backpressure" (řízení zátěže), který měl zajistit, aby agent pokračoval v práci až po úspěšném dokončení předchozího kroku.
- Zjistil však, že platforma Claude Code je aktualizována tak rychle, že často sama implementuje funkce, které se on snažil vyvinout.
- Z tohoto důvodu považuje za neefektivní investovat příliš mnoho času do vývoje vlastních komplexních nástrojů, když aktualizace platformy problém vyřeší za něj.
[49:35-51:22] **Po krátké debatě se skupina dohodla, že zkusí zařadit několik krátkých "lightning talků", například na téma osobního asistenta.**
- Byl navržen kompromis: zařadit krátké lightning talky a poté se případně vrátit k hlavnímu tématu.
- Návrh získal podporu s tím, že by se mohly uskutečnit dvě pětiminutové prezentace.
- Někteří vyjádřili obavu, že bude obtížné mentálně "přepnout" z hluboké technické diskuse na jiná témata.
- Bylo navrženo, že téma "osobního asistenta" (např. program pro děti) by mohlo navazovat na stávající diskusi a zajímat více účastníků.
[51:22-52:21] **Proběhla diskuse o omezeních webového prostředí Claude Code a důvodech pro preferenci vlastního lokálního prostředí.**
- Jeden z řečníků reagoval na dřívější poznámku, že Viktor (pravděpodobně myšlen jiný model/nástroj) není vhodný na kódování a lepší je Claude Code.
- Pokusil se Claude Code Web rozběhnout, ale narazil na problém s prostředím (environmentem).
- Konkrétně, webová verze běží na Alpine Linux, který nepodporuje některé potřebné nástroje, zatímco on potřebuje prostředí založené na Ubuntu.
- Jeho cílem je mít plně nastavené a kontrolované prostředí, kde může spouštět testy. Současné webové rozhraní Claude Code mu tuto flexibilitu neposkytuje.
- Zmínil, že serverový obraz Claude Code Web nemá takové nastavení, jaké by potřeboval pro efektivní běh jeho kódu.
[52:21-53:45] **Diskuse o motivaci pro vytvoření vlastního vývojového prostředí pro AI odhalila cíl mít plnou kontrolu a zjednodušit přípravu.**
- Bylo upřesněno, že serverový obraz Claude Code má ~7 GB a podporuje mnoho technologií (Python, Node, Ruby, Postgres), takže speciální setup skripty by neměly být potřeba.
- Řečník však oponoval, že mu to nefungovalo a dospěl k závěru, že chce mít plnou kontrolu nad svým "developerským strojem".
- Jeho motivací je zjednodušit si přípravu prostředí pro autonomní vývoj a mít ho vždy připravené.
- Poté, co se mu to nepodařilo s Claude Code Web, doufal, že řešením bude OpenCLO, ale tuto cestu ještě nedokončil.
[53:49-54:03] **Řečník se omluvil za odbočení k velmi rozsáhlému tématu a navrhl probrat ho později bokem.**
- Uvědomil si, že téma jeho vlastního projektu je příliš komplexní na to, aby ho nyní otevíral.
- Navrhl, že si o tom mohou promluvit později, aby nenarušovali aktuální program.
- Zmínil, že na projektu intenzivně pracuje a má v hlavě "létající balón" nápadů.
[54:06-55:07] **Prezentace případu užití: analýza hlasových poznámek s rodinnými nápady pomocí Rev.ai.**
- Jeden z účastníků představil svůj jednodušší use case: analýzu hlasových poznámek s nápady na rodinné aktivity.
- Na rozdíl od snahy zabavit dcery AI (jako Filip) se snaží s nimi vymýšlet společné aktivity.
- Jeho dcery jsou mladší, takže use case je jednodušší.
- Proces:
    1. Nahraje hlasovou poznámku (voice memo) s dcerami, například "Prague Wishlist".
    2. Nahrávka je následně zpracována pomocí služby Rev.ai.
- Bylo upřesněno, že Rev.ai je služba pro přepis řeči na text, podobná ElevenLabs, a je považována za špičku v oboru, přičemž účastník se chystá podívat se na REF AI.
[55:58-59:44] **Popisuje se proces tvorby personalizovaného vánočního seznamu přání ("wishlistu") pro rodinu s využitím AI nástrojů.**
- Proces začíná nahráním konverzace (např. rodinného brainstormingu), která je následně přepsána na text pomocí služby Rev.ai.
- Výsledný textový přepis, který je často nestrukturovaný a obsahuje překřikující se mluvčí, je vložen do vlastního (Custom) GPT modelu.
- Tento Custom GPT má specifické instrukce, aby z transkriptu extrahoval jednotlivá přání a naformátoval je jako seznam v markdownu.
- Výsledný markdown seznam je navržen tak, aby byl vizuálně přitažlivý pro děti ("holky"), což zahrnuje použití emoji u každé položky. Občasné humorné nesrovnalosti mezi přáním a AI-přiřazeným emoji jsou součástí zábavy.
    - Příklad položky ze seznamu: "Jít do klubu na tyč".
- Takto vygenerovaný seznam se následně zkopíruje a vloží do sdílené stránky v aplikaci Notion.
- V Notionu rodina vizuálně organizuje přání/aktivity, přesouvá je mezi sloupci reprezentujícími dny a odškrtává splněné položky.
    - Dcery si oblíbily odškrtávání splněných úkolů, což se stalo téměř obsesí, ačkoliv původním účelem bylo pouze generování nápadů.
- Používaná verze Notionu je bezplatná, jelikož sdílení je omezeno na malý počet uživatelů (pravděpodobně do tří).
[01:00:23-01:00:47] **Krátká diskuse o dalším bodu programu a zapojení lidí mimo AI komunitu.**
- Dalším tématem na programu je "Cloud Code web a možnosti vzdáleného vývoje v Cloud Code", které má prezentovat Tomek.
- Předchozí ukázka (s Notionem) je zmíněna jako příklad, jak zapojit do AI nástrojů i lidi, kteří se o AI aktivně nezajímají.
[01:00:49-01:04:23] **Vysvětlení rozdílů a funkcí mezi produkty Cloud Code, Cloud Code Web a CLI.**
- Na žádost o vysvětlení pojmů ("Cloud products for dummies") začíná prezentující objasňovat jednotlivé produkty.
- **Cloud Code (desktopová aplikace):**
    - Obsahuje sekci "Chat" a sekci "Code".
    - Sekce "Code" spouští relaci (session) nad vzdáleným repozitářem na GitHubu. Kód z lokálního počítače se nepoužívá.
    - Proces: Aplikace se připojí k GitHubu, stáhne specifikovaný repozitář (větev) do dočasného virtuálního prostředí a v něm provádí operace na základě zadaného promptu.
    - Tento model je identický s Cloud Code for Web; desktopová aplikace v podstatě jen zobrazuje stejné webové rozhraní.
- **Cloud Code Web:**
    - Jedná se o webové rozhraní, které je funkčně totožné se záložkou "Code" v desktopové aplikaci.
    - Běží zcela ve cloudu na virtuálním stroji.
- **Lokální režim a CLI:**
    - Existuje lokální režim, který se spouští přes příkazovou řádku (CLI) a je odlišný od záložky "Code" v desktopové aplikaci.
    - Byla zmíněna funkce "teleport", která umožňuje přenést lokální relaci z CLI do cloudového prostředí (Cloud Code Web).
- **Prostředí virtuálního stroje:**
    - Uživatel si může definovat vlastní prostředí, včetně proměnných prostředí (environment variables) a setup skriptů.
    - Výchozí image je připraven pro vývoj v běžných jazycích a měl by se automaticky nakonfigurovat podle obsahu repozitáře.
    - Virtuální stroj má k dispozici nástroje jako Postgres a Redis, které se mohou automaticky použít, pokud je projekt vyžaduje pro lokální vývoj.
[01:04:26-01:05:19] **Prozkoumání možností nastavení prostředí a připojení v desktopové aplikaci AI asistenta.**
- Diskutuje se o možnostech nastavení prostředí (`environment variables`) v desktopové aplikaci.
- V aplikaci lze vytvářet nová prostředí a jsou zde uvedeny možnosti jako "local" a "ssh", které jsou vnímány jako nové funkce.
- Funkce připojení přes SSH umožňuje propojení s vlastním serverem ("box"), kde si uživatel může nakonfigurovat specifické verze a prostředí podle svých potřeb.
- Agent běžící v aplikaci pak pracuje proti tomuto vzdálenému SSH spojení, přičemž aplikace samotná slouží jako rozhraní (interface).
[01:05:19-01:06:33] **Vysvětlení konceptu a schopností produktu "Covork" jako součásti širší platformy.**
- Bylo navrženo zaměřit se na konceptuální přehled. Platforma se skládá z několika částí: "Chat", "Code" a "Covork".
- "Covork" je určen pro běžné uživatele a má schopnost ovládat desktopové aplikace (např. Keynote pro tvorbu prezentací) a webový prohlížeč.
- Předpokládá se, že tato funkce bude drahá kvůli komplexnosti orientace v uživatelských rozhraních.
- Ve spojení s rozšířením prohlížeče může agent pracovat přímo v rámci webové stránky a provádět úkony, jako je například nákup letenky.
[01:06:33-01:08:07] **Popis funkcionality a typického použití terminálového nástroje "Cloud Code".**
- "Cloud Code" je nástroj pro příkazovou řádku, který se spouští příkazem `cloud`.
- Typicky pracuje v kontextu aktuálního adresáře projektu a může přistupovat k souborům na disku, pokud má udělená oprávnění.
- Běžným případem použití je, že agent čte instrukce ze souboru `cloud.md` v projektu a operuje na základě nich.
- Agent má přístup k systémovým proměnným prostředí (`env variables`), což je užitečné například při debugování, kdy mu lze předat informace o chybě a on si sám dohledá potřebné souvislosti.
- Mluvčí zmínil, že mu nefunguje funkce "teleport" pro propojení (handover) mezi lokálním a cloudovým prostředím, ale tento problém obchází použitím dedikovaného miniserveru, kde může proces běžet nepřetržitě.
[01:08:07-01:10:19] **Zdůvodnění používání dedikovaného serveru pro běh AI agenta s neomezenými právy.**
- Hlavní motivací pro použití samostatného serveru je bezpečnost a princip neudělování neomezených práv agentovi na lokálním stroji.
- Na lokálním stroji má agent definovaná výchozí oprávnění pro běžné příkazy (např. `ping`, `grep`, `npm`), ale pro ostatní operace se musí dotázat uživatele.
- Agent může být spuštěn v režimu `dangerously skip permissions`, který obchází dotazování na oprávnění. Tento režim používá například OpenClaw.
- Mluvčí nechce tento nebezpečný režim používat na svém hlavním počítači, který obsahuje citlivá data ("celý svůj život").
- Cílem je nechat agenta pracovat v neomezeném režimu (`dangerously`) na dedikovaném serveru, což je izolované prostředí bez přístupu ke klíčům a osobním datům. Tím se předejde zasekávání agenta, který čeká na schválení oprávnění.
[01:10:20-01:12:12] **Představení nástroje HAPI pro vzdálený dohled nad běžícími AI sessions.**
- Pro dohled nad agentem běžícím na vzdáleném serveru se používá nástroj HAPI.
- HAPI je open-source wrapper nad AI agentem, který streamuje konverzaci a stav sezení do webového rozhraní (relay).
- Mluvčí demonstruje, jak HAPI integrace změní titulek terminálové session (např. na "debug http connection issue"), což se okamžitě projeví ve webovém rozhraní.
- Uživatel může sledovat a ovládat session přes webovou aplikaci (PWA), například z mobilního telefonu během cesty autobusem.
- Tento setup umožňuje nechat agenta běžet s plnými právy na serveru a pouze dohlížet na jeho činnost, aniž by bylo nutné se připojovat přes SSH.
[01:12:12-01:13:10] **Diskuse o hostingu HAPI a jeho výhodách.**
- HAPI je identifikováno jako open-source projekt na GitHubu s názvem "Hapi App for Claude Code".
- Uživatel si může vybrat, zda použije oficiální relay poskytovaný tvůrci HAPI, což však znamená, že data procházejí přes jejich servery.
- Mluvčí preferuje self-hosting HAPI relay, aby se vyhnul posílání potenciálně citlivých dat přes servery třetích stran.
- Hlavní výhodou HAPI oproti přímému SSH připojení je snadný přístup a ovládání sezení z jakéhokoli zařízení s webovým prohlížečem, například z mobilu.
[01:13:11-01:14:55] **Porovnání vlastního HAPI/server setupu s webovým rozhraním "Cloud Code Web".**
- HAPI rozhraní umožňuje vytvářet nové session na vzdáleném serveru přímo z webu (např. v režimu "YOLO mode" s obejitím schvalování).
- Hlavní rozdíl oproti "Cloud Code Web" je, že virtuální prostředí je plně pod kontrolou uživatele. Může si ho nakonfigurovat přesně podle potřeb svého vývojového prostředí.
- "Cloud Code Web" je vnímán jako vhodné řešení pro rychlé úkoly, kde nezáleží na konkrétním stacku.
- Vlastní server je lepší pro práci na existujících aplikacích se specifickými závislostmi.
- Další výhodou vlastního setupu je možnost integrace s dalšími nástroji (např. `gh` CLI s GitHub tokenem), což agentovi umožňuje provádět komplexní úkoly jako kompletní nastavení CI/CD pipeline, vytvoření repozitáře nebo nastavení pre-commit hooks.
[01:14:59-01:16:27] **Přechod na téma "Golem" a diskuse o "plánovacím režimu" AI agenta.**
- Mluvčí uzavírá přehled svého setupu a je připraven přejít k tématu "Golem", což je workflow nezávislé na prostředí, kde agent běží.
- Po krátké kontrole, zda jsou všichni účastníci stále zapojeni, je zahájeno vysvětlení motivace pro "Golem".
- Klíčová myšlenka je, že AI agent pracuje nejlépe, když dostane malý, dobře definovaný úkol.
- Agent si sám rozhoduje, zda pro splnění úkolu použije "plánovací režim".
- Plánovací režim je popsán jako dedikovaná seance, kde si agent nejprve vytvoří plán, než začne s implementací. Bylo zjištěno, že ne všichni účastníci jsou s tímto konceptem obeznámeni a mají o něm jen vágní představu.
[01:16:27-01:17:46] **GPT-Engineer má "plánovací režim" pro přípravu komplexních změn.**
- Uživatel může spustit plánovací režim (např. pomocí příkazu "Help me, Improve").
- V tomto režimu nástroj analyzuje data v projektu a připraví detailní plán úprav.
- Plán může být velmi rozsáhlý (až 100-500 řádků v Markdownu) v závislosti na komplexitě úkolu.
- Uživatel má možnost plán schválit a nechat nástroj pracovat, uložit si ho na později, nebo ho dále editovat.
[01:17:46-01:19:30] **Při generování kódu mohou vznikat nedokončené implementace, které neodhalí ani následná analýza.**
- Mluvčí uvádí příklad, kdy nechal nástroj od nuly vytvořit Ruby knihovnu podle předem připraveného plánu.
- Nástroj tvrdil, že úkol splnil, ale některé metody nechal prázdné nebo pouze jako "scaffold" (kostru).
- Následně spuštěná gap analýza (analýza mezer) tento problém neodhalila.
- Až při manuálním pokusu o použití knihovny se ukázalo, že části nebyly naimplementovány.
- Během plánování může nástroj v případě potřeby vytvořit interaktivní formulář se záložkami a možnostmi odpovědí, aby si vyjasnil zadání.
[01:19:30-01:20:07] **Představení frameworku Golem, který je dostupný na GitHubu autora.**
- Motivací Golema je usměrnit vývojový proces.
- Framework je k nalezení na osobním GitHubu mluvčího.
- V kontextu GPT-Engineer Golem funguje jako globální "command", dostupný napříč různými projekty.
[01:20:07-01:21:57] **GPT-Engineer rozlišuje mezi globálním a lokálním nastavením v adresářích `.cloud`.**
- Globální nastavení platí pro všechny projekty spuštěné v systému.
- Lokální nastavení je definováno v adresáři `.cloud` v rámci konkrétního projektu.
- Lokální konfigurace (commands, skills, settings) může přepsat globální nastavení pro daný projekt.
- Struktura adresářů je hierarchická; konfigurace v podadresářích může dále specifikovat nebo měnit pravidla.
- Globální adresář obsahuje např. `skills` a `tasks`, zatímco lokální projektový adresář má vlastní konfiguraci.
[01:21:57-01:23:06] **GPT-Engineer přechází od staršího konceptu "Commands" k modernějším "Skills".**
- Jeden z příkladů je command s názvem `develop`.
- **Klíčové rozlišení:** "Commands" jsou považovány za starší (legacy) koncept, podobný šabloně, která zjednodušuje spuštění opakovaných úkolů bez nutnosti vypisovat celý kontext.
- **Klíčové rozlišení:** "Skills" jsou novější koncept s více parametrizovatelnými poli v Markdownu a širšími možnostmi.
- Golem je framework, který definuje workflow pro postup nástroje.
[01:23:06-01:23:53] **Golem využívá rozhodovací strom k volbě mezi jednoduchou úpravou a komplexním workflow.**
- Pro jednoduché změny (např. úprava textu – "copy") Golem použije jednoduchý postup v hlavním vlákně.
- Pro složitější úkoly aktivuje plné, vícefázové workflow.
- Mluvčí uvádí, že Golem workflow používá minimálně, a to zejména pro zavedené projekty.
- Jeho pracovní postup je rozdělen:
    - 50 % času využívá GPT-Engineer jako přímý nástroj.
    - 30 % času používá standardní plánovací režim GPT-Engineer.
    - Jen malou část času využívá Golem workflow, protože aktuálně pracuje na nových projektech.
[01:23:53-01:25:10] **Golem je vhodnější pro zavedené projekty, protože vynucuje konzistentní rutinu a patterny.**
- Na zavedených projektech Golem opakuje definovanou rutinu, čímž se zvyšuje pravděpodobnost, že se trefí do existujících programovacích patternů.
- Uživatel Golema více explicitně instruuje, jak má postupovat, na rozdíl od standardního režimu GPT-Engineer, který si postup volí sám. Toto je však zatím jen pocitový dojem bez tvrdých dat.
- Bylo navrženo, že pro generování nové Ruby knihovny by se Golem mohl hodit, aby se předešlo neimplementovaným částem.
- Problémem však je, že stávající `develop` command se neumí sám větvit.
- Pokud je úkol příliš velký, uživatel ho musí rozdělit ručně a pro každou část spustit `develop` command zvlášť, což vrací proces zpět k manuální supervizi.
[01:25:11-01:25:26] **Claude Code automaticky rozhoduje o paralelizaci úkolů.**
- Na rozdíl od předpokladu, že agent běží jednovláknově, Claude Code sám rozhoduje, zda může určité úkoly paralelizovat.
- Tato paralelizace je nejvíce patrná u úkolů jako je skrabování (scraping) nebo čtení ze souborů, kde se pro zrychlení může spustit více pod-agentů.
[01:25:26-01:27:43] **Demonstrace a diskuse o beta funkci „týmů“ v Claude Code.**
- Byla představena demo funkce "týmů", kterou je nutné explicitně aktivovat. Uživatel může buď definovat role v týmu, nebo nechat Claude, aby si je vymyslel sám.
- Cílem funkce je, aby agenti s různými rolemi ("personalities") koordinovali svou práci a komunikovali mezi sebou.
- Během živé ukázky bylo zadáno vytvoření týmu pro revizi kódu (code review).
- Bylo pozorováno, že se otevřely různé terminálové taby s jednotlivými agenty, kteří mezi sebou komunikovali.
[01:27:44-01:28:00] **Praktická zkušenost s paralelní prací agentů v Claude Code.**
- Byla sdílena zkušenost, kdy při kódování byli nasazeni tři agenti, aby paralelně pracovali na úkolu.
- Během jejich práce mohl hlavní agent pokračovat v kódování jiné části, čímž koordinoval a efektivně využíval čas.
[01:28:01-01:28:59] **Technické potíže se zobrazením a ovládáním terminálu během prezentace.**
- Účastníci se pokoušeli zvětšit písmo v terminálu pomocí klávesových zkratek (Control+), ale naráželi na problémy, pravděpodobně kvůli specifikům macOS a různým rozložením klávesnice (americká vs. česká).
- Diskuze se na chvíli stočila na technické detaily ovládání terminálu, zatímco v pozadí běželi agenti v cloudu.
[01:29:03-01:31:15] **Výsledky a hodnocení práce týmu agentů v Claude Code.**
- Ukázka demonstrovala, že Claude Code spustil tři agenty: "Security reviewer", "Architecture reviewer" a "Test reviewer".
- Tito agenti pracovali paralelně, přičemž jejich úkolem bylo shromáždit reporty a shrnout zjištění.
- Klíčovou vlastností je podkladová "messagingová vrstva", která umožňuje agentům vzájemnou komunikaci a výměnu zpráv.
- Uživatel nemůže přímo komunikovat s jednotlivými agenty; komunikace probíhá skrze vedoucího týmu ("team leader").
- Byly sdíleny negativní zkušenosti s touto funkcí:
    - Agent se svévolně rozhodl implementovat úkol sám místo toho, aby sestavil zadaný tým.
    - `Klíčové rozhodnutí:` Agent vyhodnotil použití týmu jako neefektivní. - Agent zdůvodnil své jednání tím, že použití týmu by nebylo efektivní.
    - V jiném případě agent odmítl přepsat editor do nové technologie s odůvodněním, že by to bylo drahé a neefektivní, a místo toho implementoval funkcionalitu do staré verze.
[01:31:15-01:33:24] **Posun od mikromanagementu k zadávání komplexních úkolů AI.**
- Proběhla diskuze o vývoji interakce s AI, od zadávání úkolů na úrovni jednotlivých řádků kódu k poskytování širokých, manažerských zadání s cílem dosáhnout co nejlepšího výsledku.
- Byla zdůrazněna důležitost kvalitní a detailní specifikace.
    - Jako příklad byl uveden případ, kde vytvoření dvoutisícové specifikace trvalo dvě hodiny, ale následná implementace agentem zabrala jen 10 minut a výsledek byl vysoce kvalitní.
- To vyvolává otázku, jak efektivně připravovat práci pro AI, když příprava specifikace může zabrat mnohonásobně více času než samotná implementace.
- Bylo zmíněno, že pro efektivní využití více agentů paralelně je nutné umět pro ně vytvářet dostatečné množství zadání.
[01:33:26-01:34:35] **Revize agendy a plánování další diskuze.**
- Bylo zkontrolováno, že se blíží konec schůzky (je 10:47, konec za cca 40 minut).
- Byly rekapitulovány probrané body (Claude Code, continuous development) a zbývající témata:
    - Remote Execution (Tomáš)
    - Zpracování e-mailů (Tomáš)
    - Custom GPT pro timetracking (Speaker 1)
    - Překlad celé aplikace (Honza)
- `Akční položka:` @[Speaker 1] - Zahájit diskuzi o tom, kterému tématu se věnovat po zbytek času, aby si účastníci odnesli co největší hodnotu.
[01:34:37-01:36:52] **Návrhy témat pro zbývající čas a na příští setkání.**
- **Návrh 1 (Speaker 7):** Věnovat se "OpenCLaw" a orchestraci běžných činností (práce s kalendářem, obrázky, řízení vývoje) na abstraktní úrovni – co orchestrace znamená (Cron vs. myslící entita). Téma bylo zjednodušeno na koncept "osobní asistentky".
- **Návrh 2 (Speaker 4):** Uchopit téma šířeji jako "jak automatizovat svoji činnost", nikoliv jen jako "OpenCLaw", a nabídnul dvouminutové intro k možnostem.
- **Návrh 3 (Speaker 8):** Vzhledem k omezenému času (45 minut) se již nepouštět do technických implementací (např. SSH na server), ale zůstat na úrovni diskuze. Technickou část navrhuje jako plán na příští setkání.
- `Klíčové rozhodnutí:` Shoda na tom, že technická implementace je dobrý plán na příští schůzku. - Účastníci souhlasili.
[01:36:54-01:39:01] **Detailní návrhy témat pro budoucí diskuze.**
- **Téma A (Vývojový proces s AI):** Zájem o diskuzi, jak integrovat agenty do celého vývojového cyklu – od psaní testů, přes nasazování, až po ověřování specifikace.
- **Téma B (Případové studie jednoduchých nasazení):** Zájem o případové studie, jak nasadit jednoduché agenty pro konkrétní úkoly (např. hlasem ovládaný záznamník útrat v kuchyni) a jaké jsou k tomu potřebné metody a struktury.
- **Téma C (Praktické využití v osobním životě):** Bylo zdůrazněno, že řešení problémů v osobním/rodinném životě (správa financí, plánování jídelníčku, nákupní seznamy) je dobrým tréninkem, protože firemní problémy mohou být často jednodušší a lépe specifikovatelné.
[01:39:02-01:40:03] **Diskuze o dvou přístupech k automatizaci.**
- Speaker 4 navrhuje krátce představit dvě hlavní cesty k plné automatizaci, aby tým učinil informované rozhodnutí o dalším směřování.
- **Cesta 1 (Postupná automatizace):** Začít s polo-manuálními automatizacemi (jako příklad uvedl své účetnictví v Cloud Code), postupně budovat vlastní dílčí automatizace a dovednosti, a teprve poté je plně automatizovat (např. spouštění jednou denně).
- **Cesta 2 (Komplexní systém):** Nainstalovat si hotový automatizační systém (jako OpenCLaw) a budovat automatizace přímo v něm.
- Během vysvětlování bylo potřeba upřesnit, že se tato diskuze týká plánu na zbývajících 45 minut.
[01:40:19-01:42:00] **Účastníci navrhují témata k diskuzi pro zbývajících 45 minut schůzky.**
- Speaker 1 navrhuje, aby se účastníci inspirovali Adamovým přístupem a navrhli, jak efektivně využít zbývající čas.
- Navržená témata od Speaker 1:
    - Praktická automatizace pomocí AI, konkrétně ve firemním supportu.
    - Nastavení kódu jako programovacího partnera (považováno za téma na delší diskuzi).
    - Základy definice "skills" pro Cloud Code (považováno za téma pro budoucí workshop).
    - Praktické nastavení Slack integrace, jak ukazoval Jirka.
[01:42:04-01:43:15] **Návrh na obecnější diskuzi o smysluplnosti automatizace konkrétních případů užití (use cases).**
- Speaker 2 navrhuje zaměřit se na diskuzi o tom, *proč* a *kde* automatizaci chtějí využívat, ať už v pracovním nebo osobním životě, aby z toho mohli benefitovat všichni.
- Cílem by nebylo technické řešení, ale pochopení motivace a přístupů ostatních.
- Klíčovou otázkou je posoudit, zda přínos automatizace převáží nad pracností její implementace, a identifikovat opakující se činnosti, které již mohly být zautomatizovány.
    - Příklady zahrnují: program pro dcery, automatizace účetnictví, odbavování tiketů ve Slacku.
[01:43:18-01:43:58] **Diskuze o konkrétním a hmatatelném případu automatizace a integraci do běžného života.**
- Speaker 7 vyjadřuje největší zájem o praktické a uchopitelné případy užití, jako byl ten, který prezentoval Speaker 2.
- Speaker 7 konstatuje, že dílčí technické kroky (např. automatizace seznamu) lze s nástroji jako OpenCloud realizovat relativně rychle.
- Hlavní výzvou není technická implementace, ale smysluplné zařazení těchto automatizací do každodenního života (např. forma notifikací, integrace).
[01:44:02-01:46:06] **Příklad pokročilé automatizace pomocí "skillu": QA proces ve firmě.**
- Speaker 2 popisuje vytvoření specializovaného "skillu" pro automatizaci QA procesu, který zahrnuje code review a end-to-end testování.
- Tento skill byl vytvořen jako reakce na nedostupnost testerů.
- Proces automatizace:
    - Spustí Playwright pro interakci s webem.
    - Vytvoří screenshoty, označí v nich relevantní oblasti a přidá očíslované popisky.
    - Vygeneruje výstup ve formátu Markdown, který se vloží do Jira tiketu.
- Výsledná kvalita reportu je podle Speaker 2 vyšší než u manuální práce testerů.
- Klíčem k úspěchu je dobře definovaný skill, který zná prostředí (např. Raynet, Freelo) a postupy (např. login).
- Pro spouštění takto definovaného skillu již není nutný OpenCloud; lze použít jiné spouštěče (hooky), jako je mikroservisa reagující na změnu stavu tiketu nebo pravidelně spouštěný cron job.
[01:46:06-01:47:23] **Snaha o zefektivnění diskuze a výběr jednoho konkrétního tématu.**
- Speaker 1 poukazuje na to, že diskuze zabíhá do přílišných detailů a je potřeba se rozhodnout, čemu se věnovat ve zbývajícím čase.
- Speaker 4 navrhuje opustit demokratickou formu výběru, která zdržuje.
- Návrh postupu od Speaker 4:
    - Delegovat výběr tématu na menší skupinu.
    - Účastníci, kteří nechtějí vybírat, se mohou dobrovolně vzdát hlasu.
    - Speaker 4 a Speaker 7 se vzdávají možnosti výběru, čímž se odpovědnost přesouvá na zbývající tři účastníky.
[01:47:31-01:48:37] **Účastníci specifikují témata, která je nejvíce zajímají, a identifikují své hlavní překážky.**
- Speaker 11 by si nejvíce odnesl z témat:
    - Automatizace v účetnictví.
    - Vytvoření osobní asistentky (např. pro nákupní seznam).
- Speaker 3 identifikuje svůj hlavní problém v přechodu od nápadu k exekuci.
    - Jako příklad uvádí vytvoření agenta pro automatické objednávání nákupu z Košík.cz, což by mu výrazně zlepšilo život, ale neví, kde začít.
- Speaker 1 potvrzuje zájem o tento problém, konkrétně jak takový nápad uchopit a zrealizovat.
[01:48:40-01:50:35] **Diskuze o vytvoření specializovaného a omezeného AI asistenta pro konkrétní úkoly.**
- Účastníci rozvíjejí myšlenku asistenta, který by zvládal:
    - Hlasové diktování položek (např. co bylo odebráno ze sdílené samoobsluhy).
    - Automatické objednávání nákupního košíku, včetně interakce s webem a platby.
- Speaker 3 vyjadřuje obavu z přílišné "šířky" a neohraničenosti nástrojů jako OpenCloud.
- Cílem by mělo být vyvinout s pomocí AI specifický a omezený "skill" nebo "capability", který by plnil pouze danou funkci (např. "kuchyňská sekretářka") a nemohl by provádět jiné, potenciálně nebezpečné akce.
- Panuje shoda, že současní asistenti nejsou přirozeně takto omezení a jedna nevhodná věta je může odklonit k jiným úkolům.
[01:50:35-01:53:15] **Analýza potřeby nástroje, který vyvíjí spolehlivé "skilly", a reflexe účastníků.**
- Speaker 4 shrnuje, že účastníci chtějí spolehlivý ("reliability") nástroj, který by na základě (polo)hlasových povelů sám vyvinul ohraničený a spolehlivý "skill", na rozdíl od neomezeného a nespolehlivého ("unbounded") OpenClaw. Potvrzuje, že technicky je to realizovatelné.
- Následně se diskuze vrací k výběru tématu pro zbývající čas. Speaker 2 reflektuje, že některé diskutované problémy nevnímá jako překážku, protože na ně má odpověď nebo je schopen si je zařídit. Uvádí, že nástroj (pravděpodobně AI asistent) používá již několik týdnů a po každém běhu zapracovává zpětnou vazbu, čímž ho neustále vylepšuje.
[01:53:18-01:54:34] **Speaker 2 definuje potřebu atomizace dovedností jako základní princip automatizace.**
- Speaker 2 vyjádřil zájem pochopit konkrétní případy užití (use cases), které by mohl implementovat.
- Nabídl, že ukáže, jak on vytváří ("buildí") dovednosti a jak o nich přemýšlí, což považuje za důležitý dílek skládačky.
- Zdůrazňuje, že klíčové je atomizovat komplexní úkoly na jednotlivé, samostatné "skilly" (dovednosti).
    - Používá analogii se servisem kola: Velký úkol ("odservisovat celé kolo") se skládá z menších dovedností jako "vyměnit duši" a "promazat řetěz".
    - Aplikuje stejnou logiku na automatizaci nákupu: Velký úkol ("nakoupit mi to") se skládá z dílčích dovedností jako "sestavit košík" a "použít platební kartu".
[01:54:36-01:56:00] **Tým provádí retrospektivu neefektivního průběhu schůzky a Speaker 4 navrhuje přejít k praktické ukázce.**
- Speaker 4 a Speaker 3 konstatují, že se diskuze zasekla a vzhledem k omezenému času je třeba změnit směr.
- Speaker 3 navrhuje začít plánovat obsah příští schůzky.
- Speaker 8 navrhuje, že by příští setkání mohlo být formou workshopu.
- Speaker 4 identifikuje chybu v tom, že tým otevřel příliš mnoho témat a strávil 30-40 minut diskuzí o tom, jaké téma vybrat, místo aby se držel předem vybraných bodů (např. lightning talků).
- Speaker 1 oponuje, že právě lightning talky přinesly témata, do kterých se chtěli ponořit hlouběji.
- Speaker 4 přerušuje retrospektivu s cílem posunout se vpřed a navrhuje okamžitou praktickou ukázku automatizace účetnictví, která poslouží jako konkrétní startovací bod.
[01:56:00-01:57:05] **Speaker 4 popisuje manuální proces přípravy účetních podkladů pro dvě firmy, který se rozhodl automatizovat.**
- **Problém:** Speaker 4 musí každý měsíc jako jednatel dvou firem připravit podklady pro účetní.
- **Manuální proces:**
    1.  Zadávání nákladů do Fakturoidu pro vlastní evidenci.
    2.  Provádění rekonciliace plateb: Párování bankovních výpisů s náklady ve Fakturoidu, aby bylo zajištěno, že jsou všechny položky zaúčtovány.
    3.  Export faktur, nákladů a bankovních výpisů.
    4.  Zabalení všech dokumentů do ZIP archivu a odeslání účetní.
[01:57:05-01:58:21] **Speaker 4 představuje technické jádro své automatizace postavené na MCP serveru a Fakturoid API.**
- Jako reakci na zdlouhavý manuální proces vytvořil automatizaci pomocí Cloudu.
- Základem systému je MCP server, který je nakonfigurován s jeho API tokenem pro Fakturoid.
- Tento server se přes Fakturoid API připojuje ke všem jeho firemním účtům.
- Nejdůležitější součástí infrastruktury jsou "skilly", z nichž klíčový je "expense recorder" (záznamník nákladů), který má aktuálně 170 řádků kódu a obsahuje veškerou potřebnou logiku.
[01:58:25-01:59:28] **Speaker 4 detailně popisuje proces sběru a zpracování faktur pomocí automatizačního agenta.**
- Agent operuje v rámci definovaného adresáře.
- **Sběr dokladů:** Faktury a doklady se shromažďují v inboxu Fakturoidu.
    - Speaker 4 buď přeposílá e-maily s fakturami na speciální Fakturoid adresu, nebo je fotí a nahrává přes mobilní aplikaci.
- **Zpracování inboxu:**
    - Agentovi je zadán příkaz, např. "zpracuj inbox pro Koperníci", na základě kterého se zaměří na konkrétní firmu.
    - Agent je nainstruován, aby se ujistil, že pracuje ve správném firemním účtu.
[01:59:28-02:00:52] **Speaker 4 demonstruje, jak agent zpracovává faktury a zabraňuje duplicitám.**
- Agent si po spuštění stáhne soubory z Fakturoid inboxu.
- Před zahájením práce se ujistí, že má aktivní správný firemní účet (např. "Koperníci").
- V tomto případě začal zpracovávat 19 souborů z inboxu, mezi kterými identifikoval 3 duplicitní páry.
- Používá skill "Subject Manager", který zajišťuje, aby nebyly ve Fakturoidu vytvářeny duplicitní subjekty (firmy), a to kontrolou podle IČ.
- Speaker 4 upřesňuje, že instrukce pro agenta (např. vyhledávací protokoly) byly vytvořeny konceptuálně ve spolupráci s Cloudem, nepsal je slovo od slova sám.
[02:00:52-02:02:08] **Speaker 4 vysvětluje pokročilé funkce agenta, včetně paralelního zpracování a unifikace položek.**
- Agent spouští paralelní procesy (v tomto případě 13 agentů na pozadí), kde každý zpracovává jeden soubor z inboxu.
- Zpracovává i složitější případy, jako jsou platby v cizí měně konvertované do CZK.
- Obsahuje instrukce pro specifické daňové situace, například pro samoplátce DPH.
- Agent využívá interní tabulku pro unifikaci názvů nákladů.
    - Příklad: U faktur od dodavatelů jako DigitalOcean agent vytvoří jednu standardizovanou položku s názvem "Služba", i když původní faktura obsahuje více položek.
[02:02:21-02:03:51] **Automatizace zvládá párování plateb včetně kurzových rozdílů, ale má prostor pro další vylepšení.**
- **Parsing PDF:** Na dotaz Speaker 4 odpovídá, že pro parsing PDF souborů používá přímo nativní funkce Cloudu.
- **Rekonciliace plateb:**
    - Druhou částí procesu je párování plateb pomocí skillu "expense payments recorder".
    - Speaker 4 nahraje CSV export z banky a agent na jeho základě projde platby a u příslušných nákladů ve Fakturoidu vyznačí datum a částku platby.
    - Systém umí pracovat s kurzovými rozdíly: fakturu na 12 USD spáruje s reálnou platbou v bance (např. 263 Kč), i když se liší od původního přepočtu (např. 235 Kč).
- **Chybějící funkce a budoucí vylepšení:**
    - Automatické přeposílání souborů z e-mailu.
    - Přímé napojení na FIO banku přes API pro automatické stahování plateb.
    - Průběžné zpracování a zasílání reportů o zaevidovaných položkách.
[02:03:51-02:05:15] **Speaker 4 stojí před rozhodnutím, zda bude systém dále rozvíjet sám, nebo využije externí platformu.**
- Současná automatizace mu šetří 1-2 hodiny měsíčně, ale vyžaduje manuální kontrolu, protože jí zatím 100% nedůvěřuje.
- **Možnost 1: Vlastní vývoj:** Postupně přidávat další vrstvy na stávající jádro, až po integraci se Slackem nebo interakci přes mobilní aplikaci. Agent by mohl být "bounded" (účelově omezený) a spouštěný automaticky.
- **Možnost 2: Využití platformy:** Převést stávající jádro například do "open clou" (pravděpodobně Open Interpreter nebo podobná platforma) a nechat systém dokončit externími nástroji.
- Speaker 4 tímto vstupem otevírá diskuzi pro další směřování.
[02:05:17-02:06:47] **Diskuze se stáčí k tématu nahrazení účetní, což Speaker 4 odmítá kvůli riziku a potřebě autorizace.**
- Speaker 11 se pozastavuje nad tím, že Speaker 4 stále posílá podklady účetní, a ptá se, proč ji systém nenahradil.
- **Klíčový argument (Speaker 4):** Účetní nelze nahradit, protože ona provádí zaúčtování do podvojného účetnictví, má autorizační razítko (pravděpodobně auditora nebo daňového poradce) a řeší komunikaci s úřady. U firmy s DPH je riziko příliš vysoké v porovnání s měsíčním poplatkem (4 000 Kč).
- **Pohled (Speaker 2):** Z jejich zkušenosti (provoz e-shopu) lze přímo pracovat s podvojným účetnictvím a automatizovat generování výkazů (např. PNL).
    - Vyžaduje to spolupráci s účetním, který je ochoten definovat byznys pravidla pro zaúčtování.
    - I po automatizaci účetní zůstává pro kontrolu a poskytnutí "lidské autority".
[02:06:47-02:07:07] **Automatizace může snížit náklady na účetnictví změnou modelu platby z poplatku za doklad na konzultační poplatek.**
- Speaker 2 vysvětluje, že mnoho účetních si účtuje poplatky za počet zpracovaných dokladů.
- S automatizací je možné se s účetním domluvit na jiném modelu: definují se pravidla pro automatické zpracování (za což účetní dostane poplatek za konzultaci) a následně systém běží sám, čímž se eliminují poplatky za jednotlivé doklady.
- Účetní je stále potřeba pro finální kontrolu.
[02:07:08-02:08:06] **Praktický postup automatizace: použití API tokenů a proměnných prostředí.**
- Speaker 7 konstatuje, že v případě Speakera 4 jde o úsporu jeho vlastní práce, ne primárně práce účetní.
- Speaker 4 vysvětluje, že Cloud lze použít podobně jako "open clou" (Open Interpreter) i bez specifických komponent, jako je jeho MCP server.
- Většina služeb má API s dokumentací.
- Proces je jednoduchý: vygenerovat API token v dané službě, vložit ho do proměnné prostředí (aby nebyl vkládán přímo do kódu) a poskytnout ho agentovi spolu s dokumentací, aby mohl s API pracovat. Nabízí, že tento postup mohou prakticky vyzkoušet.
[02:08:00-02:08:40] **Pro ochranu API klíče se doporučuje používat proměnné prostředí (environment variables) v terminálu.**
- Klíč by neměl být vkládán přímo do kódu, ale měl by být nastaven jako proměnná prostředí.
- Speaker 2 vznesl obavu, že token může být odhalen ("expouznut") při volání přes cURL.
- Speaker 4 oponoval, že proměnná prostředí je do příkazu interpolována, takže se v historii příkazů neobjeví.
- Je nutné zajistit, aby proměnná prostředí přetrvala i po restartu terminálu.
- Speaker 4 zmínil, že má napsaný nástroj, který prohledává session a maže z ní citlivé klíče, ale označil to za vedlejší detail.
[02:08:40-02:10:14] **Byly porovnány dva přístupy k automatizaci a integraci s AI (Claude).**
- **Přístup 1 (Tomášův):** Začít s Claude Code, což je "hands-on" metoda, kde uživatel postupně sám buduje jednotlivé dovednosti (skilly) a automatizace. Tento přístup se škáluje postupně, jak se uživatel stává zkušenějším.
- **Přístup 2 (Jirkův/OpenClaw):** Delegovat celý úkol přímo na OpenClaw. Pokud uživatel AI důvěřuje (a odhlédne od bezpečnostních aspektů), může OpenClaw sám spustit a provést požadovanou akci.
    - Příklad: Lze mu dát za úkol: "Chceme umět objednávat hlasově z kuchyně přes Alexu."
- Speaker 7 se přiklání k Tomášovu postupnému přístupu, ale poznamenal, že plná delegace na AI je také možná.
[02:10:15-02:11:21] **Účastníci se dohodli na úpravě časového plánu schůzky, aby umožnili praktickou ukázku.**
- Původní plán byl začít uzavírat schůzku 5 minut před koncem (v 11:55, konec ve 12:00).
- Speaker 1 navrhl prodloužit téma a věnovat závěrečnému kolu (retro, next steps) jen 15 minut před dvanáctou hodinou.
- Speaker 3 navrhl prodloužit závěrečné kolo na 20 minut, což Speaker 1 přijal jako realističtější.
- **Key Decision:** Závěrečné kolo (retro, next steps) bude trvat 20 minut na konci schůzky. Dalších 15 minut bude nyní věnováno praktické ukázce. - [Rationale:] Aby bylo možné dokončit probírané téma a zároveň stihnout shrnutí.
[02:11:21-02:13:08] **Speaker 4 demonstroval vytvoření skriptu pro stažení reportu z Toggl pomocí Claude.**
- Speaker 4 si ve svém účtu Toggl vygeneroval API token.
- Následně dal Claude pokyny:
    - Uložit daný API token jako proměnnou prostředí, aby byl trvale k dispozici.
    - Naimplementovat skript, který automaticky stáhne měsíční Toggl report.
    - Poskytl odkaz na API dokumentaci.
- Claude vytvořil skript `toggle_report.sh`, který:
    - Autentizuje se pomocí API klíče.
    - Stahuje detailní časový report (time entries) ve formátu CSV z výchozího workspace.
    - Ukládá soubor s názvem `toggl_report_ROK_MĚSÍC.csv`.
- Po udělení oprávnění Claude skript úspěšně spustil a stáhl 72 záznamů za leden 2026, což trvalo přibližně tři minuty.
[02:13:08-02:14:54] **Demonstrace pokračovala vytvořením lokálního skillu pro analýzu stažených dat z Toggl.**
- Cílem skillu bylo vytvořit rozpis, kolik hodin má být fakturováno které firmě, za předpokladu práce pro více klientů.
- Pokyn pro Claude byl formulován jednoduše: "Pracuji pro mnoho společností. Chci rozpis, kolik hodin mám dát do faktury pro jakou firmu."
- Očekávalo se, že Claude vytvoří lokální skill v projektovém adresáři, který bude fungovat pouze v daném kontextu.
- Bylo zjištěno, že Claude v tu chvíli prohledával globální skilly (`/claude/skills`).
- Speaker 4 poznamenal, že Claude sám o sobě plně nerozumí fungování skillů a je efektivnější mu poskytnout přímo URL na dokumentaci skillu.
[02:14:54-02:16:54] **Byla diskutována schopnost AI vytvářet a upravovat skilly a související bezpečnostní aspekty.**
- Speaker 7 zmínil, že pro tvorbu skillů existuje specializovaný skill jménem "Skill Builder".
- Claude úspěšně zapsal skill s názvem `TogglHours` s popisem "Download and Display ToggleHours, Breakdown by Company/Client" do adresáře projektu (`Toggle Report`).
- Během procesu Claude zjistil, že API nevrací názvy klientů, ale pouze jejich ID, a začal řešit, jak tato data dodatečně získat.
- Vznikla otázka, zda má AI oprávnění sama sebe aktualizovat, konkrétně své vlastní skilly.
- **Key Decision:** Claude se zeptá na povolení, než aktualizuje svou vlastní konfiguraci nebo skill. - [Rationale:] Zmíněno Speakerem 4 jako stávající chování.
- Speaker 3 vyjádřil velký zájem o téma bezpečnosti, konkrétně o nastavení hranic ("boundaries") pro AI a o roli kontejneru, který omezuje přístup modelu k systému.
[02:16:56-02:18:44] **Demonstrace restartování Claude a testování nově vytvořeného skillu.**
- AI aktualizovala skill, ale při testování nahlásila chybu "unknown skill", protože nově vytvořený skill ještě nebyl načten.
- Speaker 4 ukázal, že po ukončení ("zabití") procesu Claude vrátí ID konverzace (`resume_id`).
- Toto ID umožňuje restartovat Claude ve stejném stavu, v jakém byl před ukončením (včetně nainstalovaných knihoven, načtených dat atd.).
- Po restartu a obnovení kontextu pomocí příkazu `continue` se Speaker 4 pokusil aktivovat skill.
- Spustil novou, "čistou" instanci Claude nad adresářem projektu a položil přirozenou otázku: "how much should I invoice".
- Claude nejprve provede "discovery" fázi, aby zjistil, zda pro daný dotaz existuje relevantní skill, a následně ho aktivuje.
- Claude úspěšně načetl a aktivoval skill `TogglHours`, přičemž výstup byl demonstrován.
[02:18:44-02:19:20] **Následná akce po vytvoření jádrového skillu je vytvoření faktury.**
- Po identifikaci, že předchozí přístup nefungoval kvůli nedostatku kontextu u agenta, bylo dosaženo cíle a vytvořeno jádro (skill).
- Dalším krokem je využití tohoto skillu k vytvoření faktury.
[02:19:20-02:20:00] **Pro vytvoření faktur je potřeba zkombinovat existující skilly mezi projekty.**
- Speaker 4 vysvětluje, že skill pro práci s fakturami (MCP server) byl záměrně aktivován pouze pro projekt "Factoroid Assistant", aby nebyl objevitelný a použitelný jinde.
- Nyní je však tento skill potřeba i v aktuálním projektu, aby bylo možné generovat faktury.
- Zvažovaným řešením je naimportovat tento skill do aktuálního projektu, namísto jeho nového vytváření.
[02:20:05-02:21:48] **Přenesení hotového skillu a skriptů do existujícího účetního projektu pro vystavení faktur.**
- Uživatel přesunul dříve vytvořený skill a související Bash skripty do projektu pro účetnictví.
- Následně zadal příkaz k vytvoření návrhu faktur na základě Toggl reportu ("Vytvoř návrh faktur na základě Toggl reportu").
- Očekávaným chováním agenta je, že se nejprve podívá do reportu, aby získal potřebná data.
[02:21:48-02:23:14] **Diskuse o dekompozici velkých skillů na menší, znovupoužitelné sub-skilly.**
- Velké skilly ("mega skill") je vhodné dekomponovat (rozdělit) na menší, specializované části.
    - Příklad: Skill "stavba kola" lze rozdělit na dílčí skilly jako "vyplétání ráfků".
- Hlavní výhody dekompozice jsou:
    - **Úspora kontextu:** Agent si načte pouze ty sub-skilly, které jsou relevantní pro daný úkol, a ignoruje ostatní.
    - **Efektivita:** Zpracování je rychlejší a cílenější.
    - **Znovupoužitelnost (reuse):** Jednotlivé sub-skilly (např. zpracování hlasu, zpracování textu) mohou být znovu použity v rámci jiných, větších skillů.
[02:23:15-02:24:04] **Orchestrace skillů a skriptů pro automatizaci složitějších úloh.**
- Skilly se mohou odkazovat na deterministické skripty, které fungují jako nástroje.
- Systém může obsahovat desítky nástrojů rozdělených do několika skillů.
- Klíčová je "orchestrace", kdy agent sám rozhoduje, které skilly a v jakém pořadí použít, aniž by mu to uživatel musel explicitně říkat.
- Dobře popsaný základní skill by mohl umožnit spouštění úloh pravidelně (např. pomocí cronu), bez nutnosti neustálého běhu OpenClaw v loopu.
[02:24:06-02:24:58] **Debata o využití OpenClaw: jako přímého asistenta vs. jako nástroje pro tvorbu specializovaných agentů.**
- Byly identifikovány dva hlavní způsoby použití:
    1.  **Odbavování agendy:** Agent aktivně vykonává úkoly (např. daňové přiznání).
    2.  **Asistent na požádání:** Agent reaguje na konkrétní dotazy a příkazy.
- Speaker 4 navrhuje využívat OpenClaw primárně k tvorbě specializovaných, bezpečných agentů, které lze nasadit jinam.
- Speaker 7 zmiňuje složitý firemní prototyp, kde agent orchestruje práci v GitLabu pro různé projekty v Docker kontejnerech a komunikuje s vývojáři, což ilustruje pokročilou, nekomerční aplikaci.
[02:25:01-02:26:37] **Problémy s bezpečností a kontextem při použití jednoho centrálního "headmaster" agenta.**
- Bylo navrženo, že by OpenClaw mohl fungovat jako "univerzální headmaster sekretářka", která pouze orchestruje a deleguje úkoly na specializované agenty (např. agenta pro nákupy na Rohlíku).
- Speaker 7 upozorňuje na bezpečnostní rizika tohoto přístupu:
    - OpenClaw není navržen jako multi-agentní systém a nedokáže se spolehlivě omezit na jednu roli a zapomenout předchozí kontext.
    - To vytváří riziko pro "prompt injection" a divergenci příkazů, protože škodlivé instrukce se mohou přenášet mezi agenty.
    - Speaker 7 předpovídá, že současná instalace OpenClaw bude za rok kvůli těmto problémům zastaralá a "zahlcená".
- Speaker 4 navrhuje alternativní řešení: nechat OpenClaw postavit specializovaného asistenta (např. pro nákupy) a toho pak integrovat do komunikačního kanálu, kde s ním uživatel komunikuje přímo, čímž se obchází centrální "headmaster" a související rizika.
[02:26:47-02:27:50] **Demonstrace úspěšného vytvoření faktur pomocí přeneseného skillu.**
- Speaker 4 rekapituluje provedené kroky:
    1.  Zkopíroval skill a skripty do účetního projektu obsahujícího MCP server.
    2.  Zadal příkaz k vytvoření návrhu faktur za leden na základě Toggl reportu.
    3.  Agent se dotázal na cílový účet (zvolen "developerský účet").
    4.  Agent zjistil chybějící platební údaje, dostal pokyn najít si IČO na internetu.
    5.  Na základě získaných informací agent založil kontakty firem a vytvořil pro ně faktury v developerském účtu Fakturoidu.
    6.  Agent se ještě doptal na hodinovou sazbu.
- Celá tato interakce proběhla prostřednictvím komunikačního kanálu a nahradila práci, která by manuálně trvala přibližně pět minut.
[02:27:50-02:28:23] **Zhodnocení přínosu automatizace a přerušení schůzky.**
- Byla potvrzena významná časová úspora; proces, který běžně trvá půl hodiny měsíčně, byl nyní automatizován.
- Dříve čas strávený přípravou automatizace převyšoval úsporu z jejího použití, ale s novými nástroji se tento poměr obrací.
- Speaker 1 oznámil, že zbývá 18 minut do konce a navrhl přestávku.
[02:28:24-02:29:10] **Logistická domluva ohledně oběda a pokračování.**
- Řeší se, zda si účastníci objednají oběd a budou pokračovat v práci, nebo půjdou na oběd společně.
- Někteří účastníci mají odpolední schůzky, což ovlivňuje plánování.
- Byl vznesen návrh spojit shrnutí dne s obědem, aby se ušetřil čas.
- Zjišťuje se časový harmonogram odchodu jednoho z účastníků, aby se tomu mohl přizpůsobit zbytek skupiny.