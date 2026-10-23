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

# Transcript: AI Jam: sběr cyklistických dat pro skórování povrchu silnic a diskuze o effort levelech

[02:50] speaker_1: Mě to tvoje téma zajímá z toho důvodu, protože já jsem si vlastně uvědomil, že co, na co nemám moc času a co bych ale hrozně chtěl jako dál objevovat, je právě ten machine learning. Jak jsem ukazoval ten training loop, tak k tomu mám ještě takový tréninkový program, že mi to vysvětluje, že ten model spolu stavíme from ground up.

[03:19] speaker_1: Je tam takovej hezkej proces, že ty si nejdřív tipneš, jak to dopadne. A pak spolu si říkáte, proč to tak třeba nedopadlo. Staví se ten model od mediánu, medián je ten první prediktor v podstatě, a ten ho může bítnout. Je to úplně super, naučení těch principů. Což je pro mě těžký, protože jsem to nikdy nedělal, nemám to zažité. Tak jsem si říkal, že by mohlo bejt super, kdybych si vzal ty tvoje data a použil to, měl u tebe takový podtéma, kde bych se učil na tom ten trénink.

[04:01] speaker_0: Tak to asi vezmu za dlouhodobý úkol, abych do příště připravil rozumnější data i pozadí, protože dneska mám jednu validní sadu, na který by se dalo něco analyzovat, ale do příště toho posbírám víc.

[04:12] speaker_1: Tam bude problém s golden datasetem, jakoby proti čemu. Možná se musí probrat, jestli existuje jinej způsob učení, protože všechno to učení, co jsem já dělal, mělo proti sobě golden data – člověkem evaluovaná data, proti čemu se to mohlo učit. Ale ty je mít nebudeš, jak můžeš jednotlivý hrbolky označit.

[04:36] speaker_0: Já si dovedu představit, že my ty golden data začneme tvořit, že začneme tvořit tu ground truth – řekneme, jak ty data normalizovat, uděláme z toho trochu unsupervised learning. Vymyslíme, co má bejt tím výstupem, jak popíšeme tu vlastnost tý silnice.

[04:57] speaker_1: Tak to by mohlo bejt dobrý dneska pokecat o tomhle učení, no.

[05:12] speaker_0: Moje téma je takový meta trošičku, ale hands on. Řeším pořád, jak se vzdělávat v AI, protože spousta věcí kolem letí obrovskou rychlostí, objevujou se nový nástroje a řeším, jak to sledovat kromě AI Jamu a jak se motivovat zkoušet nový věci a objevovat díry ve svých workflows. Chci si vytvořit scheduled task, kterej bude pravidelně prohlížet moje session v minulosti, koukat, jak pracuju, a druhým směrem sledovat zdroje, kterým důvěřuju – zatím především jeden newsletter. Odtamtud bude vytahovat věci, který mají největší hodnotu, abych je hned zkusil.

[06:11] speaker_0: Chci vytáhnout ty utility věci, který potřebuju vědět – jakej model vybrat, vyzkoušet, jakej novej tool vzít. Chtěl bych, aby to zmergovalo, jak já pracuju, plus tyhle zdroje, a doporučilo mi hodinovej task, na kterým můžu něco vyzkoušet. Nejvíc se bojím, že mi to nebude doporučovat dobrý věci – minule jsem vzal článek a řekl "doporuč mi, co bych měl vyzkoušet" a moc se mi to nelíbilo. Chtěl bych dostat seznam doporučení z posledních dvaceti článků toho zdroje a budu je ratovat, nakolik jsou zajímavý/relevantní, dát tomu feedback. Na konci bych chtěl mít nascheduleovanej task, kterej mi jednou týdně dá na výběr z pěti témat, já si vyberu a dostanu linky, který si vyzkouším.

[08:something] speaker_0: Posledně jsem rozjížděl paralelní sešny a přišlo mi to kontraproduktivní. Radši jednu sešnu, která rozpustí agenty – jeden prohledává moji historii, druhej zdroje, třetí hledá další zdroje na internetu. Pak zbytek času budu zkoušet, co to produkuje. Uvítám maximálně jednoho spolupracovníka – posledně jsme byli tři a bylo to overwhelming, Claude odpovídá elaboráty textu, který musím pochopit.

