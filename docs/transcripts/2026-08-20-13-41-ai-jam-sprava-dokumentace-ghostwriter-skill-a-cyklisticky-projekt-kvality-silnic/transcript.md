---
title: "AI Jam: správa dokumentace, ghostwriter skill a cyklistický projekt kvality silnic"
date: 2026-08-20
type: brainstorm
tags: [ai-jam, cyklistika, accelerometr, kvalita-silnic, claude-skill, ghostwriter, dokumentace, lifecycle, hypotezy, deep-research]
project: AI Jam
language: cs
duration: 3h 21m
plaud_id: 5d5cacdc210f816555edae7d9d952fd2
---

# Transcript: AI Jam: správa dokumentace, ghostwriter skill a cyklistický projekt kvality silnic

[00:00] speaker_0: Dvacátého osmý dva tisíce dvacet šest.

[00:07] speaker_1: Promiň. Hele, tak z-začneme prezentací témat jenom ry-rychlý a pak se nějak rozdělíme, pokecáme, rozdělíme se do týmů a můžem začít pracovat. Eh, tak já to vykopnu asi, jestli nevadí. Já jsem, eh, si připravil praktický téma, který si potřebuju zpracovat sám pro sebe ur-určitě, protože mě to fakt trápí na projektech a jedná se o životnost, životní cyklus a, a nějakou discoverability markdown filů, který používám k veškerý dokumentaci, analýzám, prostě ke všemu. Vlastně používám zásadně markdown fajly včetně transkripcí schůzek a všeho ostatního a mám je commitovaný v repozitáři, kam, kam patřej. Jo, takže to je můj nějakej základní kontext. A, eh, typicky se děje to, že si připravím třeba specku na nějakou věc větší nebo nějaký review architektonický nebo něco takovýho. Na základě něj pak potom jednám. To znamená, píše se třeba nějakej kód a, eh, potom ta věc tam chcípne. Je tam prostě uložená v nějakejch proposed changes. Na to mám jako docs lomeno proposed changes, na to mám jako adresář, případně pod-podadresáře, když je to složitější. A ten dokument tam vlastně v tu do-, v tu chvíli, kdy na tom začnu implementovat, tak už z-zastará, protože třeba nějaký věci udělám jinak v tý implementaci, a tudíž už je to jakoby odpojený od sebe. Jo a potom je tam prostě to riziko, že, že si z toho Claude něco načte, jo, a může mít prostě mylnej dojem, že, že to je jinak, než to ve skutečnosti je. Třeba i když on se spoléhá na kód jako hodně, jo, to neříkám, že se mi to často děje, ale takže mám několik problémů teda. Chtěl bych, aby Claude měl snad, snadnej způsob, jak si najde ty aktuální fajly, abych sám pro sebe věděl, pokud čumím do nějakýho filu, musím ho aktualizovat. Je to něco, co má dlouhou životnost, a tudíž potřebuju jakoby mít tam ten human in the loop a, a prostě jako, eh, jenom se jako ujistit, že tam je všecko v pořádku a up to date. Nebo je to fail, kterej můžu prostě zapomenout, protože je to v pohodě a vím, že tam není to riziko toho, tý jako korupce toho kontextu díky jako neaktuálním datům. A potom, potom chci, aby v tom byl nějakej systém, že třeba typicky, když jako něco máš nějakej spec a potom z něho chceš udělat nějaký readme, třeba něco takovýho. Tak abych právě věděl, jestli k tý transformaci třeba už došlo nebo má dojít a tak, jo. Jo, protože spec je jako ok, ten je pro implementaci, ale pak chceš třeba něco trvalýho, co ti popisuje nějakej koncept, kterej ta věc daná jako dělá, jo, aby s-se v tom bylo jako možnost se tam víc zorientovat. Takže vlastně, eh, s, je, mám, mám prompt, pomocí kterýho jsem oskenoval s, jakoby jeden svůj projekt, ten udělal nějakou jako i nějakej inventář těch dokumentů, který tam jsou. Je-je to použitelný pro vás pro všechny s tím, že tam není jako nic Tomáš specific. Je to prostě jako analytickej prompt, kterej pokud používáte markdown, tak si taky můžete pustit nad svým repozitářem. A pak nad nim bych udělal syntézu vlastně. A pokud by se někdo zapojil, tak to mám vymyšlený tak, že bysme společně prostě diskutovali o tom, jakej ten lifecycle by tam mohl bejt, abysme se v tom třeba snadno zorientovali v těch dokumentech a tak. Jo, takže výstupem bude nějaká jako metodika, nějakej, nějakej mentální jako framework, nějakej jako, nějaká mentální mapa toho, jak k těm dokumentům jako lze přistupovat a ideálně i způsobem, jak já, já, já bych chtěl, aby to byl jako framework, kterej můžu použít j-na jednoduchej, super jednoduchý projekt, tak na složitej, abych právě já ty věci ra-rád stavím tak, že prostě mi ta jedna věc funguje jako jedním způsobem a je jedno, na jakym to je projektu, abych to prostě mohl přenášet mezi sebou. A když něco adoptuju, nějakej takovejhle jako systém, systémek, tak abych ho mohl používat napříč, napříč projektama. Takže to je moje téma.

[04:05] speaker_0: Ok, jenom rychlej dotaz z lovenho zvídavosti, jestli si nějak v tomhletom kontextu zkoumal nebo řešil Obsidian jako nástroj?

[04:13] speaker_1: Neřešil jsem žádný nástroje.

[04:15] speaker_0: Jo, ok.

[04:17] speaker_1: Furt to na to stojí.

[04:18] speaker_0: Jo, je to právě něco na jako centrální správu markdown dokumentů. Máš nějakej takzvanej vault-

[04:26] speaker_1: Mhm.

[04:26] speaker_0: Kde si todleto udržuješ a ono ti to právě drží nějakou myšlenkovou mapu napříč, eh, napříč projektama.

[04:32] speaker_1: Mhm.

[04:33] speaker_0: Ale já jsem to taky ještě neimplementoval, jenom jsem o tom, o tom slyšel, že to je jako zajímavý a nějací lidi to dost používají.

[04:38] speaker_1: Mhm. Ok, super, děkuju.

[04:40] speaker_2: My jsme zkoušeli, že jde synchronizovat ten vault třeba přes Google Drive nebo tak jako s, třeba s kolegama. Že můžeš mít real time jako sync v podstatě.

[04:49] speaker_1: Ale když to máš, to je možná podle use casu, že když máš jako lidi, který nemají přístup do repozitáře, tak to dává smysl-

[04:55] speaker_2: Přesně tak.

[04:55] speaker_1: V tomhletom, když je to jako repo based všichni, tak, tak mi tohle ta vrstva jako nepotřebuju.

[05:01] speaker_2: My to řešili jakoby s markeťačkama-

[05:02] speaker_1: Jasně, jasně, chápu.

[05:02] speaker_2: Který prostě neviděly Git ještě.

[05:05] speaker_1: Mhm.

[05:06] speaker_0: Tak jo, tak mám odprezentovat další téma?

[05:18] speaker_1: Ano, prosím.

[05:19] speaker_0: Jo?

[05:19] speaker_1: Mhm.

[05:21] speaker_0: Eh, ahoj, já jsem Kryštof.

[05:23] speaker_2: Ahoj.

[05:23] speaker_0: Zdravím, čau, čau. Eh, téma, který si sem přináším já dneska, jsem nazval Vždycky není asfalt jako asfalt. Sběr, transformace, integrace a využití dat ze silnic. Eh, rozhodně vím a přiznávám, že todlencto je projekt, kterej je jako absolutně za hranicí a rozsahem toho, co se dá zvládnout tady v rámci AI Jamu. Eh, takže to, co chci udělat dneska, je nějaká myšlenková mapa, jak by se celej ten projekt měl odehrávat, co by to mělo dělat a výsledkem by měla bejt, je trochu jako dvousmysl, vyloženě roadmapa toho, co jak se bude sbírat, kam se to bude integrovat a jak to potom bu-budou využívat ti uživatelé. O co se jedná? Ano, Tome.

[06:08] speaker_1: Můžu jenom, m-mohl bys dát jenom jako úvod, abych si to dokázal představit jako necyklista vlastně.

[06:12] speaker_0: Mhm.

[06:13] speaker_1: To znamená, když by to bylo hotový, tak potom-

[06:15] speaker_0: Jo, jo, když to bude hotový, eh, tak ve chvíli, kdy já jako cyklista si naplánuju nějakou trasu, eh, třeba na Mapy.cz, tak, eh, budu mít třeba nějakej externí nástroj, kterej mi to ověří právě vůči tady těm datovým podkladům a řekne mi, jestli pro to moje kolo, na kterým tam jedu, jestli je to v pohodě.

[06:36] speaker_1: Mhm.

[06:37] speaker_0: Dám kontext. Eh, byl jsem teďko čtrnáct dnů v Polsku, kde jako ve velkejch, eh, vlastně díra ve vesnicích mají krásný silnice, ale hrozně se to liší. Mezi dvouma silnicema je jako hrozná silnice a mezi dvěma vesnicema, který jsou jako úplně stejně velký, tak je jako, eh, skvělá silnice nová. A já jezdím na časovkách svym kole, kde to, jak ta silnice je kvalitní, je jako dost podstatný pro to, jak, jako pozitivní zážitek z tý jízdy je, jak dobře se mi tam jede. No a zjistil jsem, že vlastně neexistují jako kvalitní mapový podklady. Existuje jako systém, jak to sbírat. Na OpenStreetMapách, eh, jsou pro to, je na to prostor, ale je tam hrozně málo těch dat, eh, který by pro to byly posbíraný. Takže jsem si říkal, než vymejšlet jako úplně, eh, úplně řešení bokem, tak bych chtěl vymyslet nějakej jednoduchej způsob, jak ty data konzistentně sbírat a ukládat, eh, někam je nahrávat a potom to právě zprostředkovat uživateli tou cestou, že ve chvíli, kdy si naplánuje nějakou trasu, tak mu to zvládne dát feedback vůči tomu, jak moc ta cesta je nebo není, eh, není kvalitní.

[07:48] speaker_1: Mhm, mhm, jo. A jenom promiň, neuvažoval jsi o tý endgame, že by to bylo jako naopak, že bys pomocí třeba OpenStreetMap měl apku, kde si naplánuješ jako kvalitní trasu pro tu tvoji potřebu, než jako zjistit: "Hele, tady mám půlku trasy úplně v hajzlu, tak to musím přeplánovat, ale vlastně ne, dělám to naslepo, protože tu informaci o tom, co to je za trasu, dostanu, až jako když to třeba někam vyexportuju."

[08:10] speaker_0: Jo, hele, je tohleto taky cesta, kterou bych byl rád, kdybysme tady dneska na základě toho, co, co všechno zjistíme, já už jsem si na zá-- jako nějakej research dělal, a když jsem tohleto řešení zkoumal a jako základní problém je v tom, že prostě nejsou ty data, eh, pro to, abych vůbec zjistil, jestli ta trasa, ať už si ji naplánuju kdekoliv-

[08:28] speaker_1: Prostě první je sběr.

[08:30] speaker_0: Přesně tak, přesně tak. Což mi přijde vlastně hezkej case, my tady máme jako AI jam, kdy jako jsme schopni udělat spoustu, spoustu řešení, ale zvlášť v naší branži, kdy děláme jako datový analýzy, tak se velmi často dostaneme k tomu, že ty podkladový data buď nejsou, nebo nejsou dost kvalitní. A je tohleto jako krásnej příklad tohohle toho, tohohle toho setupu.

[08:50] speaker_1: Mhm, mhm.

[08:51] speaker_0: Takže tohleto je moje téma. A, eh, jenom takovej, eh, jako tahák, že si myslím, že tady je jako prostor jak pro technický, tak i pro netechnický lidi. Eh, to vymyšlení právě třeba jako jak to, jak to potom zpřístupnit tomu uživateli, aby to bylo přívětivý, případně jak ty data, data sbírat. Jsou o tom i nějaký články, jak, jak tyhlety data nějak sbírat a vyhodnocovat. Takže je tam prostor určitě i pro, pro další lidi, kteří by měli zájem. A jenom teda zopakuju, cílem dneska by měla být roadmapa toho projektu jako takovýho. To znamená, co a jak sbírat, kam to nahrávat a jak to potom distribuovat vůči těm uživatelům, jak jim to zpřístupňovat.

[09:34] speaker_2: Proč to neprodat rovnou do Mapy.cz?

[09:38] speaker_1: To, co nemáme.

[09:39] speaker_2: Za předplatný.

[09:40] speaker_0: Je, je, je.

[09:41] speaker_1: A taky na tomhle třeba vyrostl Windy, že jo, nebo tak, že jo, že měl specifickou klientelu jako lidí, pro který chtěl prostě udělat nějaký jako super řešení pro kitening, to asi by řekl víc Radek třeba. A pak se z toho stalo něco třeba víc, no.

[09:53] speaker_2: Ty znáš Ivoše?

[09:54] speaker_0: Neznám Ivoše. Ne, nepotkal jsem nikdy.

[09:59] speaker_2: A ještě vím, že Strava sbírá informace o, o površích. To víš?

[10:05] speaker_0: To nevím.

[10:05] speaker_2: Nevšiml sis?

[10:06] speaker_0: Ne.

[10:07] speaker_2: Strava to má, už ty data nějakým způsobem získává a právě se ptá těch lidí, jak má ty segmenty, tak to vím, že to sbírá.

[10:15] speaker_0: Okej.

[10:16] speaker_1: Ale jako subjektivně, jo, jenom.

[10:18] speaker_2: Jo, myslím, že to je jako user input.

[10:19] speaker_1: Protože tohle je objektivní, ne?

[10:21] speaker_0: Já bych to chtěl nastavit tak, aby to bylo objektivní, jako že by to bylo posbíraný z nějakejch senzorů, kde jako bude velká výzva jako unifikovat, aby to bylo stejný pro všechny. Ale chci to dělat nějak jako technicky a konzistentně, protože ty user inputy jsou hrozně, hrozně subjektivní, no.

[10:40] speaker_1: Jasně.

[10:46] speaker_0: Tak tolik k mýmu tématu.

[10:49] speaker_2: A ty máš nějakou zkušenost, jak sbírat z telefonu ty data? Už jsi někdy zkoušel?

[10:55] speaker_0: V krátkosti jsem to vyzkoušel. I jsem nějakou datovou sadu přines sem, kdy mám data z akcelerometru a z GPSky, abysme to byli schopný jako na map-, na map-, nafasovat vlastně na mapový podklady. Ale z toho, co jsem zatím dokázal zjistit, tak to jsou jako data, který jsou hrozně poplatný i tomu, jako na jakým jedeš kole, jaký pláště, jestli máš ten telefon prostě na zádech nebo přidělanej na tom kole. Eh, a jsou na to nějaký jako dost rigorózní články, který se snažej tohleto nějak, eh, nějak odfiltrovat, ale tím jsem si zatím nezvládnul projít. Takže je tady i prostor pro to, kdybyste měli jako nějakej postup na to, jak startovat třeba i nějaký vědecký články, tak určitě i pro to je tady, pro to je tady prostor vydestilovat z toho nějakou užitečnou informaci.

[11:43] speaker_2: Zkušenost, nějakej research.

[11:45] speaker_1: Hele, pardon, můžeme teda, eh, jakoby už to finišovat, ten-

[11:52] speaker_0: Určitě.

[11:52] speaker_1: Představení toho tématu.

[11:53] speaker_0: Jo, jo, jo.

[11:54] speaker_1: Je to super zajímavý. Já bych taky rád pokračoval ještě v tom tématu, ale, ale jsou tady nějaký... Ještě něco k tomu teda?

[12:01] speaker_0: Za mě ne.

[12:01] speaker_1: Jo.

[12:01] speaker_0: Za mě je to finišnutý.

[12:03] speaker_1: Dobrá. Eh, nebo je to otázka, kterou potřebuješ k tomu, aby ses rozhodl, jestli se přidáš k tomu téma-, k tomu tématu? Ok. Máte někdo další teda? Budeš Ráďo představovat to svoje?

[12:13] speaker_0: Já mám svoje téma.

[12:14] speaker_1: Tak jo, pojď.

[12:15] speaker_0: Každý má svoje.

[12:18] speaker_3: A já mám tady zepsaný, pak to budu ukazovat odtud. No, já dlouhodobě zápasím s tím, že mám hodně vysoký standardy ohledně toho, jaký texty padaj, eh, z, prostě z Clouda nebo z jakýhokoliv AI, když dělám nějaký summaries meetingu, tak tam, pokud mi na tom záleží, aby to byl, aby to bylo dobrý pro lidi, který to čtou, tak s tím trávím hodně iterací. Nejsem spokojenej s tím, eh, s těma summaries často. A takže ten-- to moje řešení, který bych, eh, rád pro sebe udělal, je to vlastně tak, že je to spíš o tom, že mám pocit, že vím jak na to, jenom na to nemám čas nebo ne-nikdy jsem tomu nevěnoval pozornost, abych to udělal, je vytvořit si na to skill v Cloudovi, eh, který mu bude říkat ghostwrite-ghostwriter, kterej bude psát tak, že to nepoznám od svýho vlastního textu. To je jakoby endgame. Tam se rozhodně nedostanu nějak brzo. Vím, že to bude potřebovat nakrmit hodně datama, hodně mojejma nějakejma poznámkama a tak, aby, aby se postupně zlepšoval. Ale momentálně, když dělám opravy těch textů, tak to zpátky jako nekrmím do toho AI, aby se to naučilo, co, co mi nevyhovuje, co mi vyhovuje. Nebo respektive krmím, ale jiný skilly. Ale já bych potřeboval nějakej univerzální skill, kterej bude psát mým hlasem, mým for-- mojí formou, mojí, eh, jako hustotou textu. No a takže ten outcome, kterej bych chtěl na konci mít, je mít draft tady tohohle toho skillu, kterej budu mít, kterej se bude, eh, prostě spouštět automaticky na nějaký jako rozumný, rozumný tasky. A, hm, chtěl bych ho vyzkoušet na nějakym, mám nějaký moje vlastní transkripty z nějakýho, z nějakýho mojeho brainstormingu, který, který, který do toho nakrmím a budu chtít vidět, co z něho vlastně vypadne za nějaký poznámky nebo za nějakou, za nějakej text, kterej to jako sumarizuje to, co, to co nějakej můj nekon-- nekon-- ne, nestrukturovanej stream of thoughts. Teďka tady nahrávám meeting, že bych zkusil to udělat přímo, jak to vlastně tady s timhletím, eh, s timhletím naším povídáním nějak, uvidíme, eh, jak, jak uspěje.

[14:32] speaker_1: Kdyžtak bych ti můžu nabídnout transkripty z těch předchozích, kdyby jsi to potřeboval.

[14:36] speaker_3: Já mám transkriptů dost. Čímž se dostáváme k tomu, co je trošičku k tomu potřeba, no. A, hm, zatím z mojí zkušenosti jako s děláním jako takovejdle skillů je potřeba co nejvíc párů jako vstup a výs-a výs-a výstup, ideální výstup nebo vstup a špatnej výstup, že jo. Prostě na ty, na ty evaly, na tady tyhlety věci, což je největší bottleneck tady v tomhletom, jako že někde vylovit, eh, dobrej jako transkript a dobrej kvalitní zpracování, s kterým jsem spokojenej. Takže budu něco takovýho lovit. Eh, chci mít aspoň tři nějaký páry, eh, vstupu výstupu podle mých představ. Eh, no ta struktura je zhruba taková, že zároveň chci, aby se ten, aby se Claude, ať bude vytvářet ten skill, tak podíval do, do mýho Claude MD, kde už mám nějaký pravidla o tom, jak rád píšu texty, eh, aby se podíval na skilly, který už některý ně-nějaký fragmenty mýho voice mají a do nějakejch předchozích sessions prostě prohrabe všechno, co může, Slack, Notion, jak píšu, aby se jako trošku zkusil, eh, derivovat ty, ty pravidla z toho. No a potom prostě nechám Clauda, ať mě provede tím, tou, tím vytvářením skillu, řeknu: "Hele, chci vytvořit tady ten skill," dám mu tady tuhletu stránku, dám mu whatever a řeknu: "Hele, co já k tomu jako potřebuju?" A nechám se tím provést, ať ten skill vytvoří. A představuju si, že potom v tom závěru prostě pustím nějaký, nějaký ty evaly, budu to testovat na nějakejch transkriptech, jak to dopadává a pak připravím pro vás ukázku. Eh, nebude to jako dokonalej skill rozhodně. Bude to prostě start toho, že budu mít na to skill a budu mít co jako, eh, dál pilovat. No takže co vám na tom jako můžu ukázat, co vám můžu předat je, že vám ukážu, jak to, eh, tady tenhleten proces, kterým jsem prošel, kterým neříkám, že je ideální, možná některý z vás máte lepší, takže klidně vás vítám do týmu i jako, eh, rádce. Dva způsoby participace. Eh, jedno je, že máte podobný ambice a budete chtít podobnej skill. K tomu jenom potřebujete prostě nějakej, nějakej aspoň jeden pár toho vstupu výstupu. Případně můžem pracovat tady s tím, s tím, s tím recordingem, i když nevím, jestli z něho bude nějakej dobrej, dobrej s-jako výstup. Anebo se, se nějak zúčastnit tý práce na mým skillu, jako že na něm děláme dohromady, no. Vítám nula až dva lidi na tu spolupráci a nula až pět lidí klidně na to, jestli si budete chtít vytvořit vlastní skill. To je moje téma.

[17:20] speaker_1: Tak jo. Tak pokud nejsou otázky k Radkovi. Jsou? Nejsou.

[17:24] speaker_3: Tak ne.

[17:25] speaker_1: Tak je čas se rozdělit do družstev a vyrazit na cestu.

[17:35] speaker_2: Já jsem měl strach, že mě grilujete, že jsem přišel bez, bez tý, bez vstupenky.

[17:41] speaker_3: Grilování bude až před obědem.

[17:42] speaker_2: Dobře.

[17:47] speaker_3: Můžeš se vykrmit zatím. Co bude oběd?

[17:52] speaker_1: Bezový květ, bezový květ.

[18:00] speaker_0: Jo, já chci teda, když mě zajímaly všechny témata, tak já dneska zůstanu u toho, u toho Svýho, který-

[18:05] speaker_3: Jasný.

[18:07] speaker_1: Mohl bych se připojit k tobě na nějakej jako, eh, devil's advocate, jako na začátek třeba?

[18:14] speaker_0: Jo.

[18:14] speaker_1: Jo?

[18:14] speaker_0: Já budu za to rád.

[18:15] speaker_1: Tak jo.

[18:16] speaker_2: A já bych potřeboval pořídit ti ty, takový ty ručníky.

[18:20] speaker_3: Playing the devil, jo?

[18:23] speaker_4: Já mám.

[18:29] speaker_2: Jo, no jasně, jako ti všimla. Já jsem se záměrně nechtěl věřit, jakoby že. Vždycky, vždycky jsme všichni připravovali toho hodně.

[18:44] speaker_3: Zase jsem Kryštofe, že ty zůstáváš u svýho tématu, že?

[18:46] speaker_2: Je to tak.

[18:47] speaker_3: A kdo se k tobě přidá?

[18:49] speaker_5: Já bych se přidala.

[18:50] speaker_3: Ehm.

[18:52] speaker_5: No zas jako.

[18:54] speaker_1: Já se přidávám na půl hoďky a pak to mi tady zatím agenti doběhnou na, na to, na scan dokumentace a pak si, pak půjdu na to svoje téma.

[19:05] speaker_3: Ehm.

[19:14] speaker_1: Jirka, David, JD?

[19:16] speaker_6: Já zkusím kratkovy nebo no, nej-nejblíž tam je věc, která by mě zajímala. Jedna věc je právě nějaký no ukládání dat a todle. A no jo, tam prostě.

[19:28] speaker_1: S Radkem.

[19:29] speaker_6: Jo.

[19:30] speaker_1: Ehm, ehm.

[19:31] speaker_7: Já bych chtěl s tebou, ale tak první hodinu, první půl hoďku budu teda s Radkem a pak se přidám k tobě.

[19:36] speaker_1: A nechci si zatím pustit ten prompt jako u sebe, aby ti to oskenovalo tys, ten repozitář. Tam jde o to, jako jestli-

[19:42] speaker_7: To klidně můžu, ale tak to poběží samo, že jo.

[19:44] speaker_1: No vždyť jo, ale tak můžeš to spustit, protože to trvá patnáct minut podle rozsahu.

[19:47] speaker_7: A kde to najdu se?

[19:49] speaker_1: V tématech, v tom mojem tématu je tam v threadu-

[19:52] speaker_6: První kalendář.

[19:53] speaker_1: V threadu tam je prompt.

[19:55] speaker_7: Jo.

[20:00] speaker_2: Z-nezavadil jsi o OpenWoolf někdy?

[20:03] speaker_1: Ne, ale už jsem teďko na základě tady od Kryštofa feedbacku jsem už rozjel tady research na, na možný jako řešení na to, no.

[20:11] speaker_2: Na Obsidian a tak?

[20:12] speaker_1: No na všechno jako prostě.

[20:13] speaker_6: Obsidian by mě taky zajímal.

[20:14] speaker_1: No, no.

[20:18] speaker_2: Kde jsem to. Já mám-

[20:21] speaker_1: Já, já mám trošku jako nechuť vlastně k adopci nějakejch větších řešení na-

[20:30] speaker_2: Je to lepší si to sám napsat.

[20:31] speaker_1: Který maj learning, který mají learning curve a tak, protože tohle mi přijde takový vlastně hodně lightweight, že to je spíš jako ment-mentální model kolem toho a pak nějaký super jednoduchý, jako že máš definovanej front matter to, co tam chceš. Víte všichni, co je front matter?