[09:10] speaker_1: Máš příklad něčeho, co jsi v minulosti objevil takhle a byl bys rád, aby ti to takovéhle věci dávalo?

[09:21] speaker_0: Příklady jsou třeba Claude Desktop – tipy jako "vyzkoušej fotku knihovny, on vám najde knížku". Nebo "vyšel novej model, zkus ho paralelně s druhým modelem a uvidíš, kterej je lepší."

[10:14] speaker_1: Líbilo by se mi ten skill taky použít, bylo by fajn, aby to bylo konfigurovatelný na zdroje – pro mě třeba Alfa Signál newsletter – a na příklady toho, co mě zaujalo.

[10:54] speaker_0: Ano, takhle jsem si to představoval.

[10:59] speaker_1: Mělo by to bejt nezapečený do skillu, aby si to nový uživatel mohl nastavit skrz kolečko.

[11:24] speaker_3: Můžu prezentovat svoje téma? Otevřete si poznámkový blok. Otázka: co se vlastně děje pod pokličkou, když měníš effort level? Ať to každý napíše sám, abychom se neovlivňovali.

[13:23] speaker_0: Tipoval jsem, že prozkoumává víc možností řešení a spálí víc tokenů.

[13:29] speaker_1: Taky bych řekl, že pálím víc tokenů a dostávám kvalitnější výstup.

[13:37] speaker_0: Představuju si to jako hloubku chain of thought – jako by se vydal na tři čtyři cesty nebo do stromu, a to, jak jde hluboko a kolikrát se vrátí, je effort level.

[13:52] speaker_3: Já vlastně taky nevím. Myslím, že David je nejblíž – je to token spend na reasoning krok, kam až si dovolíš jít. A to považuju za problém. Moje téma je o tom, že se tady věnujeme AI, používáme Claude Code, Hermesy, Open Claw, a když se tě zeptá kolega nebo laik na takovouhle otázku, tak zjišťuju, že se stydím, protože to neumím jednoznačně zodpovědět.

[15:16] speaker_1: Je to dobrý, to je super.

[15:17] speaker_3: Chtěl bych projít research, mít sjednocené pojmosloví, protože se to už děje – třeba "harness" je oficiální slovo. Co je agent, jaká část je deterministická, co běží jako script, v čem je napsanej Codex, v čem Claude Code.

[16:07] speaker_1: Chceš si udělat akademický vhled do toho, jak fungují ty platformy a agentní systémy obecně – ne jedna konkrétní, ale co je společný napříč nimi (výběr modelu, effort level, permission systém).

[16:52] speaker_3: Přemýšlel jsem o tom původně sobecky, že si to přečtu sám a udělám si zápisky jako ze školy. Ale s Borečkovou pomocí jsem přemýšlel, jak to rozdělit – rozdělíme si pojmy a navzájem si je vysvětlíme.

[18:02] speaker_0: Chtěl bych se přidat k Jirkovi. Můžeme dát třeba půl hodiny open-end a namyslet to do budoucna, pak to dál rozpracuju na příští jam.

[18:21] speaker_1: Potřeboval bych přípravu – tvoje hypotézy, a užil bych si patnáct dvacet minut přípravy sám, než bych do toho vstoupil.

[18:29] speaker_4: Dobře, nasdílím ti hnedka repo, kde to je v aktuálním stavu.

[19:00] speaker_0: Mě zaujalo hodně to téma effortů a modelů, spíš z praktický stránky – co kdy použít, s tím pořád strugglím. Ale asi se budu věnovat svýmu tématu, spíš dneska diskutovat a zorientovat se ve věci než tvořit skill.

[20:02] speaker_1: Ty nasdílíš repo, je public nebo private? GitHub? Jak se jmenuješ – Landovský.

[20:44] speaker_0: Jsi v rootu, tam je hned adresář.

[21:04] speaker_0: Klidně tam přidám sample data, kdyby sis o to stál.

[22:34] speaker_3: Takže vznikla skupina Tom a Kryštof, zatím.

[22:56] speaker_0: Já bych se představil, jak bych to dělal já – nejdřív bych to zadal do Claudu, ať mi najde relevantní zdroje, ty vysoce ratované bych procházel ručně.

[23:25] speaker_1: Já bych z toho chtěl dělat podcasty – sérii na Eleven Labs. (Diskuze o tom, že formát AI podcastů oběma irituje, americký hlasy vs. český, cringe faktor.)

[34:35] speaker_0: Datovou analytikou se v principu živím – u nás to znamená spoustu věcí, od reportů v Power BI po predikce spotřeby vody v Praze pro PVK.

[36:20] speaker_1: Přemýšlím, jestli je to dobrej fit vzhledem k tomu, že to (ML) umíš stavět – pro tebe to není brzda, ten přístup.

[36:57] speaker_0: Ne, já bych se vydával stejnou cestou jako ty, protože vnímám velkou přidanou hodnotu v tom, že nepostavíš model čistě jako black box. Na začátku projektu děláme design, koukáme, jaký modely by mohly bejt dobrý, vybereme třeba pět a pustíme se do tvrdýho testování.

[38:04] speaker_0: Pro nás je tenhle přístup dobrej, protože když to dodáváme jako řešení zákazníkům, chceme tomu porozumět, co je v těch střevech a jak to funguje.

[38:38] speaker_1: Když říkáš "model", myslíš přístup? Nebo konkrétní metodu jako XGBoost, Random Forest?

[38:59] speaker_0: Spíš jestli jít XGBoostem, Random Forestem, nebo jednoduššíma rozhodovacíma klasifikátorama.

[39:18] speaker_1: Já jsem na to šel z druhý strany. Zajímalo mě, jestli se dá predikovat cena serverů, který kupuju v aukcích na Hetzneru – největším poskytovateli dedikovaných serverů v Evropě. Zajímalo mě, jestli aktuální RAM krize ovlivňuje ceny. Nechal jsem si to postavit a zjistil jsem, že vůbec nerozumím tomu, co mi to píše.

[41:01] speaker_1: Tak jsem si nechal syntetizovat témata do learning sheetu – o čem se to statisticky baví, jak k tomu přistupuje z hlediska vědy. Nechal jsem si na základě toho postavit cvičení, kde mě model krok po kroku vede a nutí odpovídat svýma vlastníma slovama, proč se zvolila ta cesta a ne jiná – intuice bývá kontraintuitivní.

[42:11] speaker_1: On podchytává moje špatný intuice a rovná je. V každým kroku s ním interaguju – první krok je medián jako baseline, každej další model by měl bejt lepší než baseline. Takže se učím machine learning tak, že stavím model od začátku a nechám se vést.

[43:24] speaker_0: To je něco, kam já mířím s projektama pokročilý datový analýzy. U tvýho konkrétního case (ceny serverů v čase) mi ale nepřijde velkej prostor pro strojový učení – je to spíš základní statistika, co vždycky předchází modelování: musíš zjistit, jestli v prediktorech a výstupní proměnný jsou korelace.

[44:41] speaker_1: My jsme izolovali jednotlivý vlastnosti serverů – stáří CPUčka, velikost ramky, disku, jestli má speciální vlastnosti jako enterprise grade – abychom věděli, jak se navzájem ovlivňujou a jak ovlivňujou cenu. Došli jsme k tomu, že umíme s nějakou pravděpodobností určit, kolik v ceně dělá ramka na megabyte.

[46:26] speaker_1: (ukazuje graf) Tohle je pricing výstup, roste to – sedm tisíc osm set naskenovaných aukcí, na Tailscalu, mini PC se 64 GB ramky, kde běží veškerej vývoj, nikdy neřeším lid close.

[47:22] speaker_0: Vidím nárůst v grafu cena za gigabyte – za jaký období?

[47:32] speaker_1: Cca tři měsíce, od 21.7. do 3.9., fitoval to znova 3.9. a dělá predikci, plus backtest se spreadem.

[48:09] speaker_1: Já tomu rozumím strašně málo, co se tam děje, proto potřebuju tu lekci – abych si vzal konkrétní příklad a udělal na něm těch sedm kroků/stepů.

[49:00] speaker_0: To, co řekl Jirka, že by se chtěl naučit v rámci tvoření modelů – jde ti o to samé?

[49:08] speaker_1: Pojďme zpátky k tomu, jestli to má fit k tvýmu projektu, nebo jestli bych si měl najít jinej dataset.