[20:45] speaker_2: Ne.

[20:45] speaker_1: Když máš, když máš markdown, tak ten je normálně textovej.

[20:49] speaker_2: Ano.

[20:50] speaker_1: Ale na, ale nahoru se dá přilepit jako metadata vlastně, kterýmu se říká front matter, který si můžeš libovolně definovat a ty jsou pak strojově čitelný. Takže místo toho, aby, aby ten Claude musel jako načítat všechny ty sou-, ty jakoby ty, ten obsah těch, těch, těch markdownů, tak si, tak si napíše sám real timu jednoduchej Python, kterej mu prostě to projede a řekne mu: „Hele, dej mi všechny tady s těma štítkama, tady s tou expirací, prostě tady to.“ A on mu to vytáhne jako subset z toho repozitáře jako relevantních dokumentů.

[21:20] speaker_2: Okej.

[21:21] speaker_1: Jo. Takže, takže je to o definici nějakýho front matteru. A takže, no, takže, takže tak. Takže vlastně tím, že je to hlavně men-mentální aktivita, jako je to, tak to, tak, tak jsem, tak se zdráhám do toho brát nějaký jako heavy řešení, když nemám tu potřebu mít tam ten mezi s-, mezi repozitářovej nebo týmovej vlastně jakoby pohled, jo, kterej to třeba někdy sjednocuje, tak, tak to já nepotřebuju, no.

[21:48] speaker_3: Ehm, okej.

[21:49] speaker_2: Já tady k tomu threadu jako mám blízko samozřejmě a mám půl roku, používám ten OpenWoolf na repozitáři toho Squaredu, takže jakože tam by mohly být nějaký zajímavý jako insighty, jestli a čistě tak, jak byl out of the box vlastně, tak by z toho mohly se vytáhnout takový insighty, jako jak moc je to užitečný.

[22:12] speaker_1: Okej.

[22:13] speaker_2: Co to dělá.

[22:13] speaker_1: Můžu se ti pak vyzpovídat teda nějak, můžu se pak třeba přidat na chvíli.

[22:16] speaker_6: Na to bych se asi přidal taky, no to by mi taky-

[22:18] speaker_7: Ale můžu se zeptat?

[22:20] speaker_1: No.

[22:20] speaker_7: Kolik z vás dělá jako software engineering, že reálně staví nějakou aplikaci a, a co dělá případně zbytek z AI?

[22:29] speaker_2: Já to v podstatě taky nevím.

[22:30] speaker_7: Kdo to nestaví a jakou-

[22:33] speaker_3: Tak uděláme ještě rychlý kolečko, kdo co dělá. Ještě uděláme rychlý kolečko, kdo co dělá. My jsme to skipnuli, no tenkrát. Ale jestli by bylo fakt rychlý, protože máme deset minut plus.

[22:42] speaker_1: Jo.

[22:43] speaker_3: Tak já začnu benchmark rychlosti. Dělám produktovej management s překryvem na, s velkým překryvem na UX a teďka i vývoj vlastně. A strávil jsem nějakej čas tejden ve vědě, se k tomu vracím s agentama.

[23:00] speaker_2: Ehm.

[23:01] speaker_3: Jirko?

[23:02] speaker_2: Já dělám vývoj, no, od tý doby, co jsme se neviděli, tak v podstatě-

[23:06] speaker_3: Že píšeš kód, generuješ kód.

[23:08] speaker_2: Tak.

[23:09] speaker_3: Jo, jo.

[23:10] speaker_2: Nějakou dobu jsem ho psal a teďka už bych to nedokázal.

[23:13] speaker_3: Jo.

[23:15] speaker_7: A já vlastně vyvíjím svoji appku. Je to software pro hostely. Jsem původně UI engineer. Dělal jsem to vlastně tři čtyři roky profe-profesionálně ve firmě a hodně mě zajímá jako nějakej AI engineering system, jak jako třeba spouštět agenty z jinejch agentů a takový věci. To dost exploruju a nastavuju si data, či mi to dobře jako šlape. A já mám na slipu ještě, že zároveň se zabývám sebepoznáním a seberealizací skrze human design a genový klíče, tak to jenom zmiňuju, že tohle jsou tak moje dvě hlavní aktivity.

[23:54] speaker_3: Ehm, ehm.

[23:55] speaker_5: Jo, já jsem začínala svoji kariéru software developera, ale učím se všechno možného, takže. No a teraz prostě nevím, rok robím iba s agentami coaching. A, hm. Študovala som psychológiu a teoretickú fyziku.

[24:15] speaker_3: Yes!

[24:17] speaker_5: Ale psychológiu som nedokončila, to bola taká ako chuť a mám jeden rok. A takým nezabávám se teda rozvojom. On ma nezajímá.

[24:25] speaker_6: Mě nezajímá seberozvoj.

[24:29] speaker_0: Už seš hotovej, jo?

[24:31] speaker_6: Tady finále prostě.

[24:32] speaker_2: I'm good.

[24:33] speaker_1: Jenom k tomuhle zajímavá věc, mně jakoby na mojí cestě došlo, že to není o seberozvoji, ale o sebepoznání. Že jako seberozvoj je učit se na klavír, ale sebepoznání, jakoby seberozvoj je důsledek sebepoznání jakoby. A člověk se pak rozvíjí v tom, co je opravdu pro něj, protože lidi se můžou rozvíjet i v tom, co pro ně není. Jsem zjistil třeba jako na základě vlastních zkušeností.

[24:57] speaker_6: Ok, dík.

[24:59] speaker_0: Pojď dál chviličku. Moje role v naší firmě je kon-- nicneříkající konzultant. Eh, je to kombinace vývojář, eh, architekt, ale ne na úrovni aplikací, ale na úrovni datovejch řešení. My budujeme datový sklady, eh, reporting, kterej je nad tím postavenej a nějaký pokročilý datový analýzy, tam bude pro to prostor, vůle a, eh, finanční kapacita. Takže různý modelování, predikce, eh, segmentace jako v oblasti, v oblasti pokročilé datový analýzy a vystudovanou mám matiku, když tady se, vedle ke, ke studijnímu backgroundu.

[25:39] speaker_1: Takže modeluješ a děláš architekturu, ale ne-negeneruješ kód nějakej aplikační-

[25:45] speaker_0: Ne apli-

[25:45] speaker_1: Spíš už tak datovej.

[25:46] speaker_0: Přesně tak, ne aplikační kód, ale vlastně budujeme ty řešení jako takový. To znamená, je tam hodně SQLka jako nějakejch transformací, Python, Rko pro ty, eh, pro ty datový analýzy a je tam dost infrastruktury okolo, prostě nějaký jako pipeliny, nástroje, který, který dělají, aby to datový řešení běželo. Což dneska dělám samozřejmě tak už jako kód jako takovej taky moc nepíšu, no.

[26:14] speaker_6: Já jsem kód psal spíš dřív a teď se k tomu vracím přes jako AI k nějakýmu ještě jako programování. A mojí hlavní motivací bylo udělat nějakej software na výpočet daní, eh, protože jsem potřeboval prostě ně-nějaký komplikovaný věci vyřešit. A no, to je asi tak. Jo a jinak background mám, eh, počítačovou bezpečnost, computer security jako studia, no.

[26:44] speaker_2: Že by investoval do nějaký tý inference, nebo?

[26:47] speaker_6: Co je inference?

[26:48] speaker_2: Jsi psal, že, že si chceš stavět nějakej rig, ne?

[26:52] speaker_6: Jo takhle, to jsem, to jsem psal. No a na nějak-- jako neinvestoval, neinvestoval, ale přijde mi to takový, teď, teď, no, jak, jak kluci taky přišli s nějakým tím vlastním řešením, tak, tak mož-- jako, jako možnost. No a potom co, co psal vlastně Tomáš, nějaký ty rozpo-rozpočty a věci, co jestli, co se vy-vyplatí, nevyplatí. Tak, tak já tam pořád vidím jako potenciál právě spíš pro nějaký, eh, jako věci, data, který, který by člověk nechtěl pustit do světa, tak, tak jako na tom počítat takovýdle nějaký věci. A třeba v kooperaci s nějakým jako placeným plánem by se to mohlo dát nějak použít. No nevím, to, ale nemám, ne, neinvestoval jsem.

[27:34] speaker_1: Já jsem to zvažoval a, eh, po zralé úvaze jsem to odmítnul, protože mi to, protože ne-nechci nést ty rizika obrovský, který tam jsou.

[27:43] speaker_2: No a Kuba Zech tady asi jo, že?

[27:45] speaker_1: Jo, asi jo no, jo, jo.

[27:47] speaker_2: Okej, tak byste měli prostor se s ním pobavit, ne asi.

[27:51] speaker_1: Jo, ale tak je to o světonázoru nějakým, si myslím, je to spíš nebo, no jasně, no. Hele, já jsem, já jsem vlastně analytik, vývojář, produkťák a teďko podnikatel. Mám nějaký jakoby, živím se vývojem jako na hodinově normálně, ale jinak mám nějakej svojej jako jeden startup, kterej běží už třeba, nebo jeden projekt, kterej běží třeba tři roky už a jeden, kterej teďko rozbíhám a chci stavět AI firmu. AI firmy chci stavět a, eh, soutěžím o Forbes Fifty Under Fifty.

[28:36] speaker_6: Kategorie Over Thirty.

[28:38] speaker_1: Good luck.

[28:41] speaker_2: Já to nechci-

[28:42] speaker_1: To je dobrý, že každou dekádu to můžeš jako posunout, víš?

[28:45] speaker_0: A ještě se ti-

[28:46] speaker_2: A já vás-

[28:47] speaker_0: Přesně tak, jako to můžeš-

[28:49] speaker_6: Thousand Under Thousand, že jo.

[28:51] speaker_1: Když se dožiješ hodně dlouhého věku, tak pak vlastně skoro může být auto přijatej. One twenty under one twenty, tak bys automaticky vyhrál.

[28:59] speaker_6: To je potom ten senior developer.

[29:02] speaker_0: On to bude spíš one twenty over one twenty.

[29:04] speaker_6: Senior senior developer.

[29:08] speaker_2: Já ještě takový téma jako netechnický a ne-nemělo smysl ho pitchovat, ale jakoby jestli vám to nevadí, tak mě právě zajímá to, eh, že já mám, já jsem teda skončil jako developer za, za hodinu a asi už se k tomu nebudu vracet a mám pocit, že takovej osud jako potká nás eventuálně-

[29:26] speaker_0: Tys to řešil.

[29:28] speaker_2: A asi i další jakoby profese. Tak já bych jako nad tím chtěl diskutovat jako spíš jako, jak se cejtíme, kdo, jak, jak to kdo vnímá a todleto jakoby.

[29:41] speaker_1: A nedáme si to jako obědový téma spíš?

[29:42] speaker_2: Jo jo, jenom to tak nadhazuju, že to je pro mě teďka hodně téma, no.

[29:47] speaker_1: Je to dobrý, protože, eh, jo, mám k tomu co říct a na co se zeptat.

[29:52] speaker_0: Mě by to taky zajímalo.

[29:54] speaker_6: Ok, bavíme se o času, profesorovi, hodina.

[29:59] speaker_1: To tak jo.

[30:00] speaker_0: Mimochodem to teda jenom tady, on to tady trochu vyznělo, tak my jsme se do tý inference s klukama z Kosmikcompu pustili.

[30:07] speaker_1: Já vím, no. Jako, jako s Honzou Kubantem.

[30:11] speaker_2: S Honzou? Ne. S Kubou Zechrem?

[30:13] speaker_0: Jo.

[30:14] speaker_1: Ne, já vím, ale Honza Kubant psal něco, že-

[30:16] speaker_6: Že by se mu to taky mohlo hodit do práce?

[30:17] speaker_1: Že se, že se, že do toho bude investovat. Tak nevím, jestli to máte jako společný nebo jako separátně.

[30:23] speaker_0: Ne, to máme separátně.

[30:23] speaker_1: Vy to máte jako za firmu?

[30:25] speaker_0: Ne, já jsem do toho šel s rodinou jako se švagrovo.

[30:28] speaker_1: Ok, ok.

[30:30] speaker_2: Já teda, já teda nemám k tomu ten background. Takže jste jako investovali do jejich projektu?

[30:34] speaker_1: Ne, ne, to je jinak. To je, oni nabídli, že si můžeš za nějakejch dvě stě deset nebo dvě stě patnáct tisíc koupit GPUčko nějaký, nevím, nějaký devadesát šest giga ramky. K tomu zaplatíš šedesát tisíc jako podíl na tom serveru a do toho serveru se nacpou čtyři karty. Můžeš si koupit klidně všechny čtyři, jeden, dvě, tři, čtyři a oni to pak budou vlastně pronajímat. Oni zajišťují ten byznys zatím a ty s-- a berou si z toho dvacet pět procent z toho čistýho zisku. To znamená náklady minus, výnosy minus náklady. A tobě zbyde ten zbytek.

[31:04] speaker_0: Tam je jenom lehký rozdíl, že oni si berou jako z toho hrubýho, takže oni si vezmou-

[31:08] speaker_1: Ne z hrubýho, promiň, z hrubýho.

[31:09] speaker_0: Berou si dvacet pět procent od toho, odečte elektřina primárně a zbytek je, je tvůj.

[31:16] speaker_2: Ok, takže to není tak, že vy to využíváte, ale oni-

[31:20] speaker_0: Je to tak. My to nevyužíváme napřímo.

[31:22] speaker_1: Ani nemůžeš. Je to jako buď anebo. Buď si to využij sám, anebo to dej k dispozici na prodej.

[31:29] speaker_2: Cool.

[31:32] speaker_0: Ty jseš jako vlastníkem těch grafických karet a máš s nima smlouvu vo, o nájmu a vlastně monetizaci toho hardwaru. A oni to, oni to pronajímají, berou si z toho feečko a tobě to vyplácení. A jako teď, teď to rozjíždíme. Teď, teď se nějak akorát podepsaly smlouvy.

[31:49] speaker_2: Jo. Takže se dá ještě nastoupit.

[31:52] speaker_0: Jo rozhodně jako kluci, co já vím, tak, tak do toho teďko šlapou, šlapou dost, no.

[31:58] speaker_1: Jako jejich value je, že uměj sehnat ty karty. Jo, jako pod tržní, ne pod tržní cenu, jak se snažím, tržní cena, ale jako o padesát tisíc levnějš, než by sis je sehnal na Alze třeba.

[32:08] speaker_2: A ta karta je tvoje?

[32:09] speaker_0: Ano, ta karta je tvoje.

[32:09] speaker_2: Takže opravdu, kdybys řekl: „Hele, odcházím, beru kartu.“

[32:12] speaker_1: No jasně.

[32:13] speaker_0: Tak to jde. Má to nějaký smluvní podmínky, kdy kluci to chtějí, jako aby se jim to vyplatilo to zapojení a tak, tak chtěj, aby si s nima jako spolupracoval aspoň rok. Ale jinak todlencto jde. Můžeš si kartu vzít a pak ji prostě střelit nebo jiný. Jde, jde todlencto ale.

[32:28] speaker_1: Hele, pojďme tohle nechat na oběd. Teď už se okrádáme o čas na ten, naše projekty.

[32:32] speaker_0: Souhlas, souhlas. Jo. Eh, tak my máme teďko půl hoďky i tebe jako devil's advocate. Eh, já bych byl pro za, za moje téma teda kdo, kdo jde se mnou, tak, eh, nás se teď asi nejí, tak jestli zůstaneme tady.

[32:51] speaker_2: Tak jo.

[32:51] speaker_0: A řekli byste si nějakou, nějakou mapu.

[33:06] speaker_1: Můžu začít devil advocatit.

[33:08] speaker_0: Yes, já si tady k tomu možná budu psát rovnou poznámky. Jak?

[33:13] speaker_1: No mě vlastně-

[33:14] speaker_2: Máš tady repo, promiň, něco třeba, že bysme tam rozjeli-

[33:17] speaker_0: A pro mě pak přijdeš, jo?

[33:19] speaker_1: Jo.

[33:19] speaker_0: Repo ještě nemám na to. A klidně ho-

[33:24] speaker_2: Ne, tak začnem klidně to povídat.

[33:28] speaker_1: Hele, já jsem tam jenom zaslech, mě tam jako vy-- trigrovalo nebo jako, no trigrovalo mě tam v dobrým slova smyslu, že jsi říkal vlastně, že ten cíl je jako podívat se, jako do čeho to sbírat a takovýhle věci. A mně vlastně nejkřehčí bod mně přijde, že vlastně pokud ty data mají bejt důvěryhodný, tak mně vlastně jako nejkřehčí bod toho celýho přijde to, jestli budeš umět normalizovat z různých zdrojů. Jo? To znamená, pojedu na horským kole, pojedu úplně stejnou cestu, prostě pojedem třeba různým tempem nebo ještě tam máš spoustu faktorů, co můžou ovlivnit to, jak jsou ty data zapsaný a, a jak je můžeš jako vlastně dostat do toho signálu, kterej pak budeš jako považovat za ten autoritativní, řekněme. A takže, takže to mně přijde jako nejkřehčí část tohohle celýho, že vlastně mimo to mi to přijde kompletně irelevantní, dokud se nevyřeší jakoby tahleta věc vlastně. Dokud nebudeš mít jako dobrou confidence nebo, nebo dokud to riziko nebude snížený natolik, nakolik seš ty ochotnej akceptovat vlastně, aby, aby jsi věděl: „Jo hele, vím jak to, vím jak to nejenom sbírat, sbírat je jednoduchý, že jo. Někdo to nahraje, má to nějakej datovej formát, ten jako to je jako easy peasy, ale vím, jak to harmonizovat nebo normalizovat, aby, aby to pak bylo důvěryhodný vlastně, jo.

[34:55] speaker_0: Souhlasím, je todleto super point. Zároveň todlencto jsme schopný dost ověřovat i my na našich datech. Ne, že bych ty data měl teďko už posbíraný, ale mám na todlencto jako nadizajnovanej test myšlenkově, že prostě jednu trať si projedu na víc kolech různýma rychlostma, posbírám z toho ty signály, a když navrhneme ten, ten normalizační proces, tak jestli mi vlastně z těch dat vypadne jedno a to samý, což by ve výsledku měla bejt vlastnost ne tý konkrétní jízdy, to kdo to jel, jak to, rychle na jakym kole, ale měla by to bejt vlastnost tý, tý cesty.

[35:29] speaker_1: Těch otřesů jakoby vlastně. Takže akcelerometry jsou to, co chceš použít na, jakoby na, jako signál.

[35:36] speaker_0: Ano, aktuálně si myslím, že to je, to je to, z čeho se bude vycházet vlastně. Je to zároveň jako v každým, každým-

[35:43] speaker_2: Ale jako pardon, já bych teda ještě bral sebe back. Pokud to má bejt jako užitečný pro ty lidi-

[35:49] speaker_0: Ano.

[35:50] speaker_2: Tak jak si představuješ, že to plánování pak probíhá? Že vlastně chceš mít granularitu jako gravel, asfalt, prostě kořeny. Anebo potřebuješ mít jako nějakou granularitu asfaltu.

[36:09] speaker_0: Potřebuju.

[36:10] speaker_2: Ale v tom se úplně všichni jakoby nevyznaj. To je bod číslo jedna a bod číslo dva je, že přece i na jako hnusný cestě umíme jako jet tak, že se záměrně vyhýbáš velkým podhouľům nebo něčemu, že jo.

[36:22] speaker_0: Pokud to jsou fakt podhouly, tak, tak jo, ale pokud je to, a s tím jsem se právě teďko potkal, silnice, která je rozpraskaná jako po celý svojí šířce a slepená, tak ani tam se tomu jako nezvládneš vyhnout. Ale z, se zase ze satelitního snímku nebo právě z toho Surface type, kterej už je třeba v OpenStreetMapách vy-vyplněnej, tak to nepoznáš.

[36:43] speaker_2: Jak moc je to dobrý?

[36:44] speaker_0: Přesně tak.

[36:45] speaker_2: No ale jak, jako když bych, když bys mně měl teda vysvětlit, jako jak moc je to dobrý nebo prostě jestli to je vhodný pro ten typ toho mýho tréninku.

[36:54] speaker_0: Já bych chtěl jako vymyslet tu stupnici, na který tohleto budeme, eh, budeme měřit a zároveň abychom ty data, který posbíráme, normalizujeme, abychom je byli schopni namapovat už na tuhletu stupnici. To znamená, aby v tom nebyla ta subjektivita těch konkrétních lidí, ale aby tam byla prostě stupnice třeba od jedný do desíti, eh, která bude reflektovat to, jak ten povrch je, je kvalitní. A na to namapujeme ten, ten náš sběr dat.

[37:23] speaker_2: Ok.

[37:25] speaker_1: Já si myslím, že to je jako hypotéza, že ta hypotéza je: eh, jsme schopný vytvořit dataset a interpretovat ho tak, aby to bylo, aby to bylo užitečný pro někoho, kdo si plánuje trip na v podstatě jakýmkoliv kole, že jo. To může bejt jako, hele, chci jet normální silničkou tudy a třeba tam je prostě strašná cesta, na kterou bys jel jenom na horáku třeba. To nemusí bejt jenom chci jet jako rychlostní etapu nějakou, že jo, prostě jo. Takže aby to bylo užitečný pro toho, pro toho uživatele, kterej si plánuje tu cestu a pro kterýho je to jako podstatný. Takže si myslím, že je ta hypotéza jako grand hypotéza, prostě že to, a tam je otázka jako ještě produktová, dá ti to hodnotu, nebo komu to dá hodnotu, ale to tady můžem podle mě jako discardnout, protože tím uživatelem seš ty vlastně.

[38:12] speaker_0: Ano.

[38:13] speaker_1: Ale když to vyřeší problém jenom pro tebe, tak budeš happy vlastně.

[38:15] speaker_0: Je to tak.

[38:16] speaker_1: Takže jestli je takovejch jako ty deset nebo tisíc nebo sto tisíc v tudle chvíli jako není podstatný vlastně. V tudle chvíli je to jako technický cvičení o tom, je-jestli jsme, jestli seš schopnej, eh, to vlastně nasbírat, protože, no jasně no, tam je otázka, jestli, protože ono by to pro tebe mohlo bejt užitečný, i když bys nedělal tu normalizaci, že jo. Protože ty bys teoreticky si ty data mohl nahrát jako sám.

[38:42] speaker_0: Ano.

[38:42] speaker_1: Ale to by ti bylo k hovnu, že jo? Takže ty malinko, není to tak, že malinko jako předpokládáš, že to budou používat ostatní a sbírat ty data?

[38:50] speaker_0: Jo, jako ta, ten tvůj myšlenkovej postup je super, eh, že nad tím, eh, nad tím přemejšlíš. Eh, je to tak. A tím já vlastně dělám ten step, že jako vím, že pro mě to bude užitečný, protože třeba do toho Polska já jezdím jednou ročně a ty trasy, který tam mám najezděný, já si to nepamatuju. A navíc se to v průběhu toho roku, ono se to vlastně změní, že nějak-

[39:10] speaker_2: To jsem se taky chtěla zeptat. Ty asfalty se mění, jo?

[39:13] speaker_0: Přesně tak. Oni tam vyasfaltujou jako nějakou polní cestu, oni prostě, nebo tam natáhnou novej asfalt. Takže ono to je relevantní i jenom pro mě, abych, abych tohleto věděl. Ale už rovnou vím, že jako jsou další lidi, jako jsem já, který, pro který by tohleto byl, byl přínos. A potom vlastně ten užitek z toho je, že my když budeme mít tu stupnici nula až deset, tak potom ten člověk si může naplánovat trasu, kdy řekne: „Ok, jedu na gravelovi, na kterým je mi to jedno vlastně a můžu jet po jakýkoliv cestě. Anebo dneska jedu prostě na ostrý silnici a potřebuju mít, eh, jako kvalitní silnici, takže na týhletý stupnici, pokud to bude takováhle číselná, tak chci jenom osm, devět, deset hodnoty.

[39:56] speaker_1: To je možná vlastně jako extrémně důležitá otázka, eh, jestli teda počítáš s tím, že se zapojí další anebo ne, jo. Protože to vlastně z toho dělá jako produktový, najednou to musí bejt produktový, že jo. Najednou musíš mít vyřešenou tu normalizaci, protože bez ní to nebude fungovat. Budou ti sbírat data lidi, ale jeden, pro jednoho to vyhodnotí takhle, pro druhýho takhle. Jak to budeš průměrovat, prostě jo, je tam jakoby tohleto tam, tohleto tam jako je, no.

[40:23] speaker_0: Jo. Eh, já bych to chtěl mířit už rovnou produktově. To znamená tudletu stěžejní hypotézu, kterou ty jsi dobře pojmenoval, tak ověřit vlastně rovnou na začátku, než se, než se rozběhneme dál. Eh, byť jako ten step back je vlastně, že bych si to posbíral jenom pro sebe a měl bych to potom pro sebe jako, jako vyhodnocení, kde bych se mohl jako úplně zbavit tý normalizace.

[40:46] speaker_1: Ale pak k čemu ti to je, když tu trasu stejně musíš nejdřív projet.

[40:48] speaker_2: Já bych to nepoužívala.

[40:49] speaker_0: Protože si to nepamatuju.

[40:50] speaker_1: Ok, ok, ok, jasně. Chápu, že když najezdíš třeba deset tisíc kilometrů za rok, tak to není deset tisíc kilometrů jednou jedinou cestou, ale je to prostě nějaký opakování prostě. A, a tak to asi chápu, no.

[41:01] speaker_0: Přesně tak.

[41:01] speaker_1: Ok, fair enough.