[49:28] speaker_0: Dobrý point, namysleme to. U nás bude největší challenge normalizace dat – abychom se dostali na popis silnice jako takový, což bude nějaká deterministická transformace, kterou bude těžký zprůměrovat a vyhladit. Ale nevidím v tom strojový učení jako takový, protože chybí golden data – výstupní proměnná, na kterou se snažíme namapovat.

[50:16] speaker_1: Ale já v tom vidím strojový učení v tom, že hledáš funkci, která ti reliably transformuje ty data. A druhá věc – jestli bys neměl mít validátor, kterej odmítne nějakej signál, aby ti to nezkurvilo výstup, že tě to zprůměruje špatným směrem jen proto, že ten signál je dost silnej (např. projedeš to autem).

[50:56] speaker_0: Souhlasím, že ta pipeline/transformace bude zahrnovat víc kroků – nejdřív identifikovat a obřezat nevalidní data, pak z akcelerometru odstranit třeba efekt vyjetí ze sedla (bude to vidět jako pravidelnej pohyb přes jiný osy než normální drncání kola), a pak teprve transformace, která z toho udělá obecnej popis cesty.

[51:56] speaker_1: Na to bych použil ten learning loop – hledáme transformační funkci, která je nakonec deterministická, ale cest, jak k ní dojít, je spousta. To je za mě ten machine learning – learning loop, kterej si to zkouší a vyhodnocuje, když mu dáš deset stop s různýma rigama a rychlostma na stejným úseku. Nejdřív s ním budeme dělat eval – jak má vypadat funkce, aby byla nejlepší – a pak on bude pracovat vůči tomu evalu.

[52:53] speaker_0: Souhlasím, prostor pro tvůj framework tam je. Akorát nebudeme mít tu cílovou proměnnou, tu si budeme muset vymyslet jako součást workflow – jak se bude cesta popisovat.

[53:20] speaker_1: Myslíš, jak budou vypadat výsledný data? Já bych se nesnažil protahovat pipelinu až do finálního skóre. Teď jen normalizace a interpretace do actionable výstupu, ne až samotné skóre. Tohle slouží jen k tomu, aby x lidí mohlo obohacovat výsledný dataset o jednotlivý průjezdy.

[54:13] speaker_0: Jasně, abych je dokázal normalizovat.

[54:17] speaker_1: Tou deterministickou funkcí, tak aby na vstupu byl třeba typ kola, rig (speed rig – setup, proměnné ovlivňující nahrávku: typ kola, rychlost atd.), který by ti to převedlo do standardu.

[55:05] speaker_1: Otázka/hypotéza: můžeš mít jeden sjednocený signál napříč typama kol, nebo je třeba grupovat podobný profily (protože normalizace do jednoho může ztlumit/ztratit spoustu signálu)?

[56:10] speaker_0: Nedovedu si představit jeden signál za celou silnici i po zgrupování – spíš by se to mělo dít až ve chvíli skórování, např. po 10m úsecích, kde chci mít na vstupu ten normalizovaný signál.

[56:42] speaker_1: Anebo budeš každej segment při zpracování nového záznamu chtít přehodnotit skóre?

[57:00] speaker_0: Přesně, finální skóre segmentu bude třeba průměr všech scoringů, co do něj napadaly – jednou to Tom projel na horským kole, Kryštof na silničním, a je to podobné.

[57:18] speaker_1: To je ta hypotéza, kterou zkouším zformulovat – jestli bude skóre užitečný, když všechno zprůměruješ dohromady do jednoho čísla, anebo užitečnější, když uděláš skupiny (tužky = silniční bajky, fixy = horský kola) a pak na výstupu vezmeš jen relevantní skupinu.

[58:37] speaker_1: Takže hledáme funkci – normalizační, která dá normalizovaný data, a pak teprve interpretační funkce, která to protáhne na skóre (zelený/červený/modrý). Teď potřebuješ jen vědět, že data jsou využitelná a normalizovaná správně na týhle úrovni.

[60:04] speaker_0: (kreslí schéma) Fixy = vstupní signály → normalizace → nový signál (tužky), pořád s atributem, jaké kolo/podmínky → skórovací funkce, která to všechno namapuje na segment, pak průměr.