[41:03] speaker_0: Ale tam ten užitek, furt ho tam vidím, ale je menší, než kdybychom to zvládli udělat produktově, aby to bylo rozšiřitelný i pro ostatní lidi. A mně právě přijde, že skrz ty platformy, jako je třeba Strava nebo ty Cycle OSM, to jsou jako zajímavý platformy. Těch, těch cyklistických nadšenců je spousta a myslím si, že kdybychom vymysleli ten vlastně framework sběru a normalizace těch dat, tak že by to bylo zajímavý i pro, i pro další lidi.

[41:32] speaker_1: No.

[41:32] speaker_2: Hele, nemají Garminy akcelerometr? Že by to v těch fit filech bylo jako?

[41:37] speaker_0: No nemaj, nesbírá se to do těch fit filů a ještě jsem, co jsem si o tom hledal, tak, eh, oni nemají snad dostatečný rozlišení, že to jsou schopný jako maximálně sbírat v nějaký frekvenci.

[41:48] speaker_2: No jasně.

[41:48] speaker_0: A ta není dostatečná pro, pro tuhletu úlohu.

[41:52] speaker_1: To taky vlastně můžeš jako poznat během toho cvičení, že budeš muset ty data preprocesovat na tom zařízení nějakým způsobem, vlastně snížit jejich rozlišení, ale zachovat jejich nějakou hodnotu. Jo, že prostě nebudeš mít, jako že těch dat je hrozně moc, že jo. Ten akcelerometr jako jede hrozný bomby, že jo, prostě. Takže, jo, takže to je taky možný. Hele, ještě mě jenom napadá vlastně jenom jako ještě k tomu, k tomu produktu, jo. Protože, hm, ono by mohlo bejt snažší, než se snažit o nějakej jako přístup, kterej sjednotí data z horskýho kola, z rekola a prostě z tvýho hroznýho, hrozně nabušenýho biku.

[42:27] speaker_0: Jasný.

[42:28] speaker_1: Jo, tak, takže by ses jako zaměřil na nějakej segment, kterej bude mít jako menší ty rozdíly mezi tím, mezi tím sběrem, jo. Věřím, že seš v nějaký komunitě asi lidí, který jezdí na kole na nějaký úrovni a třeba bys tam byl schopnej tohleto jakoby udělat. To vlastně by mohl být jako super zajímavý produkt prostě, nebo produkt projekt. Sebrat prostě deset, padesát, sto lidí, který dělají něco podobnýho jako ty, že jo. Nebo jako ty, to je možná hodně podobný, ne? Já nevím, já tomu nerozumím, jo, ale Jirka se připravoval na triatlon. Taky máš silniční kolo, ne?

[42:56] speaker_2: Jo, my děláme to samý.

[42:58] speaker_1: Děláte to samý. Takže to by tě taky jako zajímalo v tý době, kdybys třeba trénoval, tak by to pro tebe bylo jako zajímavý. Byl bys třeba ochotnej se do toho zapojit, jako do toho sběru těch dat třeba v první fázi.

[43:07] speaker_2: Jo, jako já jsem svýho času byl velkej geek.

[43:10] speaker_1: Jo jo.

[43:10] speaker_2: Na tyhle věci.

[43:11] speaker_1: Když tak jakoby nějak to zkusit vlastně oříznout.

[43:14] speaker_2: Mhm.

[43:14] speaker_1: Jo a, a aby, aby si, aby si právě neměl tolik technických problémů, jak ty data normalizovat.

[43:21] speaker_0: Jako je tohleto dobrá myšlenka, protože tohleto vlastně by default zajímá jenom silničáře, protože na horským kole, jako jestli ti to tam třeba jako pad hodně anebo jenom trošku, jako není zas tak velký-

[43:34] speaker_2: Ale to bych třeba zas nesouhlasil. Já jako si-- silničář, jako grevlař.

[43:38] speaker_0: No.

[43:38] speaker_2: Vlastně taky chceš naplánovat trasu, kde jako vlastně nepojedeš po asfaltu a pojedeš mimo silnice s těma autama a bude to hezky propojený a bude tam jakoby lesní úsek, kterej není tak těžkej, abys ho nemoh project, ale zároveň jakoby je v pohodě, že ho na tom grevlu dáš.

[43:53] speaker_0: Jo, rozumím.

[43:54] speaker_2: Takže jako myslím si, že to, ale já bych to ještě rozčtvrtil jinak, jako. Pakliže to má ten cíl jako naplánovat ty trasy-

[44:01] speaker_1: Mhm.

[44:02] speaker_2: Tak věřím, že vlastně Strava je schopná z těch, z toho kvanta těch dat, co má, eh, tu trasu ti naplánovat jakoby stejně dobře jako ty, když budeš mít tyhlety bohatý jako normalizovaný data o tom, jak to třese.

[44:17] speaker_1: Mhm.

[44:18] speaker_2: Protože oni jsou schopni to přece jakoby dopočítat z toho, jak tam ty lidi jezděj rychle.

[44:23] speaker_1: Mhm.

[44:23] speaker_2: Oni vědí, co ty lidi mají jako za kolo, protože si to všichni vyplňujou, že jo. Jaký bylo v tu dobu počasí a navíc tu datovou řadu ty jakoby, ty tam ty lidi pošleš, oni tu trasu projedou jednou a jak často budeš mít aktualizovaný ty, ty data pointy, že jo? Zatímco Strava uvidí prostě, že se tady vyasfaltovala nová silnice, protože najednou ty lidi zrychlili, že jo, všichni prostě.

[44:46] speaker_0: Jo jo jo.

[44:46] speaker_2: A tak dál. Tak jakoby já bych to rozčtvrtil jako jenom takhle, že jestli oni mají tenhleten tool-

[44:50] speaker_0: Okej.

[44:51] speaker_2: A je to v tom prémiu-

[44:52] speaker_1: Mhm.

[44:52] speaker_2: Tak podle mě dosáhneš toho tak, že si vlastně budeš plánovat tu trasu jako-

[44:57] speaker_0: Na Stravě.

[44:57] speaker_2: Na Stravě.

[44:58] speaker_0: Okej.

[44:59] speaker_1: A tak to je něco, co můžeš snadno otestovat, že jo. To jakoby nezabije dnešní session tohle.

[45:04] speaker_2: Asi, asi ne, jako já, mně, mně by to samozřejmě, mně to jako přijde samozřejmě zajímavý naučit se používat akcelerometry, že jo.

[45:12] speaker_0: Jasný. Jo, ono ji to nezabije, ale pokud bychom to cílili produktově a vlastně by tady takovej produkt už existoval. Já ne-nepoužívám Stravu v tom premium subscription, tak já tohleto vlastně neznám. Tak by vlastně takový produkt tady už existoval. A co se mi na tomhletom líbí je, že Strava to je schopná jako umlátit těma velkejma číslama, že ona se jako s tou normalizací nemusí zas tolik prát, protože to může jako zprůměrovat.

[45:36] speaker_2: No.

[45:37] speaker_0: A, eh, a to dá už jako nějakej objektivnější, objektivnější obrázek o tom.

[45:45] speaker_1: Hele, máš, máš zatím i nějakej jakoby business intent? Nebo je to čistě jako, nejseš jako na prachy?

[45:51] speaker_0: Ne.

[45:52] speaker_1: Tak ok.

[45:52] speaker_0: Nebo teda jako-

[45:53] speaker_1: Máš rád peníze?

[45:57] speaker_2: To je blbá otázka.

[45:57] speaker_1: Ne, to je blbá otázka.

[45:58] speaker_0: Pučty, pučty pokryjí potřebu uživit rodinu, ale není zatím business intent. Jako vůbe-vůbec ne.

[46:05] speaker_2: Jasně.

[46:05] speaker_0: Přichází tohleto jako čist-čistě z osobního hlediska a osobního inten-intentu. Kdyby se to přetvořilo jako v nějakej business, business intent, tak se tomu jako nebráním. Ale není to primární cíl. Vůbec ne.

[46:16] speaker_1: Já osobně, kdybych to dělal já a mohl si sám sobě poradit tady tu session, tak bych vlastně ji zaměřil na vlastně tvorbu kvalitních hypotéz a metod, jak je vlastně ověřit. Jo?

[46:29] speaker_0: Okej.

[46:30] speaker_1: Jo, vlastně jakoby nechal bych si poradit v tom, řekl bych ten záměr, řekl bych to, co mě k tomu napadá, ty jako objections nebo ty takový nějaký ty, ty, ty překážky, který k tomu napadaj mě. Dal bych dohromady překážky s ním a pak bych dal dohromady hypotézy vlastně, co bude a nebude fungovat a jak si to jako ověřit, no.

[46:52] speaker_0: Okej.

[46:53] speaker_1: Protože, protože vlastně nemyslím si, že máš dost dat, abys tady dělal dneska nějaký výpočty nad tím. Jo a myslím si, že právě tam bude klíčový to srovnání těch různejch zápisů, eh, jo. Ty akcelerometry můžou mít i různou citlivost. Jo, jako že, že i když projedeš, i když bys projel to úplně stejně na stejným kole, tak stejně ten záznam z toho nebude úplně stejnej, že jo. Nebude binárně stejnej prostě.

[47:18] speaker_0: Aha.

[47:18] speaker_1: I kdybys to mohl projet úplně stejnou rychlostí a stejnou stopou, tak tam prostě budou nějaký nuance. Takže, jakože, takže bych vlastně chtěl teda vědět, jaký jsou ty hypotézy a co potřebuju udělat k tomu, jaký kroky potřebuju udělat k tomu, abych si to, a-a-abych si je ověřil.

[47:34] speaker_0: Jo.

[47:34] speaker_1: A pokud ta cesta vede třeba skrz nějaký jako strojový učení třeba, nebo byl jsi tady, když jsem dělal tu learning loop?

[47:43] speaker_0: Hele-

[47:44] speaker_1: Já jsem dělal, eh, minule nebo předminule jsem dělal workshop na, nebo jakoby tady v rámci AG mu jsem dělal vlastně algoritmizaci pomocí AI a bylo to o tom, že s, že mám takový skill, kterej vlastně se jmenuje Learning loop a, eh, a ten, ten, ten pomáhá se učit nad nějakou datovou sadou. Jo, takže třeba já bych měl tendenci se zeptat Clauda, jestli je to něco, protože ty nemáš big data.

[48:13] speaker_0: Nemám.

[48:14] speaker_1: Jasně. To znamená, ty máš nějaký small data, budeš mít desítky třeba maximálně. A navíc, navíc ty potřebuješ jako nejdřív podle mě jako, ty seš mnohem větší datový expert samozřejmě jako než, než, než já. Ale když bys to trénoval jenom na jedný trase, tu normalizaci-

[48:28] speaker_0: Ano.

[48:28] speaker_1: Udělal by sis trasu na pět kilometrů nebo něco a prostě jezdil po ní na kole Tam nazpátek, že jo, různý lidi, různý zrychlení a tak. A nasbíral by sis třeba třicet takovejhle výletů, jo, tak potom bys podle mýho chtěl trénovat něco, a n-ne trénovat machine learning v slova smyslu, ale třeba v algoritmizaci nebo v něčem-

[48:49] speaker_0: Ano.

[48:50] speaker_1: Aby, aby ti vyvinul metodu-

[48:52] speaker_0: Ano.

[48:52] speaker_1: Která to, která to normalizuje, která vlastně řekne: "Hele, na dvaceti výletech si zkusím otestovat, eh, si zkusím, budu mít dvacet výletů jako testovací vzorek. Na tom se budu učit normalizaci a proti těm deseti budu testovat, jestli ten můj algoritmus, kterej to normalizuje, jestli z toho vyprodukuje něco hodně podobnýho, s čím jsem spokojenej vlastně, jo. Takže to, to by byl za mě takovej jako první chunk of work, kterou jako můžu udělat a tam zjistim, jak, jestli a jak rychle jsem schopnej, eh, vlastně to natrénovat do tý kvality, kterou si představuju, že tam jako za tím bude, jo. A když to budu mít na jedný trase, tak můžu přidat víc, víc tras, rozšířit tu tréninkovou sadu prostě a jako zjišťovat, jak se mi-- jo, protože ty prostě n-nevíš, jak se ti ten normalizační algoritmus bude jako chovat, že jo.

[49:39] speaker_0: Jasný.

[49:40] speaker_1: Budeš tam mít víc, jako budeš tam mít nějaký pi-- nějakou pipelinu v tom, že jo, jako možná, eh, i hypotéza je, jako že třeba jestli budeš umět přenášet v-všechny ty akcelerační data, nebo jestli je budeš muset filtrovat na tom zařízení, jo. Jestli příklad, když bys měl lidi, který ti to pak budou sbírat, to znamená jenom jako, ještě sorry, ještě já jsem mluvnej, ale když to vezmeme v nějaký stage, to znamená, mám hypotézi, zkusím si natrénovat, jako zkusím si ověřit, nasbírat data, natrénovat primitivní algorit-- nebo nějakej algoritmus, kterej lze z těch, z toho malýho počtu dat, který mám, jo. A, a pak řeknu OK, jsem ready sbírat větší data, zapojím do toho pět lidí nebo deset lidí prostě, jo. A teďko tam na-narazíš na jiný hurdles typu jako někdo jede pět hodin a najede se mu to na zařízení třeba, nebo to není zpracovatelný, jo. Možná jo, bylo by samozřejmě skvělý, kdyby ses mohl jako tohleto celý jako dropnout. Tady to, že by ses nemusel zabejvat tím, jak ty data sbírat, že to prostě nasbíráš raw v těch zařízeních a raw se to zpracuje. To by bylo super, jo. Ale bral bych to jako hypotézu do toho, je možný s tím takhle počítat nebo jsou nějaký casy, který budou znamenat, že budu muset vyvinout ještě vlastně jakoby, eh, jako on device zpracování, který změní tu, tu frekvenci, třeba změní to vzorkování nebo jakoby to rozlišení a zachová to tu kvalitu dat. Což ti mimochodem zase vstoupí do toho učícího algoritmu, že jo. To ti ho zase vlastně najednou zruší tu práci na tom, na tom, na tom normalizačním algoritmu, protože už ho najednou nebudeš feedovat jako raw datama, ale nějakejma zkresleným nebo nějakejma jakoby komprimovanejma datama, že jo.

[51:15] speaker_0: Jasný.

[51:15] speaker_1: Takže ti to zase může jako měnit tu kvalitu, jo. Eh, takže vlastně tohle bych chtěl vědět, jestli to budu moct dělat raw anebo ne, případně za jakých okolností. No a pak bych, eh, a-a pak bych teda sbíral testovací data od jinejch lidí a vlastně ladil ten algoritmus a sledoval, co mi to dělá s tou kvalitou těch dat a jak jsou moc jakoby využitelný, no.

[51:37] speaker_0: Jo. Jo, jo, přemýšlíš, eh, přemýšlíš o tom dobře. Tam jenom pro kontext, ty data, který jsem posbíral, eh, jenom teďko jednou, tak je jízda zhruba čtyřicetiminutová, kde jsem posbíral data jednak z akcelerometru a z, eh-

[52:05] speaker_1: GPS.

[52:05] speaker_0: GPSky a má to za čtyřicetiminutovou jízdu to má necelý mega.

[52:12] speaker_1: Hm, tak to je pohoda. A s jakou frekvenc-- j-jak se tam jakoby jakou, jaký rozlišení mají ty akcelerační data? To mi přijde jako hrozně málo dat vlastně na čtyřicet minut, když to může snímat, ty jo, mnohokrát za sekundu. Víš jakoby-

[52:26] speaker_0: Jo jo jo.

[52:27] speaker_1: Ale na druhou stranu to tak asi není tak velký, no.

[52:29] speaker_0: Přesně, já jsem to-

[52:29] speaker_1: Že když i kdyby to bylo desetkrát za sekundu a bylo to já nevím, kolik to může bejt jako bajtů, ty jo.

[52:34] speaker_0: No nic, to to je, to jsou dva řádky, že jo.

[52:37] speaker_1: Dva řádky, tak je to prostě vlastně málo, no. Desetkrát, desetkrát čtyřicet je čtyři sta záznamů nějakejch.

[52:43] speaker_0: Já jsem to měl nastavený-

[52:44] speaker_1: Ne to je za sekundu, sorry, krát šedesát. To je dvacet tisíc záznamů krát třeba kdyby to bylo jako jeden kilobajt, eh, tak je to dvacet mega, no. Takže to ani nebude jakoby ten jeden záznam nebude kilobajt zdaleka.

[52:56] speaker_0: No to vůbec ne, to se-

[52:58] speaker_1: To je pohoda. Takže tam asi nebude tenhleten problém vůbec. To znamená, i kdyby to byla prostě pětihodinová jízda, tak, tak by neměl bejt vůbec žádnej problém to uložit na tom devicu bez zpracování.

[53:07] speaker_0: Přesně tak, přesně tak. A to jsem to sbíral, eh, s frekvencí dvacet hertzů, takže jednou za padesát milisekund.

[53:14] speaker_1: Ale pořád bych z toho udělal jako hypotézu a nechal bych si ji rozstřílet, protože kdyby se ti náhodou stalo, že to budeš muset na tom devicu zpracovávat, já nevím, jakej by mohl bejt ten case, dnes ne, teď už vypadá, že to nebude objem dat, objemu dat. Nevím, co jinýho by to mohlo bejt, tak by ti to rozstřílelo, eh, ten algoritmus, kterej to bude zpracovávat.

[53:32] speaker_0: Jasně, protože bych nemoh mít ty raw data.

[53:33] speaker_1: Můžeš mít třeba jiný vzorkování, můžou bejt telefony, jeden to sbírá desetkrát za sekundu, druhej to sbírá dvacetkrát za sekundu.

[53:38] speaker_0: Jasný.

[53:39] speaker_1: Jo, jak se k tomu pak budeš chovat, jo? Pak to třeba budeš muset nějak zprůměrovat a možná už to pak budeš dělat jakoby on server a ne on device a bude to v pohodě. Jenom si určíš jako vzorkovací frekvenci, rozdíl na, normalizuješ data, že je zprůměruješ nebo něco takovýho, vlastně jakoby abys byl na stejný vzorkovací frekvenci pro ten tvůj algoritmus a pak to tam, a pak to tím projedeš, jo. Takže můžou být možná další důvody, jo, a to je podle mýho je to hrozně zásadní, protože by když by si v půlce cesty zjistil, že, že to musíš změnit, tak vlastně musíš přetrénovat celej ten, musíš změnit celej ten algoritmus.

[54:13] speaker_0: Eh, jasný, jasný, jako kdybych v půlce cesty jako toho vývoje jako-

[54:17] speaker_1: Toho vývoje, no, jako zjistil, že, že ne, že, že, eh, že ty data ti nestačí jako as is, no.

[54:26] speaker_0: Jo.

[54:26] speaker_1: Že, že, že s nima musíš dělat něco na tom devicu. Na serveru ti to nevadí, že jo, vlastně, jo, tam je to jako skoro jedno, no. Jo, mně to připadá úplně jako super projekt, strašně zajímavý.

[54:40] speaker_2: Jsem si tady zjistil, d-doplnění kontextu jenom jo? Já jsem si zaplatil mapy, ty český placený.

[54:47] speaker_0: Okej.

[54:48] speaker_2: A oni pak ti nabízej tady, jak můžeš si vybrat, jestli jedeš na silničním nebo na horským kole, když plánuješ trasu.

[54:54] speaker_0: No.

[54:55] speaker_2: Tak tam přibyl gravel.

[54:56] speaker_0: Okej.

[54:57] speaker_1: Hustý.

[54:58] speaker_0: Okej.

[54:58] speaker_2: Takže jakoby mapy už něco takovýho dělaj. A proč to ukazuju? Protože mně přijde, že právě potenciál tady tohohle toho projektu je jako sesbírat ty data, sedět na těch datách a sesbírat je pro někoho, komu je prodat.

[55:13] speaker_1: Proto jsem se ptal, jestli má rád peníze. Jo, protože vlastně ty vůbec nemusíš dělat, jako ty děláš jenom zdroj dat, že jo. Takže když zapojíš tisíc cyklistů do tohohle toho a řekneš Seznamu nebo Googlu nebo někomu: „Hele, mám data o, jako stokrát lepší data, než můžete mít vy, prostě o kvalitě povrchu," tak to třeba prodat potom, jo. Ale pokud tam nemá ten business mindset zatím, tak prostě-

[55:35] speaker_0: Jo, je, není tam rozhodně primární-

[55:36] speaker_2: Není to jen o cyklistech, jo, tadyhle zase ještě jsem to prohnal tím, že jo, Chytrým.

[55:41] speaker_0: Aha.

[55:41] speaker_2: A zajímavá věc je, že jako, že to je záležitost, eh, z tý obecní správy, že vlastně ty uživatele, který hodně zajímá, jak moc máš rozbitý silnice-

[55:54] speaker_0: Mhm.

[55:55] speaker_2: Tak v podstatě jsou jako samosprávný celky. Takže chápeš.

[56:01] speaker_1: To je super, protože ta tvoje cílovka těch cyklistů jezdí právě po tady těch mikrosilnicích, který jsou v těch samosprávných celcích, že jo.

[56:07] speaker_2: A ty prostě pak můžeš říct: „Hele, tak máme tady data z celý republiky jako a my můžem tady ukázat na ty, kdo mají nejhorší silnice. A, eh, a mimochodem jsou, jsou tady, to cituje nějaký, mimo Česko, že jo samozřejmě, firmy, který se tímhletím, tímhle věnujou.

[56:23] speaker_0: Na ty jsem narazil. Jmenujou se myslím Smart Road Sense a oni to dělaj z aut, že sbíraj tyhlety data. Že máš prostě telefon na, na palubovce a, a zapneš si tam nějakou aplikaci a ta tohleto sbírá a maj to udělaný jako pro, pro auta, kde tě zase zajímá trošku jiná-

[56:39] speaker_1: Mně připadá tohle jako super business model, protože ty nikdy neprodáš někomu, kdo jezdí au-v autě, ne?

[56:45] speaker_0: Mhm.

[56:45] speaker_1: Jakoby pojď, nainstaluj si moji apku a sbírej pro mě data.

[56:48] speaker_0: Jasný.

[56:49] speaker_1: Ale když cyklistovi nabídneš tuhletu super hodnotu: Hele, zapojse do tohohle, jak je to crowdsource, prostě. Sbírej data, dostaneš data.

[56:57] speaker_0: Mhm.

[56:57] speaker_1: Jo? Tak najednou můžeš mít easy deset tisíc cyklistů v Český republice, který tobě sbíraj data, který ty umíš komerčně použít a prodat je prostě někomu, kdo o ně-- a navíc, navíc budou mnohem citlivější, protože samozřejmě, jako ty sebereš, jako že to auto žehlí nějaký jako nerovnosti a tak, jo. Na druhou stranu cyklisti je zase objíždějí třeba, jo. Takže to je takový jako-

[57:19] speaker_0: Přesně tak.

[57:19] speaker_1: Otázka, jo samozřejmě, ale jako, jo, jako je to jako zajímavá, jako no.

[57:23] speaker_0: Jo, že myšlenka by byla taková, že jako těm uživatelům, těm cyklistům bychom ty data zpřístupnili za to, že je budou sbírat.

[57:31] speaker_1: Ano, ano.

[57:32] speaker_0: Ale na těch datech bysme seděli my, jako oni by k nim měli prostě nějakej řízenej přístup přes nějakou apku nebo něco. A my bysme to potom mohli prodávat třeba těm samosprávám nebo někomu takovýmu.

[57:44] speaker_1: Jasně.

[57:44] speaker_9: Umí na tom akcelerometry, eh, sbírat obcházení výmolů?

[57:50] speaker_0: Eh, hele, na to se schválně můžeme podívat, eh, jes-když to by bylo potřeba ověřit v těch datech. Ale jinak ten akcelerometr je jako-

[57:58] speaker_9: Jina, osa to je akcelerace, ale taky je to akcelerace.

[58:01] speaker_0: Je, je a on je na to jako hodně citlivej ten, ten akcelerometr. Takže to si myslím, že to na tom bude, bude jako pobírat i tahleta informace, jestli si jako nějak hodně se-

[58:11] speaker_1: Dobře, ale kdybys potom se tim jako chtěl se-seriózně zabývat, tak je pak třeba le-levnější nebo kva-jakoby obsáhneš toho víc, když si koupíš satelitní snímky a naučíš se z nich ty podholy jako, jako, jako tahat, že jo?

[58:23] speaker_9: Jo, to nemusí být jako takový podholy, věc to prostě můžou být nějaké jako, nevím, co ví.

[58:29] speaker_1: Jo a to je až jako druhotný, že jo.

[58:30] speaker_0: Přesně tak.

[58:31] speaker_1: A, a jakoby ten, ten initial loop je dobrej v tom, že, že když nabídneš cyklistům tu, tu, tu službu, tak tohle ti může běžet prostě samo. Sbírám, poskytuju, sbírám, poskytuju, sbírám, poskytuju. A když seš na critical mass nějakým nebo-

[58:45] speaker_0: Mhm.

[58:46] speaker_1: Dojdeš k nějakým informacím, který tě povedou k tomu, že máš business case.

[58:49] speaker_0: Jasně.

[58:49] speaker_1: Jo? Tak se můžeš zabývat nad tím: „Okej, teď se to musí takhle otočit ten problém." Najednou už to není o cyklistech, je to o tom, kdo potřebuje ty data, jaký potřebuje data, co tam zkoumá. Víš, jako že třeba chce satelitní nebo ne. Nebo mu stačí to, co říká jako Janka a tak dále. A už se na to jako díváš z jinýho, z jinýho pohledu potom, no.

[59:06] speaker_0: Jo. A to je-

[59:07] speaker_1: A předrekvizit ale je to, že ti funguje tady to kolečko-