[61:00] speaker_1: Jako by sis normalizoval audio signál, aby měl stejnou sílu, výšku, basy.

[61:32] speaker_1: Takže ten learning loop: nejdřív vytvoříme eval, kterým poznáme dobrej signál, aby pak learning loop hledal funkci, která to bude dělat.

[62:02] speaker_0: Myslím, že se to dá rozložit do dvou kroků – nejdřív to, co jsi popsal (normalizace), pak skórovací funkce mapující na segment. Zkusit rovnou celou pipelinu by bylo složitější.

[62:35] speaker_1: Tohle je založený na kvalitních datech – normalizace může hodně ovlivnit skóre, takže v tuhle chvíli není důležitá interpretace, ale abychom měli normalizaci, se kterou jsme spokojení.

[62:54] speaker_0: Pro tohle bude důležitý posbírat data – aspoň na jednom kole projet tejden stejný segment, a ještě jednou na horským kole a jednou na tý koze (silničce).

[63:21] speaker_1: Jak dlouhej je ten segment?

[63:23] speaker_0: Včera jsem jel čtyřicet minut.

[63:26] speaker_1: To je zbytečný, pro naše učení stačí pětiminutovej vzorek – vybrat úsek s rovinkou a bumpy, jezdit tam a zpátky, měnit kola, mít padesát vzorků. Nepotřebujeme hodinovej.

[63:55] speaker_0: Zatím jsem sbíral čistě prakticky, protože jsem se potřeboval přesunout. Potřeboval bych naházet kola do dodávky, pumpu, zaparkovat na parkáči a jezdit úseky.

[64:07] speaker_1: A mít třeba dva jezdce kvůli váze.

[64:22] speaker_1: Teď jsme si řekli, co k tomu potřebujeme – víme, co budem dělat, ale nemáme pro to data. Tudíž to cvičení pro mě zatím nedává smysl bez aspoň menšího vzorku dat – i s pochybnou kvalitou to bude mít smysl, na jednom vzorku nic nevymyslíš.

[65:32] speaker_1: Kolik lidí by bylo ochotných sbírat data průběžně? Kdybyste měli pět lidí, co nasbírají 100-300 km dat za měsíc, bylo by to úplně jiný kafe než teorie na pěti vzorcích.

[66:40] speaker_0: To mám, o třech lidech vím na první dobrou, který můžu poprosit, ať zapínaj Sensor Logger a jednou týdně to nasypou do složky na Drive, ideálně s popiskem (metoda, horský kolo, telefon v kapse/batohu).

[67:28] speaker_0: Do příště určitě zvládnu posbírat data i laboratorně – ufouknout tlaky, různý kola, jeden úsek v různejch rychlostech.

[67:28] speaker_1: Neuděláme na to jednoduchou sběrnou stránku, kam nahraješ file, vybereš typologii (jaké kolo apod.), místo aby to bylo sbíraný v poznámkách?

[68:23] speaker_1: Bych udělal dvě věci: i bez dat se dá promyslet eval s LLM – ono si dokáže představit accelerometer data, road bumps, a když mu dáš jeden sample, může to bejt dobrá diskuse teoreticky.

[71:01] speaker_1: Napadá mě, že tam bude i grader pro data – když se projedeš po skle, mělo by to říct: tam nejsou zajímavý signály, nebudeme předstírat, že to ovlivní finální skóre, protože takhle silnice nevypadá; taky kvalitativní filtr, když je nahrávka tlumená v kušinu apod. – takový vzorky se uloží, ale označí jako vyřadit s nějakým skóre.

[73:00] speaker_0: Myslím, že tohle už má bejt součástí tý normalizační funkce – ať to odfiltruje, sem přijdou jen popisný věci pro silnici.

[73:06] speaker_1: Anebo pořídí skóre kvality – jednotná datová pipeline, gradientní skóre/true-false, aby šlo pak fluidně zkoušet, jak se mění výsledek při posunu prahu filtru.

[73:44] speaker_1: Tak jo, já si s ním pokecám o evalu.

[73:47] speaker_1: Ty by sis mohl s ním projít, jaký data by se měly sbírat, jaký volitelný, jaký povinný, se zohledněním, co je reálný chtít od cyklistů, subjektivní vs. objektivní.