[59:10] speaker_0: Jasně.

[59:10] speaker_1: Vlastně sbírám, poskytuju pro cyklisty, že jo.

[59:12] speaker_2: Ale na-na-napadlo tě, že bys, že by jsi byl schopnej tohleto vyzjistit ze Street View třeba? Jako kdybys měl prostě obrazový data, že-

[59:21] speaker_0: No, eh, tohleto má několik, několik limitů. Já jsem to zkoušel nejdřív ze satelitních snímků a ty na to nestačej. Eh, prostě třeba ty popraskaný věci, to z těch satelitních snímků nepoznáš. To jsou takový ty jako malý praskliny, který jsou nepříjemný pro jízdu, ale ze satelitního snímku to nepoznáš. Ze Street View část z toho už poznáš, ale obě dvě tyhle věci jsou hrozně prasný. Jako naplánuješ si stokilometrovou trasu a celou ji jako projít a takhle zkontrolovat, jako udělat to lidsky je hrozný. Můžeš na to najít jako agenta, kterej to udělá.

[59:57] speaker_1: Ale je Street View API, že jo, takže come on.

[59:59] speaker_2: Já jsem ho využil na to čtení těch textů. Já už jsem to prošlap-

[60:04] speaker_1: Čtení textů?

[60:05] speaker_2: Vezmeš si ulici.

[60:06] speaker_1: No.

[60:06] speaker_2: Několik bodů, tam si uděláš tu tři sta šedesátku.

[60:10] speaker_1: Aha.

[60:11] speaker_2: Z toho uděláš ty snímky, přečteš, co tam je kde napsáno.

[60:15] speaker_1: Aha.

[60:16] speaker_2: A zjistíš jakoby, co je podél cesty.

[60:19] speaker_0: Okej.

[60:19] speaker_2: Čili ty bys mohl jako vlastně-

[60:20] speaker_1: Jako třeba jestli někdo prodává med nebo borůvky, jo?

[60:23] speaker_2: Jo, to byla taková. Já vám ukážu, já vám to pak ukážu.

[60:27] speaker_0: Okej, okej. Jako jako-

[60:28] speaker_2: Ale jako že jsem to zku-zkusil. Takže můžem klidně třeba můžem- Zase zkusit nějakou tu cestu tímto způsobem zhodnotit.

[60:37] speaker_0: Jako že bysme vlastně vyřešil tímhle tím sběr těch dat jako takovejch. Vlastně ty data už jsou akorát v trochu jiný formě, než v jaký my je potřebujeme, že bysme jako akorát trochu jako pře-pře-přetransformovali, zprocesovali, aby byly, už abysme-

[60:49] speaker_2: No hlavně-

[60:50] speaker_1: Oni mají obrovskej problém tyhlety data, obrovskej problém, že se sbírají jednou za rok, za dva prostě.

[60:55] speaker_2: No, no, že nejsou tak-

[60:57] speaker_1: To je, to není dobrý, to pro tenhleten účel jako ti to je k ničemu.

[61:01] speaker_0: Ale pořád asi jako, pořád ten dataset bude jako bohatší než to, co ty seženeš zatím.

[61:10] speaker_1: No ale jenom jako jenom ve škále, ale ne v tom časovym, jakoby v tom, v tý frekvenci těch nebo v tý fresh, v tý jako čerstvosti těch dat.

[61:21] speaker_0: Pak je teda otázka, my jsme se dostali jako trochu k tý monetizaci. Ve chvíli, když budeme mít nějakou tu critical mass, jestli vlastně to, co má Strava, jestli jako to vlastně už-

[61:32] speaker_2: Strava to nemá teda by the way jakoby, nebo to, co jsem si já myslel, tak oni veškerý svoje data mapový mají z OpenStreetMap.

[61:40] speaker_0: Ano.

[61:41] speaker_2: A nad to teda samozřejmě mají to, co víme jako od uživatelů, ale v podstatě, jako ne, nepracujou na tom, nezkoumaj pot hole.

[61:52] speaker_0: Jo.

[61:52] speaker_5: No ale oni mají tam nějaké hodnocení ty trasy od uživatelů. To kombinuješ, na čem jezděj. Jako že když si zavedeš super tesné kolo a dobré hodnocení trasy, tak to jako už-

[62:01] speaker_2: Mají tam ten community jako sbírání toho feedbacku mají.

[62:05] speaker_0: Hm.

[62:05] speaker_2: Jako co to bylo za cestu. Oni ti třeba hodí i prompt často.

[62:09] speaker_0: Oukej.

[62:09] speaker_2: Že se tě zeptají, jaká byla, jak byla kvalitní ta cesta tady.

[62:12] speaker_0: Hm, jasný, ale tak to je jako čistě subjektivní věc. Pak bys to mohl nějak jako průměrovat, koukat na to, na jakým kole to jeli.

[62:18] speaker_2: No a to je o tom, že oni mají třeba čtyři ty, tady to někde je.

[62:23] speaker_1: Ale coverage refreshes are often two to four plus years apart.

[62:27] speaker_0: U těch-

[62:28] speaker_1: Street nebo Street View.

[62:30] speaker_0: Jo.

[62:31] speaker_2: Ale zase, zase ta silnice jako, dobrý, když uděláš novou, tak se to rychle změní. Ale jakoby za čtyři roky ta silnice zas úplně tak nesejde, že jo?

[62:40] speaker_0: To je pravda, no.

[62:41] speaker_1: Jo. Vantage points. Street View cameras are mounted two to two and a half meters up on a car roof looking mostly forward level. Potholes and surfaces cracking are a ground plane problem. You need a near vertical or low oblique view to actually see them. Resolution and compression. Street View images are heavily compressed and optimized for panorama viewing, not fine grade defect detection. Small medium potholes, especially in shadow or wet conditions, are very hard to detect reliably with CV models from this imagery. No cycle path coverage. Street View is captured mostly entirely from cars.

[63:17] speaker_2: Já bych chtěl, aby mě někdo zaměstnal. Tohle jsme třeba dva roky řešili jako. A on by mně platil za to. Jo.

[63:24] speaker_1: No motion vibration signal samozřejmě a tak dále. Where it could plausibly help coarse surface type classification, asphalt versus cobblestone versus gravel versus unpaved along road using CV on the imagery.

[63:36] speaker_2: Přečti si o OSM jako vlastně třeba Sima.

[63:39] speaker_0: Jo.

[63:40] speaker_2: Jo, takže ten, ten typ, typ povrchu, ten už tam rozlišený je v zásadě jako několika takovejch kategorií, ale pro asfalt je tam asfalt a nic víc.

[63:49] speaker_1: Jako ta přidaná hodnota toho tvýho řešení obrovská, pokud by to fungovalo, že jo, to je ta hypotéza základní.

[63:54] speaker_0: Jo.

[63:54] speaker_1: A takže, takže to hele, jako za mě dobrý, já se, jestli, jestli to, jestli nemáte na mě otázky, tak se vzdálím.

[64:03] speaker_0: Super, díky za vstup.

[64:05] speaker_1: Já taky, že jsem tady mohl k vám do toho vrtat. To mě hrozně baví. Kdyby mě někdo mohl platit za vrtání, ty vole, tak to bych hrozně chtěl, ty vole.

[64:11] speaker_5: Ale může.

[64:12] speaker_0: Za to jsou lidi placení.

[64:14] speaker_5: Konzultanti.

[64:14] speaker_0: Přesně, konzultanti, to je přesně vr-vrtář, vrtář do řešení, krizoví manažeři.

[64:20] speaker_2: Já vrtám, vrtám.

[64:22] speaker_1: Okej, tak jo, dík. Good luck. Těším se na výstupy.

[64:29] speaker_0: Tak jo. Mně se docela líbil ten Tomův přístup, jako zformulovat ty kvalitní hypotézy, který bysme jako potřebovali ověřit pro to, aby dávalo smysl tohleto jako roz-prolít do tohleto řešení.

[64:42] speaker_5: To je jasný.

[64:43] speaker_0: Je to sladký.

[64:44] speaker_5: Já na to koukám taky.

[64:46] speaker_0: Pokrytý kakaem.

[64:48] speaker_5: No to jsem zjistila, že to sladký a pokrytý kakaem je i z obalu, to to bude sladké.

[64:53] speaker_0: Okej.

[64:54] speaker_2: Jak je maš asi rád.

[64:58] speaker_5: To je vevnitř.

[65:00] speaker_0: To je nějaká hmota s nějakým-

[65:03] speaker_2: Kakaovým škem.

[65:05] speaker_0: Jo.

[65:17] speaker_2: What now?

[65:20] speaker_0: No hele.

[65:20] speaker_2: Hledám, hledám device, kterej by se dal přidělat na vidli.

[65:25] speaker_5: No a tys, tys dlouho hovořil o tom, o těch vědeckých článcích k tomu, chceš k něčemu?

[65:31] speaker_0: Jo, ve vědeckých článcích, který jsem k tomu našel, který jsou mimochodem referencovaný, já jsem do Slacku nahrával Markdown a v něm na konci Appendix jsou, je tam zmíněnejch, jsou tam zmíněný čtyři články, který právě nějak jako vědecky popisujou ten, ten Bicycle Road Roughness Index.

[66:02] speaker_5: Hm.

[66:05] speaker_0: Tam podle mě míří nebo snaží se řešit, já jsem si je neprocházel do detailu, ale řeší tam podle mě to, jak provést vlastně tu normalizaci, jak to a ze kterejch senzorů co vlastně sbírat. To si myslím, že to by nám, to by nám pomohlo s tímhlectím. Že tam z těch, jestli ses na to dostala, vidíš to tam?

[66:31] speaker_5: Dala to Open-- Open Street Map zkouším.

[66:32] speaker_0: Jo, úplně dole v, je tam Appendix jako kapitola a tam jsou články k extrakci.

[66:46] speaker_2: Narazil jsi na Strava Metro program?

[66:50] speaker_0: Ehm.

[66:51] speaker_2: Metro for Academics. Oni-

[66:56] speaker_5: Stačí ti ty dva články nebo potřebuješ k tomu nějaký research? Byla vlastně tam otázka, že co jsi zkoušel robiť nějaký deep research.

[67:04] speaker_0: No nezkoušel, nezkoušel. Respektive jako na tyhlety články jsem narazil s Claudem, když jsme o tom začali nějak brainstormovat o tomhletom tématu. Eh, takže přijdou mi proto relevantní a rozhodně neříkám, že to jsou, že to jsou všechny. Tak jak kdyby tys mohla jako udělat nějakej deep research, případně najít nějaký další, další zdroje. Já nevím, s čím seš zvyklá v tomhletom směru pracovat.

[67:28] speaker_5: Ja som neurobila deep research, som pred rokom študovala na tej univerze, tak som ako písala seminárky, že som si proste robila deep research vždycky, ale bolo to pred rokom a odvtedy sa to ešte posunulo. Ale všechno to bylo takové, že to prostě sa jako párkrát zeptat, čo presne chceš, aby sa to tak jako vyspecifikovalo a pak, pak to zjednať všechno možný za nebo já deset minut až třicet minut a schválně jenom asi padesát článků, aby z toho jako sumár. Ale není to komplet, akože není to úplně všetko. Vždycky jde najít věci, které to nezahrnulo.

[67:59] speaker_0: Yes.

[67:59] speaker_5: Ale je to dobrý přehled, akože pre mě a vždycky, keď nějakou pozložky šu v tému tam, tam jako s tím vědeckým článkem to je dobré.

[68:06] speaker_0: Jo, jo a já vlastně koukám nebo-

[68:10] speaker_5: Že vždycky to víš, na co prídem o tomhle nebo-

[68:12] speaker_0: Jo, určitě jo. Dokonce já jsem někdy pro tyhlety účely používal Notebook LM se to tehda jmenovalo. Teď se to jmenuje Ge-Gemini Notebook, kam seš právě schopná jako nahrnout zdroje a on ti to jako shrne a, a nějak pořádně to, pořádně to projde.

[68:31] speaker_5: Jo, on tohle si ty zdroje najde sám.

[68:33] speaker_0: Jo, ok. A pak teda v Claudovi, to nevím, jak moc máte ozkoušený, je jako ten mód Research.

[68:41] speaker_5: No to je úplně na to isté, čo já používám v ChatGPT.

[68:44] speaker_0: Ok, to bude asi ono.

[68:46] speaker_5: A to jsi, to jsi zkoušel?

[68:47] speaker_0: Ne, ne, já jsem s ním jel normálně přes Claude Scope Session a tam, tam on vyhledával tyhlety, tyhlety články. To si myslím, že to je určitě jedna, jedna dobrá cesta vlastně zjistit, jak moc si někdo už pohrá s tou normalizací jako takovou a z jakejch senzorů by se případně nebál. Ty jsi zmiňoval Jirko ten Strava Metro.

[69:12] speaker_2: Jo.

[69:12] speaker_0: To je co?

[69:13] speaker_2: Hele, oni tě pustili těch svejch dat. Strava.

[69:17] speaker_0: Ok.

[69:17] speaker_2: Pokud seš akademická instituce nebo něco, co souvisí jako s transportation. To znamená, já si myslím, že by bylo zajímavý zkusit zjistit, jako jestli už tam někdo může-

[69:30] speaker_0: Ehm.

[69:31] speaker_2: A případně vyrobit nějakej vehikl a tvářit se, že to. A je to zdarma pak.

[69:36] speaker_0: Ok.

[69:36] speaker_2: Když tě tam pustěj. Ale samozřejmě musíš se nějak jako přihlásit.

[69:41] speaker_0: Ok.

[69:42] speaker_2: A to je jako, ty vole, co víc bys chtěl než tyhle data?

[69:46] speaker_0: Jako to by byl, to by byl obrovskej datovej zdroj. Otázkou, f-furt si myslím, že tam bychom neměli ten, ten úplnej detail, protože co bysme tam od těch lidí asi věděli nebo z těch cest, že jo? Věděli jsme, kudy jedou, jak jedou rychle.

[70:01] speaker_2: Jak často a tak dál.

[70:02] speaker_0: Jak často na jakým kole. No, tam by se dala udělat i nějaká statistika toho typu, že to jsou takový to podle mě, z čeho oni stavěj ty heat mapy, že jo. Jak často tam ti cyklisti jezděj. Což je zase nějaká aproximace toho, jak je ta silnice kvalitní.

[70:17] speaker_2: Přesně tak.

[70:18] speaker_0: Protože jako když jedeš po nějaký silnici a zjistíš, že je na hovno, no tak tam podruhý už nepojedeš.

[70:22] speaker_5: No ale taky do toho vstupují nějaké jiné ve-- jako proměnné, jako třeba kolik tam chodí aut nebo jaká je široká. Prostě není to jen o kvalitě toho asfaltu, ale i o pár metrů. Proč si lidé to vyberou.

[70:34] speaker_0: Přesně.

[70:34] speaker_5: To budou ty krásné, krásné výhledy nebo něco.

[70:37] speaker_0: Jo.

[70:40] speaker_2: Hm, tady mají prostě People Counts by age group třeba, že jestli kde jezděj mladý lidi a kde starý. To bys podle toho poznal kvalitu toho povrchu.

[70:52] speaker_0: Já si, já si jsem na tom nejistý, protože tak, jak jsme na tom teď sobě, tak sice si dobře popovídáme, ale teda tady jak vidíš ty metriky, tak-

[71:03] speaker_2: Ok.

[71:04] speaker_0: To si-

[71:05] speaker_2: To jsem si proklik z patičky.

[71:07] speaker_0: Ok, na Strava Metro, jo? Co tam všechno maj.

[71:09] speaker_2: Ehm.

[71:10] speaker_0: Ok. Tohleto by mohl bejt jako zajímavej, zajímavej zdroj. Furt si myslím, že by to-

[71:17] speaker_2: To by se mi hrozně líbilo prostě k tomu mít přístup jako.

[71:20] speaker_0: Jo. Tak to, to bysme, to určitě zvládneme zařídit.

[71:28] speaker_2: Jak? Nejdřív account vytvoříš a pak tam asi budeš vyrábět, co seš za až no. Což si myslím právě, že jako s pomocí, eh, AI nástrojů by si byl schopnej vytvořit nějakou jako digitální stopu nějaký takovýdle český obskurní organizace, která se zabývá jako bezpečí, bezpečností v dopravě. A by to bylo jako ověřitelný, že jo.

[71:53] speaker_0: Ehm.

[71:55] speaker_2: A tam bude sedět někdo, kdo jako řekne: „A jo, dobrý, tak to jsou výzkumníci nějaký, tím to nemá.“

[71:59] speaker_0: Jo, tak nebo to máme jako s-asi s každej, každej z nás jako máme nějaký, nějaký znamy v akademii.

[72:09] speaker_2: A srovnat, ukázat to.

[72:09] speaker_0: V akademický sféře. Přesně a do-- jako pře-přes ně. Pokud ten přístup už nemaj, tak ho, tak ho získá. Zváž, že bysme zrekcjonovali někoho prostě já nevím z dopravní fakulty nebo někoho takovýho, tak to určitě půjde. Tady, tady bych využil sílu jako lidskýho kontaktu. Byť, když chápu technickej přístup vytvořit nějakou jako pseudo-

[72:31] speaker_2: Jako já jsem chtěl třeba na Garmin API, že jo?

[72:34] speaker_0: Yes.

[72:35] speaker_2: A tam jsem se nedostal. Dostal ses tam?

[72:36] speaker_0: Nedostal. Nedostal, ale přiznám se, že jsem tomu ani nevěnoval moc, moc úsilí.

[73:16] speaker_10: Okej. Tak Strava Metro. Dobře. Jo, apply for a Metro partnership. Jo. Okej, ty jsi to jako proklikával, viď? Strava Metro programu. Hm. Vyzkoušel jsi tím už proklikat? Tak já jenom zkusím, kam až se podle toho směru dostanu. Ale... Kde vůbec sídlí Strava asi? Jo, to bude nějaká US based, ne? Tady je něco.

[75:29] speaker_11: Thank you to everyone who's joined us from around the world for today's event. My name is Thomas Knight, Partnerships Manager for Strava Metro, based in the UK, and I'm going to be moderating today's event.

[75:39] speaker_10: Zkusit, jak to jde.

[75:41] speaker_11: For the past three years, I've had the pleasure of speaking to thousands of towns, cities and government agencies who all of you have been involved in active transportation and planning. And we've been partnering with them to understand how Metro data can help plan, evaluate and manage safe, accessible and efficient bike, pedestrian infrastructure. From all of these conversations that we've been having-

[76:04] speaker_10: San Francisco, Dublin

[76:05] speaker_11: ...there's always one major theme that occurs.

[76:07] speaker_10: London.

[76:08] speaker_11: Global demand for better active travel-

[76:09] speaker_10: Jo

[76:10] speaker_11: ...that we always thought would eventually arrive years from now is suddenly here, banging at the door. As the world slowly reopens from the events of the past year, we're already starting to see huge growth in bike and pedestrian journeys. Through continued infrastructure investment and smart planning decisions, this journey will continue to grow and many of the challenges we face-

[76:33] speaker_10: Tak jestli někdo moc uměl terénně a s kolama, jestli ví, jak to jde

[76:36] speaker_11: ...while also ensuring that towns and roads are reducing pressure on healthcare systems with a more active citizenry. We're delighted to welcome so many partners from around the world who are joining our inaugural event, and we hope it's the start of a series of events over the coming months where we will look at exploring potential uses and the impact Strava Metro can have on the world of planning and urban design. So some housekeeping first. You'll be able to, uh, submit your questions through the link below and the Strava Metro team is joining me today and they'll be able to view these and provide responses. We're going to be joined later on by a panel of customer success managers who are later on in the question and answer. There'll also be a recording of today's event and we'll make that available afterwards. So today we're going to hear from Mark Gainey. Delighted that he's joined us, co-founder of Strava and executive chairman, followed by Dr. Tristan Malcolm and then from David Fischer. We hope to have around ten to fifteen minutes-

[77:37] speaker_10: Tak samozřejmě Stravama APIčko, kde můžeš jako pracovat, ale se svejma.

[77:45] speaker_11: Jo. I just wanted to share for those of you who are new to Strava-

[77:48] speaker_10: A v rámci toho Metro programu tam maj nějaký APIčka, maj?

[77:51] speaker_2: Nemaj.

[77:52] speaker_10: Okej.

[77:52] speaker_2: Tam není API, ale nějaký podkladový data jakoby získáš.

[77:55] speaker_10: Hm.

[77:56] speaker_2: Oni teda maj nějakej metrový, takže zřejmě můžeš jakoby... Asi to je nějaká appka.

[78:02] speaker_10: Jo, tady už vidím, že maj nějaký demo.

[78:09] speaker_11: Human-powered transportation information for the world. Metro aggregates, deidentifies and contextualizes this data set to help make cities, towns and areas for anyone who bikes the number one choice. So who do we work with? So many of you today are partners and hopefully we're also seeing a few new, um, organizations. So we work with urban planners, city governments, safety infrastructure advocates, where we look at understanding what issues have happened, identifying opportunities for investment, and then evaluate the impact of those urban infrastructure changes. And we're doing this all completely free of charge.

[78:46] speaker_2: Eh, jako ty vole, kdybych dneska dělal třeba diplomku nebo něco, tak totálně prostě bych dělal podle toho, víš co, jako. S těma datama bych si dal nějaký prý něco vysvětšovat.

[78:56] speaker_10: Jo, jo, jo.

[78:58] speaker_0: Já jsem se jako podívat pravý úhel a beru

[79:03] speaker_12: A pak atd.

[79:18] speaker_0: To ensure that we deliver a positive impact for Strava members and the wider community, but only work with organizations that plan, own or maintain infrastructure or seek to positively influence planning processes. A to si myslím, že jako tak já se tam můžu zkusit přihlásit prostě pod, pod mým pracovním mailem. A řeknu, že chceme prostě udělat nějaký řešení pro, pro lepší plánování tras, no.

[79:58] speaker_12: To mě někdo na to kouká prostě. Hele, divi, ale mají tam na výběr, že seš Strava athlete jako.

[80:16] speaker_0: No jo no, musíš.

[80:21] speaker_12: Stojí. Dokonce consulting engineering.

[80:25] speaker_0: Přesně jako tohle to na nás teď zní úplně skvěle.

[80:28] speaker_12: Super.

[80:29] speaker_0: Ale tím, tím začneme.

[80:31] speaker_12: Tímhle projít.

[80:33] speaker_0: No a budeme tam mít pár åpnění teda ještě měli.

[81:48] speaker_12: Zajímavý webinář tady na to, ale trošku jsme teda už dál od, od té skvělé kvality. Ale neřešili jste, jak vytáhnout a zpracovat YouTube jako transcript a tak?

[82:05] speaker_0: Jo, to jde právě pomocí toho Notebook LM, respektive teď už je to Gemini Notebook.

[82:16] speaker_12: Takže mu dáš jako link jenom a on to zvládne fakt super.

[82:22] speaker_0: A on z toho zvládne jako shrnout, shrnout věci a říct, co, co a jak. Jestli je to relevantní k tomu, co mám právě co, co ty řešíš.

[82:45] speaker_12: Akorát tady se viděli v poraženém. Zajímavý webinář tady na to, ale trošku jsme teda už dál od, od té skvělé kvality. Ale neřešili jste, jak vytáhnout a zpracovat YouTube jako transcript a tak?

[83:18] speaker_0: Jo, to jde právě pomocí toho Notebook LM, respektive teď už je to Gemini Notebook.

[83:23] speaker_12: Takže mu dáš jako link jenom a on to zvládne fakt super.

[83:26] speaker_0: A on z toho zvládne jako shrnout, shrnout věci a říct, co, co a jak. Jestli je to relevantní k tomu, co mám právě co, co ty řešíš. Myslím, že mi na něj taky platí. Já mám všechny. Ehm, jakou všechny nástroje? Jo, to ty tři. Já nemám tam svoje starý notebooky. Organization type, jako oni tady mají organization type Stráva LLC, protože pro tu konzultantskou společnost voni vyžadujou, že musíš mít, eh, s nějakou- No. Eh, státní agenturou musíš mít kontrakt a ta to vlastně vy-vyřídí za tebe. Tak já si můžu říct, že s-že jsem jako Stráva LLC. Protože to mi přijde, tak kdybych byl jako profík, co má, co má nějakou firmu, ale no zkusíme to takhle. No hele, ne, asi bych toho nechtěl se předtím zaseknout. We review applications twice per month. Ok. Ale to bylo slangem. Já si udělám repozitář, eh, do kterýho bychom mohli začít, eh, sepisovat nějaký věci. Já si myslím, že dneska tím, že se-- bude jedenáct, asi dobrým výstupem bude, když si, kdybychom si zformulovali nějaký ty hypotézy, který, eh, s-s tím, že bysme měli nějakou cestu k tomu, jak je ověřit. Si myslím, že to by byl docela dobrej, eh- Dobrej start. Co vy na to?

[91:07] speaker_13: Hypotézy k čemu?

[91:09] speaker_0: No k tomu, jako co, co jsou vůbec prerekvizity toho, toho řešení. Co si myslíme, že je jako důležitý pro to, aby to, aby to fungovalo. Za mě jako úplně stěžejní je ta normalizace dat z různých zdrojů a od, od různejch lidí.

[91:25] speaker_13: Hm.

[91:26] speaker_0: Eh, druhá důležitá hypotéza je, kterou si teda myslím, že máme potvrzenou, ale asi je dobrý zformulovat, je, eh, jako jestli můžeme sbírat ty, ty raw data jako takový, jestli pro to budou dostatěčný a zároveň jestli nebudou moc velký pro ty, eh, pro ty systémy. A, no, otázkou je, jestli nás napadne ještě něco dalšího.

[91:52] speaker_13: Já jsem mezičasem zadala ten quick research a s Térkou bylo jsem i ráno, takhle když jsme spolu-

[91:58] speaker_0: Super.

[91:59] speaker_13: A případně to můžeme nějak pak, jak chce zase, taky zhodnotit. To jsem nikdy ne, nikdy nebudu porovnávala tu různé, tak. A teda zadala jsem to ohledem jen toho sberu dat.

[92:14] speaker_0: Yes.

[92:14] speaker_13: Aby to bylo specifické pro ten-

[92:16] speaker_0: Super.

[92:17] speaker_13: -našeho výzkumu.

[92:18] speaker_0: Super. Ty jsi, Jirko, takovýhle repozitáře hostuješ na-

[92:43] speaker_2: Na GitHubu? Jo.

[92:45] speaker_0: Na svym osobním.

[92:46] speaker_2: Hm. Já jsem našel nějaký varianty těch senzorů.

[93:29] speaker_0: Ok.

[93:29] speaker_2: Jinejch než jako telefon.

[93:35] speaker_0: To je za mě jako super, eh, super hypotéza, kterou bysme měli taky zformulovat, je vlastně, eh, my se tady bavíme o normalizaci, ono je to s tím trochu spojený, ale vlastně jaký data vůbec chceme sbírat. Ty, ty říkáš jako zařízení jako akcelerometr, ale jako z čeho to sbírat? Nebo mluvíš o těch metrikách, co sbírat?

[94:00] speaker_2: No, mluvím o tom zařízení jako takovym, že ho prostě připneš vždycky na řidítka nebo na sedlí trubku, nebo na-

[94:09] speaker_0: Hm.

[94:09] speaker_2: -na vidli. Nevím. Protože jako když budeš mít telefon v kapse vzadu, tak to nic nezjistíš, že jo. Nejspíš. Hypotéza.

[94:21] speaker_0: Hypotéza, no. Protože zatímco do kapsy si ho podle mě zvládne vrást každej, tak, eh, na řidítka si ho zvládne přidělat už jenom někdo, no. Je vám milejší na tom dělat v češtině nebo v angličtině? Já vidím, že to vypadá na angličtině.

[94:56] speaker_13: Angličtina.

[94:57] speaker_0: Taky v angličtině. Super.

[97:39] speaker_2: A když o tom přemýšlím, tak můj Garmin mi, eh, tvrdí, že jsem třeba skočil. A tyhlety věci-

[97:46] speaker_0: Na biku.

[97:47] speaker_2: Na biku.

[97:48] speaker_0: Hm, jo, oni tam maj ty jejich flow nějaký metriky nebo co to je. To je pravda, to tam je. On nějakej akcelerometr, na co se můžeš taky podívat, eh, akcelerometr to má, ale nějak jsem nebyl schopen, eh, vyzkyt, jak se k těm datům jako dostat, no.

[98:06] speaker_2: Protože jako že moje hypotéza je, když, když by se dalo použít to, co už všichni maj, tak-

[98:14] speaker_0: Jasný, jako to-

[98:15] speaker_2: Ty hodinky to určitě maj, že jo. Vždyť podle toho poznají jako plavání a všechno.

[98:19] speaker_0: Jako to, to mi míří na to, že jako proto se mi líbí ten, ten smartphone, kterej maj jako úplně všichni.

[98:25] speaker_2: Hm.

[98:27] speaker_0: Eh, a v druhým přiblížením přesně by to mohlo bejt jako Wahučko nebo Garmin, no. Kdybysme z toho zvládli ty, ty data nějak rozumně sbírat. A z toho telefonu mi to přijde jako, eh, nejlepší.

[100:04] speaker_5: Mně to tam moc neumí čítat.

[100:07] speaker_0: Ještě raz?

[100:08] speaker_5: Moc neumí čítat. Jakože. Prostě-

[100:11] speaker_0: Hezký, no, tam má export data, tak to-

[100:14] speaker_5: To bylo divný. A, eh, ten tom ChatGPT mi povedal, že treba změnit hit this one, ale jako úplně to vídalo. Já si to rovnou počítám.

[100:23] speaker_0: Aha. Visual Code. Mhm. A ty jdeš v něm jako v čem, v čem interaguješ s-

[100:45] speaker_2: Terminál.

[100:46] speaker_0: Jo.

[100:46] speaker_2: Musím. A jako to z, z jako idečko, ale v podstatě tam jako vůbec nechodím jenom, jenom na ty, ten jako-

[101:02] speaker_0: Když se potřebuješ něco vygooglovat.

[101:04] speaker_2: Vlastně.

[101:04] speaker_0: Okej.

[101:04] speaker_2: Nebo když něco potřebuju přečíst, ale to vlastně nedělám ani.

[101:09] speaker_0: Jo.

[101:09] speaker_2: Já už jenom píšu. Scheiße. To se málo. Jsi zjišťoval jako na co to Metro kdo kdy použil a nějaký města, no, jako.

[101:33] speaker_0: Okej.

[101:37] speaker_2: Že na tom založili třeba nějakou změnu, eh, no.

[101:43] speaker_0: Mhm.

[101:44] speaker_2: Nějakých předpisů nebo něco takovýho.

[101:46] speaker_0: Okej. Já když přes Claude a todlencto je kontext a tohodle je sedmidenní limit?

[101:55] speaker_2: Eh, to je, to jsou limity. To tam mám takovej hook danej. A pak jsem tenhle-

[102:00] speaker_0: A na sedmidenní, jo.

[102:01] speaker_2: Nahoře v tom, pak jsem měl jako kolik mám vyčerpáno ze sessiony na Claudu a na Codexu.

[102:09] speaker_0: Okej.

[102:09] speaker_2: Tak proto je tam ten hook předem z toho chatu.

[102:12] speaker_0: Okej.

[102:12] speaker_2: Teď to nemám zapnutý ten widget.

[102:14] speaker_0: Yes.

[102:15] speaker_2: To udělal kolega, že jo. Protože ty vlastně jak takhle frčíš, tak úplně nevíš, jak, nechceš se pořád dotávat. Takže my jsme si fakt udělali takovej tooling, že vidíš.

[102:22] speaker_0: Okej, no já jsem si udělal, to je jako přímo v, eh, Claudovi si můžeš napromptovat tenhlencten tady sidebar nebo underbar nebo jak tomu říct spíš. A já jsem si ho tam dal, ať mi právě dává, jak moc mám plnej kontext a jak moc mám jako o pěti hodinách. Protože já jsem taky, když jsem s tím začal pracovat, tak jsem se furt překlikával do toho-

[102:43] speaker_2: Jo jo, já jsem-

[102:44] speaker_0: UIka.

[102:46] speaker_2: Už máš ten dvacítkovej nebo stovkovej plán?

[102:48] speaker_0: Ty vole, jedu furt na tom, eh, na tom vořitejnym.

[102:53] speaker_2: Jasný.

[102:53] speaker_0: A zatím mi to stačí.

[102:55] speaker_2: Jo, mně by asi taky stačilo.

[102:58] speaker_5: Co vořitejnym? Ten levnější.

[102:59] speaker_0: Ne, ne, ne, ne, ten pro-

[103:01] speaker_5: Nejlevnější.

[103:01] speaker_0: Ten, přesně ten za dvacet euro měsíčně zhruba, to je. To máš s Radkem vypadej podobně než co.

[103:52] speaker_10: Jo jo jo.

[103:52] speaker_0: Když máš krátký vlasy. Linda, jak se jmenuje Linda?

[107:27] speaker_10: Lucka.

[107:28] speaker_0: Lucka. Já jsem tady vyhledával Motýlová nebo Motýl jsem vyhledával na tom na, na GitHubu a první výsledek byl Linda Motýl. Tak to trochu-

[107:38] speaker_10: Tak tu neznám. Musím si to. Musím si nějak-

[107:44] speaker_0: Ty jsi jako na, na GitHubu.

[107:47] speaker_9: Tak vám to dám napsat.

[107:51] speaker_0: Nebo je to ta se třema áčkama a třema i.

[107:53] speaker_9: Jo jo.

[107:55] speaker_0: Jo? Je to pravda. Zajímavý. Jana Chalíněvá. Já jsem si říkal aha, asi když jsem vybírala account, tak Jana už byl obsazený.

[108:09] speaker_9: Jo, to mám asi odkdy jsem měla šestnáct, takže to už je asi dvacet, dvacet roků. A používám to všude, ale už se mi stalo na některých místech, že nestačí ani triáčka, trienka a triáčka, ale já tam mám teda ještě čtyři body obsazené, tak to bylo, že čo mám robiť teraz? Mám si vymyslet nějaký jiný uživatelské jméno. Ale to je docela těžké, že to mám všude možně.

[111:55] speaker_12: Dva tři šest. Proč ses zrovna dva tři šest?

[111:58] speaker_15: No to je devatenáctý třetí čert.

[113:00] speaker_12: Máš tam něco pustit, že, hm, resources?

[113:04] speaker_15: A, jo, jestli tam nějak pušeš?

[113:08] speaker_12: Jo.

[113:08] speaker_15: Jo, určitě to udělej, prosím, v nějaký, v nějaký formě.

[113:15] speaker_12: Ehm.

[114:08] speaker_15: Je to bačik.

[114:16] speaker_12: Yes!

[114:17] speaker_15: No jo, tam to je, hele, to je voda. Tak to si dejte tam klidně. To si dejte klidně.

[116:08] speaker_0: Já kdybychom stihli jako ještě jeden čaj ve zbývajícím čase pustit, tak jsem do toho repa nahrál i sample data, kde je teda jako jenom jen JSON s accelerometrem a s polo position. A jestli jako z toho bys byl schopen už něco, něco zajímavýho vyčíst, kdyby, kdybys, kdybys chtěl.

[116:32] speaker_2: To je zajímavý.

[116:40] speaker_1: Já se jenom zeptal, jak na tom jste. Máme posledních patnáct minut podle oficiálního programu.

[118:15] speaker_0: No.

[118:20] speaker_1: Nevidím velký optimismus ve tvý tváři.

[118:22] speaker_0: Ne, roz-- hele, to je takový to klasický. Vím, že když se, když se do toho pustíš, tak pak zjišťuješ, že to je jako-

[118:28] speaker_1: Dead end.

[118:29] speaker_0: Přesně, přesně. A to jsem si už jako z minulejch jamů odnesl, že i pro jednodušší problémy se mně todlencto jako děje. Ale dáváme dohromady hypotézy. Jenka dělá research vlastně těch článků. Irka ten docela prozkoumal ten Strava mikroprogram a teď se jde kouknout na ty jedny, jedny data, co k tomu máme.

[118:50] speaker_1: Ok.

[118:50] speaker_0: A ty hypotézy už jsme s-snad měli mít, no.

[118:52] speaker_1: A máte nějakej hard stop jako individuální, kdy musíte odejít odsud, jsme?

[118:58] speaker_0: Eh.

[118:58] speaker_2: Já už tady zůstávám.

[119:03] speaker_1: Tak jo, tak voláte manželkám domů, jo?

[119:06] speaker_0: Navěky.

[119:08] speaker_2: Já jsem Káře říkal no, že budeme žít spolu teďka chvilku.

[119:12] speaker_1: Individuálně.

[119:14] speaker_2: On tě pozdravovat prý.

[119:15] speaker_1: Děkuji.

[119:16] speaker_0: Já mám odejít nějaký call, na kterým potřebuju bejt.

[119:19] speaker_1: Takže v kolik? Dej mi číslo nějaký.

[119:21] speaker_0: Jako potřeboval bych, bu-buď kdybysme to tady mohli někde zavřít a jako udělat to odtud, tak tady klidně jako moc rád tady zůstanu do tý, a pak v jednu budu muset zmizet.

[119:31] speaker_1: Jo.

[119:31] speaker_0: Teda pardon, hned po tom callu.

[119:33] speaker_1: Takže v jednu máš call, jo takhle.

[119:34] speaker_0: V jednu mám call.

[119:35] speaker_1: Ok, takže jakoby já sonduju proto, jestli máte prostor kdyžtak si přidat čas, pokud bude potřeba. Já to zjistím od těch ostatních.

[119:41] speaker_0: To úplně potřebovat budem nastavovat.

[119:42] speaker_1: Nastavujem přesně tak.

[119:44] speaker_2: Ale mně by se to líbilo, kdybysme to jako cutli všech dvanáct, protože pak tady byla ještě dost zajímavá debata-

[119:49] speaker_1: Jasně, jasně.

[119:49] speaker_2: Jako v té-

[119:50] speaker_1: Jako cut, cut je v půl a mělo by bejt teďko od půl dvanáctý do dvanáctý ty prezentace.

[119:54] speaker_0: Yes.

[119:55] speaker_1: Takže jestli to takhle chceš udělat, chcete to cutnout v půl teďko teda, jo?

[119:58] speaker_0: Já bych to tak klidně udělal no.

[120:00] speaker_1: Dobře.

[120:00] speaker_0: Protože vím, že jako deset minut nám podle mě dneska jako nic moc nepřidá.

[120:05] speaker_1: Tady nás. Dobře, tak jo, super.

[120:36] speaker_2: Ty to máš v češtině ale založený, viď, tam?

[120:38] speaker_0: Jo, protože tam ty, ty první věci, co jsem tam dával, tak ty tam jsou v češtině, ale teďko už i ty hypotézy tam na-nasypu v angličtině. Jo. Jo.

[123:02] speaker_2: Je to v pohodě, je to v pohodě.

[123:11] speaker_0: Ne, ne, ne, je ne, protože v klidu, protože opravdu jsme třeba jeden za váma nahoru o tak dvě stě kilo, který tam je třináct set mínus nebo něco takovýho.

[123:24] speaker_2: Tam máš ještě master, jo?

[123:27] speaker_0: Jak to myslíš?

[123:28] speaker_9: Nemáš main?

[123:29] speaker_0: Jako branch? No. No, protože když jsem udělal git init u sebe lokálně, tak mi to udělalo mas-- branch a ne main branch, tak jsem-

[123:37] speaker_2: Takže tvůj komp je prostě rasista.

[123:43] speaker_0: Jo, že používá starý master a slave. To, že g-git policy už je teďko používat jenom main branch.

[123:51] speaker_2: Jako by je, no. Ale dělá s-- způsobuje to spoustu problémů. Že máme prostě CI/CD nebo jako Terraformy a pos-- podobný věci jako počítají s tím, že prostě ta hlavní branch je jako master.

[124:07] speaker_0: Hm.

[124:08] speaker_2: A pak tam najednou někdo vstřelí jakože main a teď vole, všechno je prostě fakt-

[124:13] speaker_0: Úplně se to rozběhne.

[125:06] speaker_2: Povol teď.

[125:12] speaker_0: Co se ti objevilo?

[125:14] speaker_2: Cloud.

[125:16] speaker_0: Ok. To znamená, že jako Afina je přetížená.

[125:23] speaker_2: Hm.

[125:23] speaker_0: Hm, tak to se mi teďkon už jednou taky stalo, no. A nemáte vy, ty, když máš placenou tu, tu stovku, nemáš nějakou přednost?

[125:33] speaker_2: Tu ne.

[125:37] speaker_0: Myslím, že asi ne. To mi Janko podařilo se ti nebo máš pocit, že z těch článků jde vyčíst to, že by se to dalo nějak jako normalizovat/unifikovat?

[128:50] speaker_5: Mě to normálně nejde dneska, ale ChatGPT tam našel nějaké jako problémy a nějaké možné řešení a volnosti. Takže určitě to půjde.

[128:58] speaker_0: OK.

[128:59] speaker_5: Ale no, eh, momentálně zápasím s tím, jak to z toho dostat. To jsem nikdy nedělala a vůbec mě to jako-

[129:06] speaker_0: Ehm, v tom notebook, jo respektive s tím Gemini notebookem.

[129:10] speaker_5: No jako, jako věc. Do toho jako docu, to ještě je to v pohodě. Takže to by byla PDFka a na ni by to vyrukovalo hrozně.

[129:18] speaker_0: Aha.

[129:19] speaker_5: Jo, to se asi nepodaří.

[129:21] speaker_0: Jo.

[129:22] speaker_5: Na-Na dáby to každý ten vzorček naházilo, eh, hravá záplka image hravá záplka.

[129:28] speaker_0: OK. Hustý.

[129:31] speaker_5: Ale to by to vykozadalo, nevím. Takový zásadní věci to-- no dobře, tak nic. Teď si tam můžeš dát ty telefony, ale ty PDFka jsou prostě větší problém.

[129:42] speaker_0: Yes.

[129:43] speaker_5: Takže nemáš ta moje PDFka.

[129:45] speaker_0: Jo prosím.

[129:53] speaker_5: No jakože, jakože to, co ten ChatGPT vyprodukoval i třicetstránovou PDFku s padesáti referencemi na různé články. Takže jako prolustkat to tím je prostě fakt-

[130:02] speaker_0: OK.

[130:02] speaker_5: -to pročíst.

[130:03] speaker_0: Jo, jo.

[130:04] speaker_5: To si nedám. Máš tam nějaké summary o tom prostě.

[133:19] speaker_2: Pět sekund použitelných ze samplu.

[133:22] speaker_0: OK.

[133:24] speaker_2: To znamená jako mít-- nevím.

[133:27] speaker_0: OK. Je to, je to s tím dvacet, eh, hertz samplinem?

[133:33] speaker_2: On tvrdí, že reálně je dvanáct.

[133:36] speaker_0: Aha, ok.

[133:38] speaker_2: Ale nevím proč. Jako já jsem ten JSON nevi-neviděl.

[133:42] speaker_0: Aha.

[133:46] speaker_2: Android uspal senzory na pozadí.

[133:56] speaker_0: No tak to by byl jako jasný. To tohleto už jsem na těch datech neověřoval. A kdyby to tak bylo, to je, to je beta.

[134:07] speaker_2: Tak to je běží prostě.

[134:08] speaker_0: Přesně.

[134:09] speaker_2: Se sami.

[134:11] speaker_0: Tady vidím sekundy. Já se na to můžu koukat tady, než mě to jako uspalo. Jo, fakt že jo. Ona je tam díra. Normálně to běželo první minutu a pak to běží prostě ke konci, když jsem to šel vypnout. A proto je to taky takhle maličkatý ten, ten file.

[134:34] speaker_2: Jo.

[134:35] speaker_0: To je fakt, že jo. Já jsem chtěl prostě vybít data.

[134:40] speaker_2: Tak si to jeden projekt-

[134:42] speaker_0: To je super ještě jiný.

[134:44] speaker_2: A máme, máme co komunikovat ostatní.

[134:46] speaker_0: Jo jo, tak to tady toho mám víc.

[134:59] speaker_2: Ne! To nějaký-

[135:02] speaker_1: Vlastně to teď ještě mají dát. Musíme.

[135:10] speaker_16: Ještě skočím, ale klidně počkejte. Kde je ten nejbližší záchod?

[135:14] speaker_0: Přímo takhle tam jako Kozjanka.

[135:17] speaker_16: Já nevím, jestli tady úplně dvacet pět. Eh.

[135:19] speaker_0: Rovně, rovně, rovně, rovně, rovně, rovně, rovně.

[135:28] speaker_1: Ale nějakej někdo není-

[135:29] speaker_16: Jo, já s tím jet.

[135:31] speaker_1: Budou jenom ponožky.

[135:32] speaker_16: Nebo, nebo no. Pojď, posuň se nahoru a jestli to půjde, posuň se dolů a to je v pohodě.

[135:40] speaker_1: Jo, tak už jsem tam přišel i ten, i ten můj.

[135:49] speaker_2: Stihnu jet znovu podle protokolu.

[135:52] speaker_1: Ještě, ještě si dám kolečko.

[135:54] speaker_2: Jeden úsek dvakrát. Akcelerometr na maximu, vypnutá optimalizace baterie.

[135:59] speaker_0: Ok, já jsem si říkal, že to je dobrý, že mi to nežere vlastně z tohohle baterky, ale tak jestli to uspává pozadí, no tak. Task.

[136:16] speaker_16: To bylo dobrý, jestli jsme.

[136:29] speaker_0: Eh, ještě.

[136:31] speaker_16: Ta amplitude, to bylo?

[136:33] speaker_0: Eh, probably review if the proposed page hypothesis one should be one thousand changing person. It would be great if I were telling you maybe amplitude of a motor vibration spectrum speed independent. Ok, jako principu rozumím. A já vlastně k tomu, že ta první hypotéza, kterou jsem tady formuloval na takhle úplně správně, tak tam jsem se dobral nějakým způsobem taky.

[136:59] speaker_16: Super.

[136:59] speaker_0: Tak aspoň je to v tomhletom směru konzistentní, jo.

[137:02] speaker_16: A pak to někde jako ale dnešního dne takhle vycházelo to na některých, jako když to jako že to záleželo fakt jako na hmotnosti toho člověka a nevím, prostě nějak takhle po fakturu.

[137:13] speaker_0: Jo, jo.

[137:46] speaker_2: Grep. Jsem viděl, že grep je grep.

[137:50] speaker_0: Chceš grep? Ovoce?

[137:56] speaker_2: Pak na něj grep.

[137:59] speaker_1: Takže kostel.

[138:08] speaker_0: Mám, ale nevěřím mu.

[138:15] speaker_1: Já.

[138:43] speaker_0: Jako že si teď demo, demo materiály vybílají. Dobře ty. Tak co? Jste zaseklí, co?

[139:01] speaker_1: Tak co? Kdo je ready prezentovat?

[139:03] speaker_0: Já asi jo.

[139:07] speaker_1: Jste schopný teda do minuty třeba už věnovat pozornost?

[139:09] speaker_0: Jo, jo. Hej Siri, one minute.

[139:18] speaker_16: One minute starting now.

[139:22] speaker_0: One minute and fifteen seconds, you bastards.

[139:42] speaker_2: Mě vlastně děsí, že nás to jako poslouchá. Vůbec o tom jako neuvažuju, ale tudle jsem si prostě v autě jako něco tak pro sebe brmlal a ono to začalo jako na mě reagovat. Říkám do píči, to jsem zapomněl. Já jsem věděl, že mě posloucháš jako.

[140:00] speaker_1: Všichni nás poslouchaj.

[140:02] speaker_2: Plod hlavně.

[140:04] speaker_0: Oni k tomu vešla.

[140:07] speaker_2: Asi sousedé všichni, jestli to dobře chápu.

[140:10] speaker_1: Koho?

[140:11] speaker_2: Od ploda.

[140:14] speaker_1: Ne, já mám EU, já mám, já mám EU, jako nevím, jestli jsou i EU, ale bylo by to jako hrozně zavádějící a zabilo by je to, kdyby, kdyby tvrdili, že-

[140:23] speaker_3: Hey Siri, stop.

[140:25] speaker_1: EU je v tom, v čem je.

[140:35] speaker_3: Tu tu ru tu du. Ale, ale, ale, ale! Tak jo, kolik mám prezentaci? Kolik máme jen času?

[140:44] speaker_1: Já mám presku tak na deset minut max.

[140:49] speaker_3: Já mám pět minut max. Dávám si pět minut na, i na dotazy a všecko.

[140:53] speaker_1: Okej.

[140:54] speaker_3: Hey Siri, five minutes.

[140:57] speaker_12: Five minutes, counting down.

[140:59] speaker_3: Tak, eh, nejsem moc nadšenej z mýho dnešního výstupu. Jsem jako, jako, eh, tady vidíte příklad mýho ghostwritera, protože jsem chodil po zahradě pět minut a dělal jsem si, eh, dělal jsem jako braindump svýho, eh, svý dnešní, svý dnešní session, kdy jsem prostě mluvil a snažil jsem se všechny důležitý věci nějak zesumarizovat, nestrukturovaně, prostě jsem to tam házel. Udělal jsem si summary a nechal jsem svýho ghostwritera, aby vzal tady tenhleten celej blok textu a přepsal ho do summary tak, abych, tak jak bych si udělal summary z toho já sám, kdybych si prostě sednul a pak si fakt napsal poznámky, no. Výsledek je takovejhle. Což řekl bych, že bych to ohodnotil tak za, je to nadprůměrný, ale pořád to není, jak bych to psal já.

[141:50] speaker_9: Ty jakou známku by jsi tomu dal?

[141:53] speaker_3: Jo, známku. Dal bych tomu tak za dva, za dva minus. Eh, jo, je tady vidět, že některý věci jako dělá, se, se, se naučil dělat správně, jo, já hodně často dělám takovýhle, jako napíšu nějakej title, aby bylo jasný, o čem ta odrážka je, pak tam nějak jako expanduju v tom. Next steps, jo, tady udělal nějaký, eh, nějaký úkoly, který jsou podle mě moc verbose, jo, já třeba píšu kratší ty, ty, ty úkoly, snažím se být more concise. A takže tohle je vý-výstup. Ale teď vám teda, to je meta a teď vám řeknu, co jsem jako dělal, s čím jsem, eh, s čím jsem, s čím jsem bojoval. Bojoval jsem nejvíc s tím, že jsem neměl dost příkladů pro něho. Neměl jsem dost vstupů, jo. Jako já jsem se snažil na poslední chvíli nějak shromáždit, kde, k-kde mám nějaký dobrý poznámky, který jsem dělal já a nakonec jsem to vyřešil tak, že jsem mu řekl: „Hele, prostě hunt down the pairs, jo, to znamená jako sežeň všechno, co, projdi všechno možný, co kde najdeš a zkus to dát dohromady, což udělal a našel mnoho dobrejch, eh, do-dobrejch příkladů toho, kdy jsem jako měl já nějakej text a pak jsem ho zpracovával, upravoval, měl jsem několik iterací a on je všechny našel. Problém v tom mám, že mu nevěřím v tom, co sehnal. Nevěřím v tom, že sehnal správný příklady. Některý příklady byly dobrý, ale, ale zároveň jsem tam viděl nějaký příklady, který byly, že třeba vzal AI summary a myslel si, že to je jeho. A pak jsme se o tom pobavili, že to teďka ve skutečnosti teda, že to je moje a ve skutečnosti to nebylo moje. Takže myslím, že ty data nejsou prostě pure ty, co, eh, ty, co jako k tomu slouží, no. Tak to, to byl největší bottleneck a vlastně to byl můj takeaway, jako že když chci napsat fakt dobrej skill, tak že musím mít pro to dobrý data a že ten můj takeaway je, že teďka když, když budu něco jako dělat, budu na něčem pracovat a zjistím, že nějakej článek nebo nějakej, nějakej summary meetingu přepisuju několikrát třeba i s AI, tak si hnedka uložím tu pův-- ten původní stav a ten cílovej stav, abych potom ten skill měl jako čím krmit, no. Nějak jako mít nějakou takovouhle mentální poznámku, že teďka, co bych měl udělat, jako projít si všechny, zpětně všechny, všechny texty a který on teďka vybral a dělat jako review, jestli to správně jako tipnu, nevím, no.