[74:24] speaker_1: Bude minipage, kde je pro tebe důležitá identita člověka, nebo anonymní stránka s jednorázovým jménem uloženým v prohlížeči?

[75:05] speaker_0: Dal bych to i s identifikací, protože se k němu bude vázat třeba váha, kterou bude vyplňovat pokaždý. Bude to beztak pro kámoše.

[75:24] speaker_0: Mohl bych to tam rovnou sypat.

[75:39] speaker_1: Bude to veřejně dostupná stránka, může to bejt pod Basic auth, detail. Veřejná stránka na rozdistribuování kámošům + úložiště, kam se to sype.

[76:03] speaker_0: Super, tohle uděláme, dobrej nápad.

[91:14] speaker_4: Jak se ty senzorový data párujou s GPSkou?

[91:23] speaker_0: Sbírám to všechno v rámci telefonu, jede to podle času, je to jeden balíček.

[108:46] speaker_1: Ten sběr bude boží, bude dělat mnohem víc, než jsem si myslel. Ještě obrábím specifikaci, co by se mělo sbírat.

[109:03] speaker_1: Udělám na to branch a PR, dej to tam.

[109:27] speaker_0: Já jsem to nakomitoval už do mastera.

[114:19] speaker_1: (diktuje shrnutí architektury) On přišel s tím, že by se data měla validovat v prohlížeči už při nahrání, abychom preventovali problémy jako u tebe – neznamená to, že by uživatel nemohl data poslat, ale bude to oflagovaný.

[115:13] speaker_1: Flow: vyplní profil (jméno, statistický atributy), profil zůstává v prohlížeči, žádné účty. Každé další nahrání – sdílený přístupový klíč rozdaný ve Slacku. Vybere soubor, jedno odeslání, vyplní povinné/volitelné atributy jízdy (typ kola, plášť), zkontroluje a zobrazí verdikt (review na tebe, Kryštofe), odešle se.

[116:46] speaker_1: Data se uloží pod S3 cestou se submission ID – manifest JSON (profil, metadata jízdy, seznam souborů, odvozené statistiky), raw soubor byte po bytu, plochej index se zrcadlem manifestů. Při příjmu se nic netransformuje – jaká veličina a jak normalizovat zůstává otevřená výzkumná otázka. Server počítá jen popisné statistiky (vzorkovací frekvence, pokrytí, rozložení rychlosti). Bude read-only S3 klíč na bucket, zálohovaný na samostatné instanci S3 oddělené od zálohovací infrastruktury clusteru, aby veřejné vystavení nevystavilo nic jinýho.

[119:13] speaker_1: Založím subdoménu riders.kopernici.cz, pokud nemáš vlastní doménu.

[122:48] speaker_1: Poprosil bych tě o review dvou dokumentů ve specs, je na to PR, nejlepší se mrknout skrz PR.

[125:32] speaker_1: (ukazuje vlastní tool) Řešil jsem problém, že dělám hodně reviews markdownů – vadilo mi, že nemůžu komentovat inline, že to není renderovaný. Tool si vyrenderuje markdown včetně diagramů, můžeš kliknout kamkoliv a komentovat, submit review, a jedním commandem to předáš Claudovi, threaded discussions.

[129:03] speaker_2: Takhle používám Notion stejným způsobem – jedinej problém je, že tam vystupuje jako já, musel bych platit dalšího service account usera. Jinak reaguje na komentáře, ale občas při přepisu dropuje komentáře.

[129:41] speaker_1: Myslím, že tyhle tooly budou konvergovat, protože to je obvious problém všech lidí.

[129:49] speaker_0: Ve VS Code to prej taky nějak jde, kamarád mi to ukazoval.

[130:20] speaker_1: (pokračuje v zadávání specifikací "recording validation" a "derived statistics" Claudovi pro review Kryštofem)

[137:51] speaker_1: Ta míra automatizace je hustá – teď jsem s Kryštofem navrhli sběrnou stránku, a s Claudem běží proces přes subagenty, kterej si postaví autonomní specku, odmanageuje si to, dohodne se s jiným Claudem na K3S deploymentu, otestuje, že je to nasazený, a pošle mi telegramovou zprávu, až bude hotovo.