[144:06] speaker_9: A kdyby mu dal jen ty cílové, tak to není správně?

[144:08] speaker_3: No právě, že on potřebuje páry, no. On potřebuje na ty evaly, jestli to správně chápu, tady byl určitě povolanější, tak potřebuje vědět před a po, aby mohl znovu běžet nad tím před vlastně ten skill a pak to porovnat s tím výsledkem. Zároveň taky co chci jako udělat je, tady je můj text nebo, a já ti neřeknu, jestli je to můj text a guess jako nebo evaluate it, jo, vlastně že ten judge, kterej je v tom skillu, eh, tady tenhleten, jo, tak tady tenhleten judge má nějaký kritéria, tak ať odjudguje ten můj skutečnej output. A jestli teda jako pozná, že to je můj output, no. Tak by takovejhle nějakej ještě, ještě další, další goal tam mám. Eh, zbývá mi minuta, abych vám ještě něco předal. Hm.

[144:50] speaker_1: To je včetně otázek tohle?

[144:52] speaker_3: No právě, že ne. Teďka koukám, že to bylo, tak dáme ještě pět minut na otázky a na nějaký vaše vstupy a třeba rady. Eh-

[144:58] speaker_9: Můžeš ještě ukázat ten skill?

[144:59] speaker_3: Jasně, určitě. Ještě bych řek jednu věc. Já jsem si pak uvědomil, že píšu jako tasky, prózu a meeting notes, nějaký poznámky jako dost jinak, že tam jsou nějaký patterny, který jsou stejný, ale zároveň bych chtěl mít specifický věci. Hele, já píšu tasky takhle, já píšu, eh, meeting notes takhle, jo. Takže pak jsem si nebyl dokonce jistej, jestli takhle jeden skill pro to, abych psal jako já, je vlastně užitečnej. Eh, no, tak skill vypadá, vypadá zhruba takto. Tady je skill. Připadá mi, že popsanej je dobře, když i tenhleten popis je jakobych ho psal já, no, to, to mi nepřišlo vůbec špatný. Eh, takže tady je skill a nevím, co z toho chceš vidět, no. Hodně často si všímal toho, že já nemám moc rád jako Captain Obvious, když má jako obvious statements nebo když se opakuje. Jo, ta, ta, ta, ten rubrik mi přišel zajímavej, jo. Tady prostě Captain Obvious je můj nejčastější feedback.

[145:54] speaker_1: Rubrik je ten eval teda, jo?

[145:56] speaker_3: To je ten, ten, ten judge vlastně podle čeho, podle jakejch kritérií co judguje. Jo, tady potom délku hodně řeší, eh, actionability, že mám rád, když už jsou nějaký jak otázky, tak ať je to jako jasný, co jsou. Tady jsou nějaký věci o-ohledně mýho, eh, jako stylu psaní, že nemám rád takovýhle to you know it, hope, hope it helps a tak dál.

[146:19] speaker_7: No to je hrozně zajímavé. Já jsem akorát teďkon, eh, narazil na internetu na jeden skill jako nějakýho známějšího člověka, řekněme, že se jmenuje Anslop a přijde mi, že to je hodně podobný v něčem tady tomuhle taky. Můžu poslat a můžeme to třeba zkombinovat.

[146:36] speaker_3: Díky, díky, pošli prosím tě to mým směrem přes Slack. Díky no.

[146:39] speaker_7: A uvidíš.

[146:40] speaker_3: No tak to je to, co mám. Jako mám nějakej skill a teďka nevím, jestli mu můžu důvěřovat. Budu ho jako běhat, ale mám pocit, že musím reviewnout, jako z jakejch dat on vychází a jestli jsou solidní, no.

[146:52] speaker_6: Zdá se, že skill je o iteracích určitě.

[146:54] speaker_3: Určitě jo no.

[146:55] speaker_7: O tom ty jsi vlastně taky někdy redlinoval, jak jako vlastně upravuješ ty skilly, aby byly jako aktuální, že jo? Že, že postupně nějak jako iteruješ a-

[147:06] speaker_3: Hele, dám nám jenom zase, eh, čtyři minutky na diskuzi, ať se dostanem na všechno a na nějaký vstupy od vás, co k tomu máte. A pak kdyžtak se u oběda můžem pobavit dál.

[147:17] speaker_1: L-líbí se mi, líbí se mi, že sis něco odnesl z mý přednášky o, o nebo z toho workshopu o těch, o těch evalech. To je super. To se mi líbí, že už jdeš tím směrem. A ještě jsem jakoby, eh, b-bylo to, to, co jsi ukazoval, bylo hodně to, co to vyprodukovalo. A mě by víc zajímal jakoby ten proces, jak jsi k tomuhle došel, jo. Ale to klidně nechme třeba na, na jako na, na jindy, no.

[147:39] speaker_3: Hm, ten proces, jak jsem k tomu došel, bych dokázal říct jako v pár řádcích.

[147:42] speaker_1: Jo, tak řekni.

[147:44] speaker_3: Za prvý jsem ho nechal, ať vydestiluje věci už z existujících rolů a z existujících věcí, ať vezme pro tady tenhleten ról, protože už jsem měl něco v Code MB jinde. Pak jsem ho nasměroval na jiný texty, prostě texty, aby z nich jako vydestiloval můj, můj writing style. No a pak jsem ho nechal udělat tenhleten jakoby hunt přes všechno, přes sessiony, přes pull requesty, přes všechno, kde jsem měl jako hodně iterací nad nějakým textem, aby je identifikoval a vzal to jako ty evaly. A nic víc jsem nedělal. Jako nechal jsem to celý dělat, bylo to takový hodně magic, jako.

[148:14] speaker_1: Takže máš dva výstupy, máš skill a máš eval teda.

[148:17] speaker_3: No.

[148:17] speaker_1: Jasně. Ok, ok, dobrý. Eh, d-za, za mě doporučení, jakoby to, co jsi ty chtěl dělat, tak to určitě dělej. To znamená, máš jakoby nějakej výstup od něj, jo, a potom, potom ho uprav, ale zkopíruj si to, měj výstup od sebe-

[148:33] speaker_3: To dělám, ale, ale, ale připadá mi, že málokdy mám tam tu mentální poznámku, když jsem jako v tom šrumci, že něco řeším jako "ok, teď pause" a chci teďka vykopírovat tohle a tamto, že to zapomenu udělat nebo nemám na to mentální kapacitu tohleto udělat. Ale teďka vím, že to musím dělat víc conscious.

[148:49] speaker_1: Skill by ti pomohl, že bys mu pastenul jenom hele, to, tohle je můj finál. Ulož to někam, kde budeš vědět a-

[148:55] speaker_3: Já vím, ale často jsem rozstřelený, když se snažím řešit na to, abych šel me-- šel meta. I když si na to vzpomenu, tak si říkám ne, ne, ne, nemám čas, musím dokončit to, co tady dělám, na to, abych ještě teď se hrabal v historii a vy-vykopíroval odtamtud něco, no.

[149:07] speaker_1: No, dobrý.

[149:08] speaker_6: A nezvládla by tohle nějaká jako rutina nebo víš, takový ty jako automatizovaný, ale ty potřebuješ asi pak jenom jako označit, co je teda to-

[149:16] speaker_3: Mně se to děje totiž na, v různejch systémech, že jo. Prostě to není jako běžně, co se mi to děje tady v Notionu, ale v, v nějakým systému, kde píšu requirementy, tak potřebuju zastav. Teď máš requirement, jak ti ho vyprodukoval Claude, teď ho začínáš přepisovat, tak si ho ulož a pak až to doděláš, tak si ulož ten výsledek, abys měl to porovnání, no. Takže jako ne-ne-ne-

[149:36] speaker_7: Používáš Claudeco nebo co?

[149:37] speaker_3: Jo jo.

[149:38] speaker_7: Si můžeš dělat workflow jako slash revise, kterej ti duplikuje dokument a bude upravovat jenom ten-

[149:47] speaker_3: Musím přijít na něco jak, jak, jak, jak tohleto-

[149:50] speaker_7: Ale taky si musíš vzpomenout napsat minimálně slash revise, no.

[149:57] speaker_3: No.

[149:57] speaker_6: A mohlo by bejt zajímavý nějak jako oddělovat text, kterej si vyprodukoval ty a který vlastně AI jako na, jako vyloženě úplně na nějakym-

[150:05] speaker_3: No hele, že jo, já tady mám často v těch poznámkách mám tady jako taby, tady mám transcript a tady mám human notes. Tady si dávám svoje poznámky a tady je AI summary. Takže já to mám rozdělený, ale ještě jsem tenhleten systém tolik nepoužíval, abych to měl jako jasnější, jo.

[150:29] speaker_1: Tak jo, otázky, připomínky? Ne? Tak jo.

[150:31] speaker_6: Ještě mi přišlo zajímavý vlastně v tom, jako jak jsi říkal, tak ten obvious, že, že vlastně některý věci jsou jako zřejmý, ale vlastně můžou být tak důležitý, že vlastně jo, je, je jakoby dobrý je zmínit. No nevím, no, jako-

[150:45] speaker_3: Jo.

[150:45] speaker_6: Jo tak když, když vezmu nějakej graf jako důležitost a zřejmost, tak se to tam bude někde jako potkávat to, že, že někdy ta důležitost to zmínit, i když je to zřejmý, tam vlastně-

[150:56] speaker_3: Ano.

[150:57] speaker_6: Jakoby-

[150:58] speaker_3: Já vlastně chci, to je díky, že to říkáš. Já vlastně, že jo, já jsem UX designer a já furt řeším, co je podstatný. Mám mentální model toho uživatele nebo čtenáře a tuším, co je pro něj důležitý a co ne, ale je to docela složitá evaluace, která mi jede v hlavě a já to chci po něm, aby to měl. A myslím si, že po něm chci trošičku too much, no, aby tohle dokázal vyhodnotit stejným způsobem jako já. A možná na tom často selhávám, že říká věci, který si myslí, že jsou důležitý a já přitom vím, že nejsou důležitý, prostě že to je jakoby fucking, fucking nice.

[151:24] speaker_6: Jako jestliže nejsou důležitý pro experta nebo to, ale pro někoho, kdo by to jako fakt nikdo jako chtěl, kdo tom-se v tom nevyzná v tématu, tak třeba to může bejt jako důležitý-

[151:33] speaker_3: Rozumím, ale já mám, když něco píšu nebo designuju, tak mám jasnej mentální model, pro koho to píšu. Jo a on ho nemá.

[151:41] speaker_1: Eh, jak silná je tvoje motivace nebo do jaké míry to bylo jenom cvičení pro dnešek versus jak silná je tvoje motivace v tom jako pokračovat a budovat si nějakej systém, kterej bude efektivní?

[151:51] speaker_3: Jo, tak jako já ten systém furt buduju. Já jsem vlastně si budoval systém už na-napsaní user stories, kterej jako začíná být lepší a lepší, jo. Jenom jsem chtěl něco víc generic, co-- ale jo, moje motivace je silná tohleto jako změnit, protože jinak ty výstupy z, od AI mě stojí hrozně moc času a nemůžu jít potom nějakou cestou větší automatizace, protože nejsem spokojenej s těma výstupama, protože neodpovídají mýmu mentálnímu modelu. Je to prostě slop, jako jo, to je prostě furt můj battle se slopem, jako ať už v textu nebo v UXu nebo v čemkoliv, no.

[152:21] speaker_1: Jo. Tak, tak. Tak, tak next vlog. Já se do toho vrhnul. Tak. Takže já jsem teda př-- vlastně přemýšlel nad tím, jak vytvořit, eh, mentální model, pomocí kterýho budu moct spravovat, eh, s-svoje dokumenty. A, eh, mám jako preliminary zatím preliminary nějakou úvahu nad tím a ta vypadá takhle. Jo, vlastně ten mentální model spočívá v tom, eh, ten, ten mentální model je přenosnej mezi repozitářema, jo. To znamená, má jako minimum, má jako minimum pravidel, minimum, eh, jako obsahu a tak. Hm, a dá se jako customizovat per repozitář, jo, kde potřebuju nějaký další věci. Mentální model má v podstatě jenom tři třídy, jo. Ten dokument je buď immutable, to znamená, je jakoby platnej k tomu datu toho pořízení, jo, třeba transcript nebo ADR, což je třeba nějaký rozhodnutí, ať už architektonický nebo jakýkoliv jiný rozhodnutí. Eh, nebo je living, to znamená, že trackuje nějakou část kódu nebo nějakou část něčeho, jo, a tudíž, eh, tu-tudíž já se musím postarat o jeho freshness, o to, že ten dokument je jakoby up to date. Anebo je transientní, to znamená, má nějakej stav, jo. Je to jako, nejdřív je to specka, ta je ve stavu, jako pracuju na tom, pak to může bejt archivovaný, jo. A, a, eh, takže vlastně v hlavě nosím jenom tyhle ty tři věci, bych nosil v tomhle tom modelu. Je to immutable, je to living nebo je to transient, jo.

[154:02] speaker_0: Mhm.

[154:02] speaker_1: A vlastnosti toho, toho modelu jsou takový, že teda ty, ty třídy, to jsou ty třídy, tak ty jsou, ty, ty jsou fixní a jsou přenosný mezi jakýmikoliv, eh, jakoby těma repozitářema. Ten index těch dokumentů je generovanej, to znamená, není ručně udržovanej, je generovanej. A, eh, ty, eh, ten, ten, ten do-dokument s sebou nese důvěryhodnost a ta je kalkulovaná. Ta není mnou jako stanovená, jako jaká je ta důvěryhodnost, ale je kalkulovaná na základě nějakejch atributů a celý je to jako enforcovaný CIkem, abych prostě byl nucenej do toho to, to minimum, co chci, tak abych prostě držel jako up to date, eh, prostě jako hned a ne jako že se mi to driftne, protože ten drift je prostě všudypřítomnej, pokud to tak není. Nějaký detaily k tomu. Ten trust je jako, je to nějakej návrh, ale je počítanej tak, že, eh, že immutable, eh, je, eh, je jakoby current. To znamená, on ví, že k tomu datu ten, ten, ten immutable dokument jako třeba transcript, takže je prostě platnej k tomu datu a ví, že mu ne-nemůže jako věřit, že to není jako, eh, že to je, že to je to. Je tady jeden jedinej atribut, kterej je zajímavej, a to je, hm, to je last verified. Jo, pojďme se možná podívat na konkrétní příklady, jo. Takže meeting transcript, eh, je to třída immutable, je to typ transcript. Ty typy žijou v tom repozitáři. To znamená, jo, někde nebudou transkripty, někde nebudou SEO audity, někde nebudou jiný prostě věci, který můžete jako používat. Takže to si právě může každej projekt nadefinovat sám. Je tam nějakej title, to je jasný. A tady je i datum, ke kdy to bylo platný ten immutable dokument, jo.

[155:45] speaker_0: Promiň Tome, todlencto je teda ten front matter, o kterém jsme se bavili v těch markdownech.

[155:48] speaker_1: Přesně tak. Tohle je markdown file, kterej takovýmhle způsobem definuje ten front matter. Je to vždycky mezi těma dvěma dashama, kde jsou uvedený jakoby ty atributy, který si můžeš definovat, jak, jak chceš, nic se nenforcuje, enforcuješ si v nějaký aplikační vrstvě, pokud ji máš, jo. Že ten markdown jako takovej prostě to furt vidí jako text. Je to ně-- jsou to jako třetí strany, co, co, co pracujou s tím front matterem a některý frameworky jsou na tím postavený, že to uměj potom třeba indexovat, dělat z toho nějaký TOCs, prostě nějaký jako další nadstavby nad tím generovat. Tak, eh, tady je living document a ten má povinný věci. Teda, že to je type class living, type je to, je to doménovej dokument, kterej popisuje nějakou byznysovou doménu a má povinný atributy, co, co, co jakoby coveruje, jakoby co v tom kódu trackuje jo, nebo co v tom repozitáři trackuje a, a kdy je to last verified. A to znamená, že se to dá CIkem jako, eh, programaticky enforcovat. Takže on se může podívat: „Hele, jsou věci, který byly, kterejch jsi, do kterejch jsi commitoval, jo, eh, kdyjs do nich commitoval a kdy je to last verified date. A pokud to last verified date je nižší vlastně, než když jsi do toho commitoval, tak to znamená, že je můj job se podívat, jestli ten dokument drží, tady ten, jestli je jakoby v pohodě. A to znamená, že mi to to CI jako může rajsnout. Může tam bejt pre-commit hook, hook, kterej mě na to upozorní. Hele, máš tady jakoby nezverifikovaný dokumenty, na který se musíš podívat. Tak a, eh, living dokument, to je taky living dokument. To má vlastně úplně jakoby stejný principy. A pak je tady transient document a, jo, a ten má vlastně, ten má ten status, jo.

[157:35] speaker_0: Mhm.

[157:39] speaker_1: Takže v podstatě on by měl se podle toho jako, ještě nemám samozřejmě nadefinovaný, jak by se k tomu on měl chovat, jo, mám jenom nadefinovanou tu aspiraci, že ten trust score je prostě ko-- je prostě, nestanovuju ho já, protože by tam byl drift, že jo. Když ho budu stanovovat já, tak ho zapomenu stanovit. Jo, řeknu, že to je trustworthy dokument. Něco se změní, on ho bude brát jako důvěryhodnej a mysne se to. To znamená, že to je jakoby to důležitý a úplně nevím ještě, jak definovat jakoby ty pravidla pro to. Tohle je všechno, co jsem vlastně jakoby stihl udělat, definovat si takovejhle nějakej základní model, kterej budu ještě jako shapovat, no.

[158:15] speaker_0: Mhm. Nemá vlastně i ta třída těch transientních souborů mít taky nějakej jako, eh, datovou značku? Eh, něco, co by mělo hlídat, když jako, eh-

[158:33] speaker_7: Hrabeš do něčeho, co s tím souvisí, tak že vlastně jako ten status třeba new, že přejde do in progress, že jako se ti vlastně může updatovat, eh, zásahem do jinejch dokumentů. Protože v tom living mě právě přišlo super, že tam je ta, ta značka last verified-

[158:51] speaker_1: Mm-hmm.

[158:52] speaker_7: Eh, která nějak přispívá k tý věrohodnosti toho daného dokumentu a u toho transient vlastně nevím, jestli jako ten, ten status tomu stačí, jestli se ti nemůže stát, že ti to driftné i, i přes něj. Byť mi teda tenhleten framework přijde super jako vytvoření za, za tu chvilku.

[159:09] speaker_1: Ne jako ten transient určitě, eh, jo, ta-tadyhle on se k tomu, on to score nadefinoval takhle, že pokud ten transient je open, takže to je jako aktuální, pokud je to done a není to promoted do nějakýho jinýho typu dokumentu, tak je to historický a on se k tomu tak bude chovat.

[159:27] speaker_7: Ok.

[159:28] speaker_1: Jo, že třeba vím, že někdy tu specku potřebuju transformovat do nějakýho jako living dokumentu, ale právě tam uděláš tu změnu tý třídy, že jo. Z transient dokumentu se ti stane living, ty mu přizpůsobíš tu strukturu a ty, ten front matter a pak už to prostě není transient dokument.

[159:42] speaker_7: Jo, jo. Takže je to tak, že jako, mhm, že se přejde mezi tou třídou-

[159:46] speaker_1: Jo. Jo, jo, jo.

[159:49] speaker_7: Ok.

[159:49] speaker_1: A to znamená, že vlastně je to hrozně jako jednoduchý, že jo, vlastně je immutable jasný, to bylo platný historicky. Living je to, co musím držet up to date a to CI/CD mi k tomu pomůže a jenom bude ode mě chtít vědět, co to má trackovat, jaký soubory to má trackovat v tom repu. A transient je vlastně všechno ostatní, že to je nějak v pohybu, jo, je to jako nějakej pomocnej dokument. A, a, a jako asi good point je vlastně, že, že nevím, jak se k tomu i-i-i jak, jak vlastně k tomu bude jako Claude přistupovat, no. Jak by, jak by ten dokument použil, jako jak by se na něj díval, když ho najde. Jo, tak jestli by tam aspoň třeba nemělo bejt datum, kdy to bylo jako naposledy updatovaný. Na druhou stranu to není potřeba mít ve front matteru, protože to je prostě jakoby v gitu, že jo. Jo, ty víš, že to bylo naposledy jako commitovaný, jo. Takže tak no.

[160:41] speaker_7: Ok.

[160:42] speaker_16: Nemůže se ti stát, že takto smetš většinu z těch transient dokumentů?

[160:46] speaker_1: Asi může.

[160:48] speaker_16: To můžeš udělat pro toho, co zůstalo.

[160:52] speaker_1: No tak v tom je ta jako, no, v tom to asi je, že pak asi, jako já vím, který typy dokumentů, protože zase ještě vy neznáte ty typy, jo. Tak já se, já vám tady ukážu nějaký typy, co třeba mám, no.

[161:05] speaker_3: Co byl to ADRko moje, mohl bys zrovna u toho na tom to ukázat? To je-

[161:08] speaker_1: ADRko je immutable.

[161:10] speaker_3: Jo.

[161:10] speaker_1: To je nějaký rozhodnutí. Jo, to je Architecture Decision Record.

[161:15] speaker_3: No jako rozumím, co je ADRko, chci, chcem vědět, kde v tomhle tom mentálním modelu sedí, protože já jsem myslel, že tohleto bude právě že transient a, a historical.

[161:24] speaker_1: Víš co, u mě je to living jako rozhodně.

[161:28] speaker_3: Ale podle mě ADRko by nemělo bejt living.

[161:30] speaker_1: ADRko je immutable, ty se prostě rozhodneš a můžeš to rozhodnutí změnit potom, ale prostě to rozhodnutí v tom daném čase je platný, dokud ho nezměníš, jo.

[161:38] speaker_3: To jsem myslel, že, to jsem myslel, že jako transient právě.

[161:40] speaker_1: V tom smyslu je immutable.

[161:42] speaker_7: No ale, jo takhle immutable ne, že musíš vytvořit novej file, ale-

[161:49] speaker_3: Ne to, tohle říká k tomuhle datumu jsem udělal tohle rozhodnutí.

[161:53] speaker_7: Jo.

[161:53] speaker_3: Na tom už nikdy nic nezměním. To je stejný jak transcript, že jo.

[161:56] speaker_1: Dobře, ale ty víš, že pokud neexistuje opačný rozhodnutí, takže i za měsíc je to platný, že jo tohleto. Kdežto dokument, kterej si last verified před měsícem a do-došlo ke změnám v souboru, v souborech, který trackuje, tak už platnej jako není.

[162:12] speaker_7: No jo, jo ok, já jsem myslel, že living je prostě platnej pořád, dokud žije. Moje AD-ADRko prostě pořád žije a je pořád platný.

[162:21] speaker_3: Až ho přepisuješ, jo?

[162:22] speaker_7: Jako by. No, připisuju nový Architecture Decisions nebo dělám-

[162:28] speaker_1: Jo rozumím, jo.

[162:29] speaker_7: Nebo dělám jakoby jak se to jmenuje, e-e-amendments nebo editions? Já nevím, jak to říct.

[162:35] speaker_1: Hele, living dokument reflektuje nějaký věci kolem sebe, jo. Kdežto, kdežto ten immutable dokument je samonosnej. To ADRko je samonosný, prostě popisuje nějaký rozhodnutí. Transcript je samonosnej, ten prostě popisuje nějakej stav, jakej jsi zachytil při nějaký schůzce nebo při něčem.

[162:51] speaker_3: A jako popiseš ten transient teda, jak je, jak jako co znamená třeba-

[162:55] speaker_1: To je pracovní dokument, to je specka.

[162:57] speaker_3: Která už potom nebude platná nebo nebude-

[163:00] speaker_7: Edit nothing, jak chceš ADRko, jo nebo ty máš jedno ADR a jeden file jakoby.

[163:06] speaker_1: No jasně no.

[163:06] speaker_7: Jo, já mám ADR jako jsou všechny. Jasně, proto.

[163:10] speaker_1: Ale to nevadí, ale to nevadí. I v rámci toho, eh, jakoby potom to ADRko sémanticky jakoby ten jeden řádek v tom tvým jednom dokumentu je immutable, že jo. Ty bys jako neměl ho měnit, protože, no to je jedno.

[163:22] speaker_7: Jo, ale už to dávám větší smysl.

[163:24] speaker_1: Transient, to bylo kolik minut?

[163:26] speaker_3: Deset.

[163:27] speaker_1: Ok, ty jsi říkal, co je transient. Specka je transient. Napíšeš si specku a prostě v rámci kódování už prostě, nebo já, já když napíšu specku, tak v rámci kódování nejsem konzistentní s tím, že bych případný změny, který chci v implementaci dělat, reflektoval zpátky do tý specky, jo.

[163:44] speaker_7: Já jsem nechápu ten, ten rozdíl mezi immutable a transient, protože, protože tran-- že ta specka se stane jistým způsobem potom vlastně immutable.

[163:54] speaker_1: Ale jenom pokud s ní uděláš living dokument a updatuješ ji s tím statusem closed, že jo.

[163:59] speaker_7: A vždyť tam máš, že immutable never edit nothing.

[164:02] speaker_1: Proto není immutable, proto specka nemůže bejt immutable.

[164:04] speaker_7: No jasně, ale jakmile ty doručíš, tak už je tam navždy historická, už je navždy zafixovaná, navždy immute-immutable, už ji nebudeš updatovat, že jo. To nějak je něco, je to podobný jako, jako ADRko vlastně specka, která je hotová.

[164:15] speaker_1: Ne, v mým modelu to bude transientní dokument, kterej je archivovanej, jo. Protože prostě už nemá platnost, neaktualizoval jsem ho. Její, ta informace, co v ní je napsaná, ti neříká nic o dnešním stavu. Kdežto u rozhodnutí, který uděláš, že chceš prostě nevím, nevím, co můžeš takový architektonický rozhodnutí, no tak to prostě trvá, že jo. No a to-

[164:37] speaker_3: A to se nezmění, právě mi připadá, že to, to jakoby ty ADR mi připadají v něčem podobný jako, jako, jako tomu

[164:42] speaker_1: Ok.

[164:43] speaker_3: Způsobu.

[164:43] speaker_1: Jako já jsem tady s tím jako-

[164:45] speaker_3: Jo, to já na to nešlapám, jenom se snažím to mapovat na to, co, že mě překvapilo, že říkáš ADR immutable, když to je vlastně historical a že říkáš requirementu historical, když jsou taky im-immutable, mám pocit, že tam jako já nemám, nemám tu hranu tak jasnou tak, jak je popisuješ mezi, mezi historical, mezi teda tím historical a immutable.

[165:03] speaker_1: Rozhodnutí používáme Postgres.

[165:06] speaker_3: Jo.

[165:06] speaker_1: Je prostě platný od tý doby, co to rozhodneš do tý doby, co to změníš.

[165:10] speaker_3: Ano.

[165:10] speaker_1: Ale to, to změním to je někde v budoucnu.

[165:12] speaker_3: Hm.

[165:12] speaker_1: Když bych to změnil a budu používat nevím MySQL, tak prostě, tak, tak, eh, tam třeba bude napsaný, že to mění z toho Postgresu na to MySQL, ale zase je to platný, je to immutable. To rozhodnutí jako z, od toho bodu, když jsi to rozhodl doteďka, je to prostě platný.

[165:26] speaker_3: Ale tak stejně tak ty specky.

[165:27] speaker_1: No není, že jo? Samozřejmě, že není.

[165:29] speaker_3: To není.

[165:29] speaker_1: Pokud ji neaktualizuješ.

[165:31] speaker_3: No ne, ano, historická specka v historický feature, je to samý jako ADRko.

[165:35] speaker_1: No.

[165:35] speaker_3: Nějaké rozhodnutí, který jsem udělal, ty už nemusí být platný.

[165:38] speaker_1: No ale není, tak to si, to si sémanticky jako absolutně nechápem. Pokud, pokud uděláš rozhodnutí, používáme Postgres a nezměníš ho, tak je platný.

[165:45] speaker_3: Hm.

[165:45] speaker_1: Kdežto když uděláš specku, eh, která říká prostě uživatelé se můžou sign-upovat přes Gmail prostě, tak pokud mezitím naimplementuješ ještě, ještě něco jinýho, jo, nebo to změníš nějakým způsobem, tak pokud nereflektuješ, pokud tu specku neaktualizuješ, tak není platná.

[166:01] speaker_5: No to mi připadá s tím Postgresom, keď to změníš na tu MySQL, tak čo spravíš s tým prvým dokumentom, ktorý bol un-immutable?

[166:07] speaker_1: Ale my nejsme, my nejsme v tom bodě. My jsme to neudělali. Jako nemíchejme dvě věci jakoby dohromady prostě. Jo? To znamená, i A-ADR se nez-nemění, dokud ho nezměníš. Ten my jsme ho nezměnili a Postgres je furt platnej. Kdežto specka, kterou jsi napsal, mohla bejt změněná implementací, mohla bejt změněná dodatečnýma požadavkama, který se tam nedostaly a podobně, že jo?

[166:27] speaker_3: Hele, mě by ale tohle stejně zajímalo, jakoby, řekněme, že teda změníš Postgres na, eh, něco jinýho, na Convex třeba. Tak co teda se stane v těch dokumentech?

[166:39] speaker_1: No, no nic, to rozhodnutí, jako asi bych, eh, já bych to asi dělal tak, že v tom novým ADRku bych řekl, eh, měnil, měli jsme Postgres, změníme to na to, proto. Jo a to je aktuální stav.

[166:51] speaker_3: Jasně, ale možná-

[166:52] speaker_5: A tam to, tam to jde do složky, to stejně jde do složky archive nebo je smazaný.

[166:56] speaker_1: To nevím.

[166:56] speaker_5: Jo, ok.

[166:58] speaker_3: Ne, já mám pocit, že, že, že, že se mí-mýlíme v tom, co je specka, no. Protože já když jako řeším user story, tak user story nějaká, která popisuje, přihlašujeme se pomocí Googlu a pak najednou už se nepřihlašujeme pomocí Googlu, ale pomocí Applu, je nová specka pro novou story a je to velmi podobný těm ADRkům vlastně. Jo, předtím platilo tohle, teď to měníme a je to vlastně nějakej jako decision record jenom na úrovni jako funkcionality. Takže podle mě ty jenom nějak, nějak máš jinej mentální model tý specky, protože pro mě tenhleten přístup není moc rozdílný od ADRka, proto mě překvapilo, že ADRko, eh, nedáváš do historical, ale immutable a naopak ta druhá věc jinak. Takže to si myslím, že tam, tam, tam z toho nějak pramení naše, náš myslením. Jinak já ten jako framework se mi moc líbí, Tomu, jak ty mu dáváš slova a budu to používat.

[167:41] speaker_1: Hm, jenom tím budeš psát úplně něco jinýho, ale-

[167:44] speaker_3: Ne, ne.

[167:47] speaker_5: Osloví se mi lidi, budou používat úplně něco jinýho.

[167:50] speaker_3: S-s tím nic neuděláš, prostě jako vidíme slova a každej máme nějak, jenom se snažíme ty mentální modely jako synchronizovat, ale-

[167:56] speaker_1: Je to pro mě výzva a ještě se k tomu vrátím vlastně, jak se k tomuhle, jak s tímhle zacházet, pak vám dám vědět, protože samozřejmě, jo, jako pokud bysme si měli přenést nějakou znalost z týhletý práce, tak by bylo dobrý, abysme se alignovali v těch slovech a, a, a jako bez ohledu na to, jestli to budeš-

[168:11] speaker_3: Jenom pokud to budeme používat.

[168:13] speaker_1: Bez ohledu na to, jestli to budeš nebo nebudeš, nebudeš používat, protože prostě aspoň budeme mít nějakej jako common understanding toho, toho problému, jo. Aniž, tak-takže pro mě je to cenný to vlastně vzít si ty vaše, eh, jako připomínky k tomu a zkusit je nějak jako zpracovat tak, aby je třeba na ně dokázal líp odpovědět, aby vy ste řekli jako: „Jo, souhlasím s tebou.“ Když se to jako vyclearuje prostě, jo. Anebo třeba použít jiný slovo, který nebude mít, eh, který nebude mít ten potenciál, že si v něm vlastně nerozumíme v tom slovu.

[168:44] speaker_5: Mně to přijde úplně taky subjektivní per project si zadefinovat, jako že co na tom projektu dává smysl, aby bylo immutable, co dává smysl, aby bylo living a co dává smysl, aby bylo transient, takže-

[168:54] speaker_1: To ne, to právě, to, tenhleten model musí bejt portable. Tenhleten model musí bejt jasnej pro všechny projekty. Nemůžeš v jednom projektu, protože zase Cloud Code bude mít globální jako-

[169:04] speaker_5: No nebo pro tvůj styl práce, ale ne pro Radkův styl práce nebo pro-

[169:08] speaker_3: No to jsem chtěl říct, jako že ta jedinečnost každýho z nás je jakoby v pořádku. Člověk si může namyslet třeba to, co tohleto, já kdybych se tím inspiroval a vytvořil si svůj systém a ten tvůj vzal třeba jako stavební kámen, já bych asi chtěl mít jakoby living a potom něco druhýho. Nevím, jak to pojmenovat, což jsou dokumenty, který mohly bejt superseded a archivovatelný. A living je prostě něco, co není archivovaný a je, a je editovatelný. A jenom mít tyhle dvě skupiny třeba, víš? A je to v pohodě, protože to je třeba pro mě jednodušší jakoby. A, a třeba co by mě zajímalo, já bych šel třeba dál v tom fraktálu a řekl bych si, jak nejlíp upravovat living dokumenty, třeba vytvořit, protože to je taky super, že jo, vytvořit systém, aby living dokumenty byly dobře maintaineblé jakoby, to, to mi přijde taky jako důležitá část tady tohohle. A to mi přijde jako v pohodě, že jo?

[170:04] speaker_5: Mně to může přijít jako prostě architektura nějakého softwaru, tak se jako, jsou nějaké common principy, ale pre každý projekt si to nastavíš a dohodneš v tom týmu, toto budeme dodržiavať, tak to bude, aby to bylo úplně jedno.

[170:15] speaker_3: Jo, ok, ale třeba v tomhlectom, já zase bych byl na straně Tomáše. Já bych to taky chtěl globálně ve všech projektech stejně. Mít tam living a mít tam superseded nebo whatever, a to mít všude stejně, to by se mi líbilo jako.

[170:29] speaker_1: Ne, v pohodě. Není to o tom, že já budu forsovat tady to na vás. Ale když přijde novej, eh, team member třeba ke mně, tak potřebuju-

[170:36] speaker_0: Abysme se domluvili, co to znamená. No jasně.

[170:38] speaker_1: Ale potřebuju to zároveň mít jako, aby to nevyprodukovalo tuhletu diskuzi, že jo? Chápeš to? Potřebuju to mít tak nastavený, aby, aby ty objections byly jako minimalizovaný.

[170:46] speaker_0: To rozumím, ale někdy ne, někdy ne, ne.

[170:49] speaker_1: Nikdy neříkej nikdy.

[170:50] speaker_0: Nikdy to, to je svatý grál, ale vždycky budou ne-neporozumění. Co ty myslíš termem historical a t-to je synchronizace našich mentálních modelů v našich mocích, které je imperfekt.

[171:02] speaker_1: Díky za vstupy. Kromě toho ještě někdo něco? Jinak jsem připravenej čerpat jazz luz.

[171:08] speaker_0: Trošku mi vadí, že jsi mě vystrkal, jak je to do konce, ale to je v pohodě.

[171:11] speaker_1: Ne tak točíme se dokola jako.

[171:12] speaker_0: No rozumím, ale měl ses mě nechat domluvit nejdřív. Continue.

[171:17] speaker_1: Continue.

[171:18] speaker_0: I said it, it's fine, I- Už jsem to dispečnul, moje emoce. Můžeš pokračovat.

[171:22] speaker_1: Dobře, tak jo. Next.

[171:24] speaker_2: Jak jsi udělal tu prezentaci?

[171:26] speaker_1: Eh.

[171:27] speaker_2: Kaž na to skill.

[171:29] speaker_1: Jenom slovem. Jenom víš, jak Bůh řekl slovo a stalo se to, takhle jsem to udělal.

[171:34] speaker_2: Fakt?

[171:35] speaker_1: No, on řekl jenom do a simple presentation, která má tohle, tohle a tohle.

[171:40] speaker_2: Ale on teda má asi nějakou historii, jako že-

[171:42] speaker_1: Ne, to je prostě pro něj jako-

[171:44] speaker_0: Hele, ty Claude modely jsou lepší a lepší v těchhle věcech s jednoduchým promptem vlastně. Pokud neděláš komplexní appku, tak tyhle věci jsou teďka s každým modelem lepší a lepší.

[171:58] speaker_2: Já vím, no, ale třeba mně by z toho udělal artefakt. Víš, jakoby-

[172:03] speaker_1: Počkej a to bylo Claude Code, to nebylo jako desktop?

[172:07] speaker_2: To je jedno, mě Code taky udělá artefakt.

[172:09] speaker_0: Jo, jo, dělá artefakty.

[172:10] speaker_2: To je právě proto se na to ptám, že jakoby každej z nás nemá stejnej experience jakoby z toho.

[172:16] speaker_1: Fakt jo. Jako jak vypadá artefakt jako-

[172:20] speaker_0: No takhle ne, artefakt je to, co je to publishný na platformě Clauda.

[172:24] speaker_1: A on ti dá nějakej odkaz na to?

[172:26] speaker_0: Dá odkaz a pak ho tam máš dole jakoby-

[172:27] speaker_1: Hovno! To se mi nikdy se mně v životě nestalo.

[172:29] speaker_2: A pak můžeš to sharenout třeba do toho-

[172:31] speaker_1: To bych mu zakázal.

[172:32] speaker_2: To je zajímavý, že se mi nestalo.

[172:33] speaker_0: Ale tak na page create this one HTML one CSS one-

[172:38] speaker_2: Hele, jako to já pochopím jakoby kolikrát, když jsem takhle explicitní, tak samozřejmě jako my si vyrábíme to, no. My jsme přešli na spoustu, spoustu takovejch věcí, co si, co si chcem ukazovat, tak děláme prostě jako staticky generovaný sajty a hostujem si je prostě třeba sami nebo něco. Ale jako typicky, když paní chce jen takovej nějakej přehled, tak on často jako v jednu dobu začal dělat ty artefakty, že se to naučil jako nový a chtěl se asi-

[173:08] speaker_1: Poslal jsem ho doprdele.

[173:11] speaker_0: To generuje teda sám, jako že to vidíš tady v těch artefaktech, jo, v zásadě? Ok.

[173:16] speaker_2: Já teda ten desktop app nepoužívám, ale-

[173:19] speaker_0: Ok a kam si to teda jako uloží ten artefakt, když nepoužívá-

[173:23] speaker_2: No to asi tam je, no.

[173:25] speaker_0: Jo, ok, jo. Tak jo, ale to, jak jsme my, my přistoupili k našemu tématu Není asfalt jako asfalt, ukázalo se, že to je ještě jako komplexnější, než jak jsme s tím sem přicházeli, ale máme pár hmatatelných věcí, který z toho, z toho máme výstupem a který vám chci odprezentovat.

[173:45] speaker_1: Kolik si na to dáme času jenom, jen dvanáct, jedenáct?

[173:48] speaker_0: Jo, dejme na to sedm minut.

[173:50] speaker_1: Tak deset.

[173:52] speaker_0: Máme výstup z deep research, kterej dělala Janka. Tys to rozjela v ChatGPT, Gemini i v Perplexity. Máme v zásadě jeden třicet nebo takhle z každýho, ale ten, kterej já jsem nahrubo procházel, tak nějaký třicetistránkový PDFko, kde jsou ale prostě jako, pardon.

[174:11] speaker_5: Ucitovaný padesát článků, které jsem jakoby žadala o výpis.

[174:17] speaker_0: Jo, ale to je fakt jako materiál, který si myslim, aspoň já jsem možná v tomhletom trochu old schoolovej i z tý akademický sféry, že ho bude fakt potřeba jako projít ručo a pochopit ho jako aspoň principiálně, co se tam jako děje a jaký, jaký issues se tam řešej.

[174:33] speaker_5: Ono to občas dělavalo paskrnus, že drokem, že to udělalo jinou konkluzi z toho článku, jako bylo v tom článku. Takže ten text vypadá koherentně, ale ne vždycky všecky doslova.

[174:41] speaker_0: Jo jo, todlencto je jenom, abyste to zasadili do kontextu. To se věnuje vlastně tý, tý normalizaci potom těch dat, když se to bude sbírat jako od různejch lidí různý kola, jestli to zvládneme nějakým způsobem normalizovat. Irka Vyčmuchal a další konkrétní výstup, kterej z toho máme, je platforma Strava Metro, což je nějaká platforma pro zpřístupnění těch dat, který sbírá Strava. Nevím, jestli znáte platforma pro primárně sportovce. Nahráváte si aktivity, uploadujete si je a rovnou se vám tam dělá nějaká analýza. Dá se tam soutěžit na různejch segmentech a tak dále. A má pro nějaký skupiny má zpřístupněný tyhlety data. Takže tam jsem zažádal o přístup a s nějakým, s nějakým odůvodněním, tak uvidíme, jestli tenhleten přístup k tomu dostaneme, protože tam nám přišlo dost zajímavý, že zatímco my jdeme jako po tý rigoróznosti, abysme měli jako kvalitní data, tak tady bysme mohli jako část z toho opustit a jít přesto přes ty jako velký čísla, že by se to prostě jenom zprůměrovalo. Neměli bysme tak detailní data, ale měli bysme i z tohodlenctoho. Máme formulovaný, to byl dobrej vstup od Toma, za kterej děkuju, je, že vlastně při takovýdle věci bysme měli začít formulací nějakejch hypotéz a toho, jak je potom otestovat. Jo? Typu, jestli zvládneme ty data jako spolehlivě normalizovat, jestli jsou pro sběr takovejhle dat vhodný telefony, jestli záleží na tom, kde to máte na tom kole mountain team, když je to jako v kapse na zádech, nebo je to na tom na, na řidítkách. Jestli prostě standardní smartphony dostává, sbírají ty data nebo jsou schopný ty data sbírat dostatečně často, jestli volume jako ob-objem těch dat posbíraných třeba za hodinovou jízdu, jestli jako není příliš, příliš moc Tady takovej jako hezkej, hezkej vstup a další zjištění, který z toho máme. Já jsem tady s tím rovnou Tomovi oponoval, že, že ne, protože už jsem posbíral data za padesátipětiminutovou jízdu a mají necelý jedno mega. Ale potom nezávisle to rozbil Jirka a potom následně i já, protože jsme zjistili, že já jsem to sice sbíral na Androidu, ale on ve chvíli, kdy jsem zhasnul displej, tak on ty senzory uspal. Takže mně to sbíral asi první minutu a poslední minutu.

[177:04] speaker_1: Těch pět mega.

[177:06] speaker_0: Takže to jedno mega dát-

[177:09] speaker_1: Tohle je funky. On udělá takovýdle věci.

[177:11] speaker_0: Jo, jo, takže todleto bych, j-jo, ale je to jako dobrý zjištění pro to případný nasazení, že jako uživatele bysme potřebovali jako instruovat na to, aby jako měli povolený běh a sbírání těch dat ze senzorů i na pozadí, protože jinak nám todleto rozbije úplně.

[177:25] speaker_1: A jakej je teda odhad za hodinu třeba? Máte nějakej odhad jako objemu za hodinu?

[177:28] speaker_0: No, no, máme to tam jako jednu z hypotéz, která bude potřeba ověřit. Ale v zásadě trojčlenkou jsme na třicetinásobku toho, co jsme měli. Takže ne jedno mega, ale třicet mega za hodinovou aktivitu.

[177:39] speaker_1: Jenom to, že tolik, co tam je, panejo.

[177:42] speaker_0: No tak ono sbíráš každou podle toho, jak často to sbíráš. Já jsem to měl dvacet hertzů, to znamená dvacetkrát za vteřinu ti to sběr, sebere data o accelerometru, o času a o GPS. Ale já, ukládal jsem to v JSONu. Určitě to bude jako se dát uložit i v něčem šikovnější. Přesně, nějakej lepší, lepší datovej formát. Takže další důležitý zjištění, že tydlencti úplně první, nebo já bych říkal nultý sample data, že jsou vlastně jako nevalidní. Tyhlety nejsou, nejsou použitelný a máme v tudletu chvíli specifikovanejch nebo popsanejch dvacet hypotéz, což mě jako překvapilo, že, že z toho vlastně začal pít těch hypotéz tolik. Ale todlencto si myslím, že je jako do- dobrej výkop, že teďko přes ty konkrétní hypotézy můžeme jít ověřovat jako takhle moje vyvracet a dostávat se, dostávat se k nějakýmu konkrétním řešení. Tom jako produkťák tady k tomu měl ještě dobrej vstup, že by se to dalo vlastně jako docela zajímavě monetizovat ve chvíli, kdy tydlencti data mít budeme, respektive uděláme framework na to, jak je sbírat, tak vlastně uživatelům, kteří se zavážou k tomu je sbírat, tak těm je zároveň zpřístupníme. A potom, když už budeme mít nějaký jako zajímavý penzum těch dat, tak bychom mohli je jako zpřístupnit, protože třeba pro samosprávy je todleto dost zajímavý, aby věděly nějak detaily o kvalitě, kvalitě silnic. Takže za mě suma sumárum, utvrdil jsem se v tom, že to je jako dost zajímavý projekt, rozhodně pro mě osobně, a že to jako bude dost, dost komplexní a bude se na tom dát, dát v několika, v několika rovinách. Já nevím, jestli Jirko, Janko, to chcete ještě nějak doplňovat za vás, co bych neřek nebo neřek úplně správně? Nebo co byste k tomu chtěli doplnit?

[179:52] speaker_2: Ani ne.

[179:57] speaker_0: Tak pokusím se před-představit naše pseudovýstupy za dnešek jsem zvládnul nebo minimálně moje pseudovýstupy v podstatě byly docela hmatatelný. A nějaký ještě do-dotazy, poznámky od vás k tomu?

[180:14] speaker_2: Jirka jede na kolo.

[180:16] speaker_1: Já mám, já mám otázku. Dívali jste se na ten sample těch dat, i když byl minutovej, jako nechal jsi Jakuba se na to podívat a co na to říkal?

[180:26] speaker_0: Já jsem ho nechal se na to podívat a nechal jsem ho rovnou zapracovat do těch hypotéz, ale nekoukal nebo nestihnul jsem na to kouknout, jako co se toho výstupu týče, co z toho poznal. Ale tys na to rychlo koukal nějak víc do detailu. Nevím, jestli z toho jsi vyčet něco zajímavýho.

[180:43] speaker_2: Já jsem vytáhnul jenom jakoby doporučení, jak co příště udělat, jak měřit, ohraničit si prostě začátek nějakýho segmentu třema tapama významnejma, abys byl schopnej jako-

[181:03] speaker_0: Ok.

[181:05] speaker_2: Tam je ještě důležitej záznam časovej.

[181:08] speaker_0: Jako že, jako třeba jako fakt reálně klepnout do toho telefonu, aby jsi věděl, že jako jedeš ten nějakej-

[181:12] speaker_2: To se dělá, když děláš video a zvuk, proč, proč je klapka, že jo? Synchronizuješ video a zvuk jako jednoduše.

[181:19] speaker_1: Hustej, teď jsi mě úplně obohatil.

[181:21] speaker_0: Jasný.

[181:22] speaker_1: To jsi věděl, že klapka synchronizuje video a zvuk?

[181:24] speaker_0: Nevěděl.

[181:25] speaker_1: Hustej.

[181:27] speaker_0: Jasný, takže udělat si nějakej takovejhle jako mark v tom záznamu.

[181:31] speaker_2: Jo jo, protože pak-

[181:32] speaker_1: K čemu?

[181:33] speaker_2: No kvůli tomu, že třeba měníš povrchy, jakoby. Jedeš, jedeš hezkej, jedeš-

[181:41] speaker_1: Ale to asi nebude dělat běžnej uživatel, že jo? To je spíš jako pro vás.

[181:43] speaker_2: Ne, ale i jako je i dobrý i na začátku měření pro tu kalibraci. Prostě začínáš měřit, uděláš tři tapy a máš jako ten počáteční stav. Zaznamenáš si i co to bylo za jmennou dobu jakoby a tak. A tak to záznam dělá ten čas non stop, ne? Jo, ale jakoby co jsem koukal u těch, já jsem totiž rešeršoval ty zařízení mimo mobil, který si můžeš jakoby koupit a jsou prostě nějak třeba přesný a upevnily by se na to kolo a tak. A tam je hrozně důležitá ta synchronizace toho času, aby opravdu seděla ta-

[182:22] speaker_1: Proč?

[182:23] speaker_2: No když máš jako dva různé device, že máš na GPS jednu věc a na potom kameru jinou, tak to-

[182:28] speaker_1: To jo, to jo. Ale když by to byl mobil, tak je to jedno, no.

[182:32] speaker_2: Když je to jedno zařízení a otáčíš ten čas, místní čas, tak to-

[182:36] speaker_1: Chtěl jsem se zeptat, který, který jako- Brání vám něco tomu, abyste začali sbírat ty data z těch telefonů? Nebo jsou tam nějaký hypotézy, který ještě potřebuješ prověřit, než pojedete na tu projížďku?

[182:50] speaker_0: To si myslím, že ne.

[182:52] speaker_1: To umístění třeba jako.

[182:54] speaker_0: Jo.

[182:54] speaker_1: Abyste třeba jako, i když budete sbírat jenom jako v tom úzkým kruhu ty data, tak budete třeba i zkoušet jako různý umístění.

[183:03] speaker_0: Já si myslím, že to bude jako i na tom zajímavý, že si ro-- my to tam máme formulovaný jako hypotézu, jestli je stěžejní to umístění těch, toho senzoru. A jako když si to jeden dá do kapsy a druhý to bude mít přidělaný na těch řídítkách, tak si myslím, že to tím zvládneme vlastně jako rovnou, rovnou ověřovat tuhletu hypotézu. Co mě taky vlastně jako nenapadlo, ale máme to formulovaný taky jako hypotézu, že jo, akcelerometr to měří jako ve třech osách. No ale záleží potom, jestli ten telefon máš teda jako postavenej takhle nebo postavenej takhle.

[183:36] speaker_1: Jasně.

[183:37] speaker_0: Protože vlastně ti to ty osy jako zpřehází.

[183:39] speaker_1: Možná, že tohle je hrozně důležitý mít tam ten triple lock, protože ty vlastně řekneš, teď je to jakoby zafixovaný někde v nějakým jako relativním prostoru. Chápeš? Ty osy jsou nějak nastavený, jo? Jo mimochodem.

[183:54] speaker_0: Deset minut.

[183:55] speaker_1: Já jsem, já jsem šel v lese a najednou mě napadlo jako hele, jak vlastně funguje ta auto, ne auto, ale jak funguje kalibrace kompasu. Tak jsem si o tom s Kolou začal povídat. To je strašně zajímavý věc. Kalibrace kompasu se na telefonu dělá proto, že tam je vlastně malinký citlivý zařízení, který ti měří, protože to je ten tříosý gyroskop, který pak používáš v těch mapách, že jo, se natáčíš a on ti jako ukazuje, kde seš. A jestli jste si to někdy všimli, tak tam může být i vysokej rozptyl toho směru, jo. A to je proto, že tady to zařízení je náchylný na magnetickou nějakou jako interferenci nebo nějakou prostě jako vzruchy, ať už je to v tom telefonu baterka, elektronika nebo jsou to nějaký nevím dráty, věci, co jsou magnetický jako v domácnosti a podobně. A vlastně na low level úrovni toho hardwaru je zabudovaná kalibrační detekce. Jo? A to je to, že vezmeš ten telefon-

[184:47] speaker_0: A děláš osmičky.

[184:49] speaker_1: Děláš osmičky ve třech osách, to znamená, děláš takhle, ale ještě s tím telefonem takhle musíš hejbat. Jo, on detekuje obrovskej rozptyl těch hodnot a vlastně jakoby udělá nějak tu autokalibraci tady v tom, takže ty nemusíš aktivovat žádnej mód v tom telefonu kalibrační. Je to čistě na úrovni toho čipu, kterej čte ty data vlastně z toho akcelerometru. A je to podle-- a nevím, jestli by to nemělo bejt pro vás jako vstup.

[185:15] speaker_0: To udělat.

[185:17] speaker_1: Jestli vlastně je potřeba to udělat anebo jestli tak, jestli vlastně ta kalibrace je jenom pro absolutní, když chceš jako absolutní směr, že jo. Ty chceš jako absolutní směr na sever, proto potřebuješ na tu kalibraci. Ale možná vám to je jedno, protože, protože vy prostě budete mít relativní tu kalibraci a tím triple lockem de facto řekneš jako, teď jsem to zafixoval v poloze jako nějaký, jo. A tudíž, tudíž ty, ty vektory, který z toho čtu, jsou jakoby relativní vůči tomu umístění toho telefonu. Chápeš jakoby?

[185:46] speaker_0: Jo.

[185:47] speaker_1: Jo.

[185:47] speaker_6: No a stejně tam budeš mít směr jízdy nějakej, že jo. Tam spíš jde o to, aby ten telefon se nehýbal právě v kapse a neplandal nějak jakoby. Ale jinak si myslím, že prostě pokud, pokud to je fixný, ne.

[185:58] speaker_1: Ne, není. Když máš xovou osu, tak na tom vyhodnocení toho čtení závisí na tom, jestli ta xová osa je tady anebo tady, že jo. Protože pak samozřejmě ten vektor, když máš x, y, jo, tak prostě když uděláš takhle skok, tak vlastně tohle by se nemělo měnit. Když bys to udělal jenom vertikálně, tak budeš mít čtení jenom na tý, na tý y ose a na tý xový nebudeš mít. Když to budeš mít takhle a uděláš tohleto-

[186:24] speaker_0: No ale.

[186:24] speaker_1: Tak samozřejmě to čtení je úplně jiný.

[186:26] speaker_0: No jasně, ale jestli myslíš, že to je jenom transformace v tý bázi, že jo. Ale, ale-

[186:30] speaker_1: A ty musíš znát, kde začínáš, že když nevíš, kde začínáš-

[186:33] speaker_5: Pokud víš, že máš jen tyhle skoky, tak to umíš transformovat, protože víš, co máš očekávat. Jako že máš očekávat jenom pohyb v té xové ose, tak si to víš, umíš otočit tu bázi. Ale, ale pokud začneš měřit všechny ty věci a není tam jako jeden význačný směr, tak už to podle mě neumíš jen tak transformovat bez toho, abys věděl-

[186:49] speaker_0: To jsou stejně jen hypotézy.

[186:51] speaker_1: Takže já potřebuji ten initial state, abys věděl, hele, rovina je tohleto. A potom když skáču, tak musím tohleto přenýst, vlastně jakoby přenýst do toho signálu, do toho vertikálního.

[187:01] speaker_5: Jo, ale já, já říkám, že pokud víš, že budeš iba skákat, že to bude iba jako, že pokud víš, co to byl za pohyb, tak tu transformaci umíš udělat prostě.

[187:10] speaker_0: Jo, ale já už asi vidím, v čem je problém, protože ty nejedeš jakoby rovně, ale ty můžeš kličkovat jak do stran, tak, tak nadskakovat kvůli, kvůli kamínkům a překážkám. A tak potom může být problém najít tam ten dominantní směr, kterej vlastně-

[187:23] speaker_5: Ale pokud jako ten, ten, to nadskakování je takhle a to kvůli překážkám jako malé, tak i stále vieš podle mě odhadnout, čo bylo dominantní směr. Ale já nevím-

[187:31] speaker_1: Protože nevíš, kde to máš nastavený, že jo. Chápete? Vy jakoby, ty nemáš jako zařízení, který mountneš na ten jakoby, na ten, na ten bike jedním specifickým způsobem. Ty máš zařízení, který má v sobě relativní osy, že jo. Ony jsou relativní ty osy v tom smyslu-

[187:45] speaker_5: To my tomu v tom výpočtu říkáme.

[187:47] speaker_1: Ok.

[187:49] speaker_0: Já jsem, já jsem měl plnej močák a musel oběhnout. Ale podle mě to, co, na co jste tady narazili, trochu řeší myšlenkově tu, tu problém u těch os, protože ve chvíli, kdy se ty data posbírají, tak ty jsi schopen nějakým tím preprocessingem, kterej jsi zmínil, když jsme se tady o tom bavili, jako identifikovat to vlastně, ve kterým směru se dělá ta největší, největší amplituda. A tím, tím budeš schopen detekovat to, jako zorientovat si to, tu, tu osovou soustavu si transformovat tak, aby ti byla unifikovaná. Je to hypotéza, není ověřená. A právě když to začneme sbírat-

[188:30] speaker_1: To znamená, ty vlastně říkáš uděláme automatickou detekci toho, j-j-jaký ty signály odpovídají jakým těm jako fyzi, fyzikálním jevům na tý trase. Jo? A to mně přijde hrozně zbytečně složitý. A už jenom jako kapitola sama pro sebe, abys vzala data, o kterejch vůbec nic nevíš, vlastně jak to bylo zorientovaný a snažila ses to z toho přečíst. A přišlo by mi jednodušší si tím nokem u, jako udělat ten, tu referenci základní. Jo, že když triple nockneš prostě na ten ten, tak si řekneš, já jsem jakoby takhle orientovanej na tom začátku a potom už můžu vyhodnocovat ty signály vůči tý základní orientaci.

[189:08] speaker_0: Jo, že by si prostě řek, že máš jako třikrát-

[189:10] speaker_1: Máš základní referenci.

[189:10] speaker_0: Jo, že třikrát nockneš na displej, takže on bude mít jasno, že jako z týhletý osy na něj klepeš.

[189:15] speaker_1: Ne, ty budeš vědět. Trojitej knock mi vlastně říká, jak jsou ty osy orientovaný vůči, eh, vůči, že, že to je vlastně jako kdyby rovina nějaká. Jo, ty vlastně řekneš, že- No, no referenční bod ta klapka, že jo? To je ta klapka. Ty máš ten, ty máš ty tři osy.

[189:32] speaker_0: Jo.

[189:34] speaker_1: Namontuješ to. A tohle je rovina pro tebe, že jo? Ty to namontuješ na bike a řekneš knock, knock, knock. Tohle je rovina.

[189:42] speaker_0: Jo, takže musíš na to-

[189:43] speaker_1: To je referenční bod, jako kdyby.

[189:44] speaker_0: Musíš na to zaklepat jak s klackem.

[189:45] speaker_1: Nebo zmáčkneš tlačítko, to je úplně jedno, jako zmáčkneš tlačítko jakoby teď jsem, teď jsem namontovanej, že jo?

[189:51] speaker_5: Ale ty neumí, ty, ty, jako jak si ten model pročítá, že to máš takhle a ne takhle?

[189:56] speaker_1: No, no ty mu řekneš, že v době toho čtení, eh, při tý klapce, jo, tohle je rovina, že jo? Ty, ty určíš tu rovinu. Teď jsem na rov-- teď jsem na rovině.

[190:06] speaker_0: No ale ty mu neu-neučíš, kterým směrem koukáš, kterým směrem máš to.

[190:11] speaker_5: Ty iba určíš, že po ta čtení, že-

[190:12] speaker_0: To je akademická diskuse. Je ale dobrá.

[190:14] speaker_5: Tak to vieš, že vrátil do počátečního stavu, ale ty nevíš to povedať, že jestli je to vodorovně nebo je to svisle.

[190:20] speaker_1: Ale ty to nepotřebuješ mu-mu-mu to říct. Ty potřebuješ prostě vědět, jakoby představ si, že mí, že, že prostě chceš změřit v nakloněný rovině rovinu. Máš prostě desku, neumíš ji dát do roviny, ale chceš ji měřit na nakloněný rovině, tak si tady řekneš, tak si to dáš do tý nakloněný a řekneš „Tohle je rovina“, jo? A teď to posouváš po tý desce a ono se ti mění ten, ten úhel. A pak víš vlastně, jak moc je to jako jinak oproti tý, tý rovině, jako relativní, kterou sis stanovil, že jo. To znamená-

[190:46] speaker_5: To by si úplně stejno.

[190:47] speaker_1: Jakoby třeba, třeba, eh, v-věřím, že některý osy jsou alignovaný s tím telefonem, jo? Že když ten telefon postavíš jako takhle do mě, tak prostě on ukazuje dopředu a dozadu a že ta osa, jedna z těch os bude takhle nastavená.

[191:00] speaker_0: Ano.

[191:01] speaker_1: Ale ty ostatní bejt nemusí, že jo. Ty ten telefon nebudeš mít jako namontovanej v absolutní rovině, že jo. Budeš ho mít nakloněnej. To znamená, jedna z těch os bude sice ukazovat jako dopředu směr, jako že tohle je dopředu, ale vlastně když zatřeseš s tím kolem, tak, tak se ten přenos toho třesu bude, bude, bude projevovat jako do dvou těch os, že jo. Nejenom do jedný.

[191:23] speaker_5: Ano, ale to sa spraví ešte ako.

[191:25] speaker_1: A já říkám, a já říkám jenom to, že nemusíš to se snažit automaticky detekovat, ale můžeš říct tady je referenční bod, kde jsem začal, jo, a, a, a ten mi, ten mi říká, jakým způsobem mám vyhodnocovat ty signály z toho kola. Že tohle je down a tohle je up prostě.

[191:42] speaker_5: Ale já, já říkám, že, že to ty povíš, že tohle je začátek, tak ty mu povíš iba, že když se to počas jazdy změní, tak to vím dát na začátek. Ale ty mu nevíš povedať z toho, že ten model nakloníš, že jak je to moc nakloněný.

[191:56] speaker_0: Ale vy jste to řekli oba dva tady teď. Jediný, co tím získáme, je, když, když tam dáme namísto zaklepání, tak jediný, co navíc získáme je, že budem vědět, jak, jak je nakloněný ten telefon navíc oproti tomu, že, že, a to my nepotřebujeme, my nepotřebujeme vědět, jak je nakloněnej telefon. My potřebujeme vědět trasu tý jízdy. Takže já si myslím, že, že jediný, co ta kalibrace udělá je, že budem schopný určit kdykoliv během jízdy, jak je nakloněnej telefon. Ale to my nepotřebujeme. Ale podle mě to zase jako to, co tady navrhujete, se dá vyřešit tím, když nebudeme klepat na ten telefon, ale když ho namontujeme na to kolo, tak zaklepeme s tím kolem, protože tím už se nám, eh, potom alignujou ty, ty osy.

[192:35] speaker_1: A musíme s tím zaklepat, nestačí se rozjet? Stačí, když zmáčknu tlačítko, to je úplně jedno, je to klapka, klapka k tomu, klapka k tomu-

[192:42] speaker_0: Můžem klepat i s tím mobilem.

[192:44] speaker_1: Abys mohl, abys mohl synchronizovat ty signály, že jo, prostě. Takže je úplně jedno, jestli to bude po-poklepy, jestli to bude tlačítko v tý appce nebo whatever it is prostě, jo. Ale, ale je to jakoby teď mám kolo v rovině a telefon mám nakloněnej takhle. Možná tomu blbě rozumím, jo a už to opakuju popátý, takže asi evidentně to jakoby, eh-

[193:03] speaker_5: No potom je to tlačítko niekde.

[193:04] speaker_0: Jo.

[193:04] speaker_1: Jako ve smyšce.

[193:06] speaker_0: Ale ty myslíš, že nám stačí jenom ta časová vlastnost?

[193:09] speaker_1: Jinak můžete mi ukázat někdo appku, která ukazuje ty výstupy těch os toho gyroskopu?

[193:14] speaker_0: Jo.

[193:15] speaker_1: To bude možná jako, třeba se přesvědčím z nějakýho nesmyslu a bude to cajk.

[193:19] speaker_0: Tohlensto je accelerometr.

[193:20] speaker_1: Ty jseš gyroskop?

[193:21] speaker_0: Chceš se zeptat Kloda? Gyroskop vypadá takhlenc.

[193:26] speaker_1: Jasně. Tohleto to dělá to kolo, že jo prostě, jo. Teď si vem, že, že teď, jo mě vlastně zajímá, jestli když to budeš mít takhle, budeš s tím klepat-

[193:38] speaker_0: Když, ale jestli řešíš-

[193:40] speaker_1: Tak to kreslí jako jiný osy, chápeš prostě. Prostě je to na jinejch osách.

[193:45] speaker_0: No.

[193:45] speaker_1: No, tohleto je na modrý, tohle-

[193:49] speaker_0: To je na nějaký kombinaci.

[193:50] speaker_1: Je na nějaký kombinaci. O tom, o tom to jako je, jestli tohle chceš detekovat automaticky a nebo jestli chceš říct, hele, tohle je základ a proto si budu převádět ty signály jako-

[194:02] speaker_0: Udělat to transmatem.

[194:04] speaker_1: Dle tý základní reference, kterou jsem si tady dal mačkáním toho tlačítka. A ještě možná by potřeboval vysvětlit jako, eh, jasně, a to je to samý tohle, ne? Tak co? No jasně, určitě to musí bejt to samý.

[194:15] speaker_5: Tak ti to neurobí tu, akože ne-nevíš, jak je to orientované v priestore nebo umíš?

[194:20] speaker_0: Proto-- ne, protože ale to míří jenom na to, že by tys to sy-synchronizovala jako časově, že by jsi věděla jako teď je ta značka, kdy jako vím, že mám tam namontovanej ten telefon takhle a- Ale kolo už mi stojí na rovině. A to, co říkám já, je, kdybysme poklepali s tím kolem-

[194:36] speaker_5: Já nerozumím, jako co je přidaná hodnota toho, co říkáš tomu.

[194:40] speaker_0: Jo, jo.

[194:42] speaker_5: Protože to prostředí ti tam zorientuje prostě i ten fyzický prostor, protože umíš, že to-

[194:47] speaker_1: Dobře, hele, chceš měřit bumpy, jo? Jestli to správně chápu, tak jako v ideálním světě máš ten telefon, eh, na-nastavenej takhle rovně.

[194:54] speaker_0: Ano.

[194:54] speaker_1: Jedeš na kole a ono se ti takhle nějak prostě třese.

[194:57] speaker_0: Ano.

[194:57] speaker_1: A tys z toho říkáš: „Jo, tady byly nerovnosti, tady to bylo jako mnohem mírnější. Tady to byla rovinka úplná, prostě. Tady prostě jsou nějaký šílený bumpy.

[195:05] speaker_0: Jasný. Jo a ještě tady, tady se vyhýbám nějakejm podhouľům.

[195:10] speaker_1: Ok, tomu moc nevěřím, ale protože jak rozeznáš zatáčku od podhouľů a tak dál. Ale jako pojďme jenom na ten základní, jakoby na ten, jako vlastně ty jsi chtěl ten obecnej, tobě nešlo o podhouľi nebo primárně ti nešlo o podhouľi, ale o obecnou kvalitu toho povrchu.

[195:25] speaker_0: Ano, ano.

[195:25] speaker_1: Jestli je hladkej jako sklo anebo nerovnej jako kostky třeba dlažby prostě.

[195:29] speaker_0: Přesně, jo.

[195:30] speaker_1: No a tudíž jako, eh, vlastně... Já budu číst nějakou osu a chci vědět, že to je ta bumpovací osa. Potom to pro mě-- teď je ta bumpovací osa čistá, protože jsem v dokonalém prostředí.

[195:44] speaker_0: Ano.

[195:45] speaker_1: Ale teď, když to mám namontovaný takhle, tak ta osa není čistá, že jo?

[195:49] speaker_0: Jasně.

[195:49] speaker_1: Tak se to, tak se to přenáší na různý osy.

[195:51] speaker_0: Jo.

[195:51] speaker_1: A proto potřebuju vědět, co je ta rovina vlastně. A já mu řeknu: „Tohle je ta rovina“, jo a, eh, p-p-proto vím, že si můžu j-j-jako budu vědět, jak přep-- a asi bych to vzal možná z toho gyroskopu.

[196:05] speaker_0: Hm, ano, aby jsi věděl, jak seš zorientovanej.

[196:08] speaker_1: Abych se, abych si věděl, jak jsem zorientovanej. Ok, ale možná, možná chápu pointu tu, že vlastně pokud tomu gyroskopu můžeš věřit, tak vlastně holt si to vezmeš tak, že-- ale on taky kreslí rovinu tady nulu. Vidíš, že i ten gyroskop vlastně ti jako sice řekne, kde jsi byl, ale pak se srovná na nulu, takže on ti-

[196:27] speaker_0: No a když tam otočíš takhle?

[196:29] speaker_1: On je furt na nule.

[196:31] speaker_0: Jo.

[196:33] speaker_1: Furt se to dostane na nulu. On ti říká jako-

[196:35] speaker_5: No to by už mu hovorila, že tým stlačením gombíka nezistíš orientáciu toho mobilu, pretože je to na nule. Musíš s tým zahýbať.

[196:42] speaker_1: Hm.

[196:43] speaker_3: Gombíka.

[196:44] speaker_1: To znamená, kdyby byl v klidu ten telefon-

[196:46] speaker_0: Vykreslí směr otáčení asi, ne?

[196:48] speaker_5: On vykresluje prostě zmenu toho pohybu podle mě.

[196:51] speaker_1: Takže ty říkáš to, že když je ten telefon v klidu, tak nestačí zmáčknout tlačítko, protože, eh, nezjistíš, že ten telefon byl.

[197:00] speaker_5: Nezjistíš naklonení toho mobilu.

[197:00] speaker_1: Potřebuješ teda, potřebuješ teda buď jako zaťukat nebo zahýbat s kolem, aby jsi věděla vlastně jako kde seš a podle toho potom mohla interpretovat ty signály z toho accelerometru.

[197:12] speaker_5: Ano.

[197:12] speaker_1: Ok, ok, tak už si rozumíme.

[197:13] speaker_0: Já mám-

[197:13] speaker_1: Jo.

[197:14] speaker_5: To byla jedna vec.

[197:15] speaker_3: To už jsme docela rabbit hole tady jdou.

[197:17] speaker_0: Krásná rabbit hole, ale je vidět vaše passion pro tuto rabbit hole. Super. Každopádně dík za vstup, piče.

[197:27] speaker_1: No je to exciting.

[197:28] speaker_0: Dík za téma.

[197:29] speaker_1: Je to, je to jednoznačně nejvíc sexy téma jako, jako dneška, no, aspoň pro mě teda.

[197:35] speaker_0: Já, já musím přijít schůzku se zákazníkem.

[197:39] speaker_1: Yes, this is the fucking street, ty vole.

[197:46] speaker_0: To jsou úplně priority.

[197:48] speaker_1: Jasný priority, ty vole.

[197:53] speaker_5: Co ta paní obsluha už to... To je oficiál nebo?

[197:58] speaker_1: Tak tohle je, eh, můžu tady pomoct? Můžu tady požádat nějaký kitchen handy o pomoc?

[198:04] speaker_5: Jo, ale-

[198:04] speaker_0: Já potřebuju jednu tvoji zeru, já bych rád pomohl, ale potřebuju-

[198:06] speaker_1: Já bych potřeboval nastrouhat ten parmazán, kousek.

[198:10] speaker_5: Jo.

[198:10] speaker_1: Tak si z toho ideálně kousek uřízněte a nastrouhejte.

[198:13] speaker_0: Kolik je Niki?

[198:14] speaker_1: Potřebuju dvanáct.

[198:16] speaker_3: Dvanáct, brzy třináct.

[198:20] speaker_0: To je docela velká teda.

[198:21] speaker_1: To je? Viděl jsi?

[198:21] speaker_0: Jestli paměť neviděl, ale-

[198:22] speaker_3: Tak za chvilku uvidíš, ty vole.

[198:24] speaker_0: Když si pamatuju, co jsem já ve dvanácti a třinácti dělal.

[198:28] speaker_3: Trošku mám strach z toho, co bude ve dvanácti a třinácti dělat. Ale ještě s tím máme hodně otevřenou diskuzi o drogách, o sexu a o nebezpečenstvích světa. Tak doufám, že nám tahleta otevřená diskuse zůstane. A pak máme-

[198:47] speaker_0: Asi jo.

[198:48] speaker_3: Pak jsem chvílu, no.

[198:50] speaker_1: Jste někdo vegan?

[198:51] speaker_0: Kdo dobře začne, tak to dobře skončí.

[198:55] speaker_1: Jste někdo vegan nebo vegetarián? Že byste, že by vám vadilo, že jsou žampiony smažený na slanině?

[199:02] speaker_0: To zní skvěle.

[199:04] speaker_3: Já chci the more slanina, the better.

[199:08] speaker_1: Ok.

[199:10] speaker_3: Já jdu k tomu tele.

[199:12] speaker_0: Já mám hypotézu, že to ne-nezáleží vůbec.

[199:15] speaker_1: Jo, pokud to nakrájeme na kousky, všechno jako naběží klidně a potom usmažíme s tím na pánvi-

[199:22] speaker_5: Kolik si toho dáme?

[199:24] speaker_1: Eh, třeba, třeba. Ono ho je pak docela dost. A pak to kombinujeme s dalšími-

[199:31] speaker_5: Jo, jo, já myslím, že dáme-

[199:33] speaker_1: Takže to. Hele, já se omlouvám, já jsem jako, vždycky jsem hroznej asshole jako v diskutování. Takže, takže já se snažím jako úplně sbalovat, ale, ale když se dostanu do jako prostě nějakýho takovýhleho cyklu, tak potom, eh, mám hrozně špatnou tu detekci toho, jako být něj asshole, jo. Takže-

[199:53] speaker_5: No já jsem nejspíš taky asshole, ale také nejsem dobrá v diskutování, takže jako dobrý způsob.

[200:00] speaker_0: No zajímavý, že někdy člověk potom ztratí se tou schopnost argumentovat nebo ne-neztratí, no, to vysvětlovat nebo prostě-

[200:09] speaker_5: Že to jako, ale fakt jako otočí párkrát, když to jako nepochopí, takže to jako, no to-

[200:14] speaker_1: Ale jako je, jako naseruje to, že vlastně jako v ideálním světě bych chtěl detekovat to nepochopení.

[200:22] speaker_5: Jo.

[200:22] speaker_1: A chápat, hele, já můžu dělat něco, já, já můžu jako tady v pátečku nebo zas není nutná, to může být něco druhýho, nemlaťšit na svoji argumenty, ale vlastně dopítit se k tomu, že si nerozumíme, že si nerozumíme.

[200:33] speaker_5: Jo.

[200:34] speaker_1: A to bylo jako-

[200:35] speaker_0: Jasně.

[200:35] speaker_1: Nejste příjemnější a, a, a, a, a, a vlastně konstruktivnější jako pro, pro, pro tu diskusi. To jsem to úplně nezvládl, ale jako zvládl to mnohem líp.

[200:56] speaker_5: Beru to vole v pohodě.

[200:57] speaker_0: Hele, já vám to, Tome, já ti to roz-- já to úplně rozstřelím, ty vole.

[201:03] speaker_5: To je jako jediná jako bedna.

[201:07] speaker_0: Tak si představte, že na tom vůbec nezáleží, jak jste telefon máš je celá.

[201:12] speaker_3: No.

[201:13] speaker_5: Protože jsi na začátku.

[201:15] speaker_0: Ano.

[201:15] speaker_1: Protože ty říkáš, že to můžeš vyhodnotit tak, jak potřebuješ ten signál, aniž bys to měl nějak jako kalibrovaný nebo něco. Nebo jestli na tom nezáleží.

[201:25] speaker_0: Protože my totiž nevíme, jak fungujou ty čidla.
