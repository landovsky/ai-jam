# 03-03 AI Jam: příprava AI hackathonu

**Date**: 2026-03-03

**Speaker 1** [0:11]:
Mimochodem, Honza se velmi pochválila tvůj vyknedovaný web s AI news. Jo, já ho čtu taky.

**Speaker 2** [0:28]:
Já ho čtu taky, protože jsem vlastně zjistil, že si jako zaklikám na tom Twitteru jenom to, co mi přijde jako zajímavý a přečtu si to až tam, že to je mnohem lepší.

[0:41]:
Pár pojímc mě překvapilo a dneska mě překvapilo strašně milé ráno. Jsem zjistil, že jsem si nastavil včera takovou pipeline, No včera, včera, včera to dva dny jsem dělal, Ale obecně prostě chci prokopat to agentní programování, Čímž my do toho asi skočíme jako vlastně doprostřed trochu. Takže mám vlastně na Githubu issues, který vlastně on odbavuje rovnou. Protože tohle je taková bobost, tak to rovnou dává taková produkci, že bychom se s tím jakoby mazali.

[1:15]:
Takže jsem k tomu dneska, ráno jsem se přišel podívat, nevydal teda článek, to je jako chyba, kdyby došly tokeny. Ale tady jsem zjistil, že je jako tlačítko nový, tak jsem ho jakoby zmáčknul. To je teda hodně tmavý. A pak jsem zjistil, že se tady objeví přehrávač, že si to můžu takové přehrát a že to má i jako playlist, to je docela hezký. Udělal sám jako?

**Speaker 3** [1:39]:
No jasně.

**Speaker 2** [1:40]:
Já jsem tam někde měl vágně napsaný trik, ale potřebuji, aby to bylo na home page, abych si mohl z home page přehrávat ty články a to je OK. Ráda si z toho, jaký je přátel, jak si přejete, ráno mu přehráte.

**Speaker 1** [2:02]:
V čem uděláte transky?

**Speaker 2** [2:04]:
V nějakým open source TTSku. To běží na tom serveru, to není jako napojený na žádný app, takže tam je všechno. Teda, ale to se ještě rád změníme. A je to cloud, nebo co zatím běží? Běží zatím cloud a dneska tady mám předělanou tu pipu, jenom neměl jsem vůbec čas celý den to vyzkoušet. Zkouším Quena, protože my tady máme počítač, který má tři čtvrtě RAM.

[2:37]:
To znamená, že je spousta místa na pomalý modely a pak je tam 24-gigová ranka. Nějaký RTX 6000, na kterém by se měl vyšetřovat orchestrátor, něco jako A-sonet, ale bude to blbější samozřejmě, který jenom rozvazuje úkoly. A pak tam na refinementy těch backlogů a tady těch bude ten kven větší, ten bude pomalejší, protože bude normálně v rámce.

[3:08]:
A potom se spouští fronta úkolů, který jsou už pak normálně řízený tím, teda řízený rekonámaný slonetem nebo opusem do toho, co si vyvede ten orchestrátor podle složitosti toho úkolu. Takže to pak uvidíme, jak to bude vlastně chodit, jestli to bude chodit. Teď tam náš poslední věc, že jsem našel nějaký task kvarióru, co se mi líbí. Tady.

[3:38]:
Ono funguje tak, že na pozadí je náš GitHub a ten se různě refajnuje a ve chvíli, kdy ten task připravený, tak spadne na ten server do task kvarióru, což je vlastně... AQ systém, který dělá už asi 15 let a ty musíš prohánět takový cokoliv a ta výhoda je, že ona to spouští úlohou a když ji to spustí, tak podle status kódu zase podle pravidel něco udělá. Nebo skončilo to jedničkou, nulou, dobře nebo špatně. Takže to může řídit kódama těch skriptů a to pouští vlastně kóda. Tady je, jestli je to opus, opus nebo sonet, takže to je cloud code, mohlo by to pouštět kodex klidně, kdybych to tam měl připojený a podle projektů to řadí do nějakých těch.

[4:23]:
Takže tady vidíš nějaký statusy toho, co se děje. No a pak už je to o tom, aby prostě ty agenti, aby to bylo nastavený.

**Speaker 3** [4:30]:
A zatím je co? To je markdown nebo texták? Nebo co je zatím za každou tou řádkou?

**Speaker 2** [4:35]:
Za každou tou řádkou je konkrétní úkol do Githubu. Ok, ale lokálně on nic nemá. On má token do Githubu a když to dostane, tak se koukne na issue. Dělá podle toho, co je napsaný v řešu. Tam je nějaká konverzace, kde tam můžeš něco napsat, že jo. A teďka se snažím to jako dochodit tak, aby ty vlastně... Založíš tomu GitHubu, a on to poluje, a prostě podívá se tam jednou za čas. A teďka prošťáko dořeší jakvý ty jedtajuly typu, že ještě to překnutý na mě, ať na to nesáhá.

[5:07]:
Když je to překnutý na něj, tak ať to řeší, když ho menšinu, ať reaguje. To je na tom asi to jakoby jednodušší, ale samozřejmě prostě jsem si jako s rozběhem naběh zase... Do složitostí, že jo, že tam chci kvena, chci tohleto, chci támhleto. Jenže já prostě chci to, co se mi teďka jakoby povedlo, že jako ráno přijdu se podívat, co je hotový, že? Já jsem asi vyhlídl.

**Speaker 3** [5:33]:
Já jdu jenom napsat těm, kdo se přihlásili na ten Meet Feating.

**Speaker 1** [5:39]:
Na ten dnešní? Na ten dnešní, jo. Aha, někdo byl zmatený z toho, že si nevšim toho on-site, ale... Tak to půjde, to dva je stojí. Někdo se chce připojit, pokravený kam teď psát těm lidem. Tohle je super, to bych chtěl vidět, možná ten news case celý, Třeba na tom AI Gym, abych si to ukázal.

**Speaker 2** [5:59]:
Já doufám, že na tom AI Gym bych to měl mít funkční, Aspoň pro sebe tady. Mám jeden firmní projekt, který je takový trošku o půl darma, takhle bych na to chtěl vyskúšet vlastně celý, ale...

**Speaker 1** [6:15]:
A tak teďka jste to tam udělal některý ty feature tady, tímhle diskusům, jestli to dává? Ne, no, se podívej, tady mám takovou videobombu a on má uzavřených jako stojšů, on jako jede, že jo, prostě... Že mě by to zajímalo, jak to je nasetupovaný celý jako víc do detailu, no? Já myslím si, že víc lidí by to zajímalo.

**Speaker 2** [6:29]:
Tak snad se to jako podaří, no. Podaří co? Mě dotáhnout tak, aby to chodilo jako předvídatelně. On to teďka chodí, on se tam jednou začas podívá a něco udělá, ale ještě potřebuje, Bude to napsal, protože tohle dělají, tohle nedělají a on by do toho dělal přesně všechno.

**Speaker 1** [6:45]:
To nevadí, to stejně i v TLB formě, si myslím, že to může být dobrá inspirace pro spoustu lidí. Pro mě určitě. Uvidíme, jak to... Tak jo, tak přestaneme AI gymovat, začneme AI plánovat. Jo.

**Speaker 3** [7:04]:
To víš, kdo teda se přihlásil, Tome? Jo, ještě ten Honza Kubant a Adam. Adam asi nebude. To bych můžel zavolat.

**Speaker 1** [7:13]:
Tak jo. Zavolám, jak to je, ale preferoval bych, Aby spíš jsme to udělali tady, než aby jsme Řešili ještě někoho připojenýho nadálku.

[7:39]:
Čau Honzo, jenom volám, jestli tě to náhodou neví, jde sem k nám, za náma na závodný pruh.

[7:46]:
Pohodě, tak my si to tady uděláme on-site a nepřipojíme tě, nebo představoval jsi, že se připojíš on-line? Dobře, potřebuji, že tě nás dílíme výsledky. Jasný, tak jo, čau Honzo, čau čau.

**Speaker 3** [8:02]:
OK, tak tě mi to dá. Necikneš ještě tomu Adamovi, prosím, já bych měl asi lepší pocit. Jasně, nikoho nesignorovat, nech tíknout. Dobře.

**Speaker 4** [8:14]:
Na signorování.

**Speaker 2** [8:35]:
Jirka se jako zkusí stihnout, ale. 

**Speaker 1** [8:40]:
Nevím, co to znamená přesně. Ale myslím si, že nás už doloz na to, abychom to vymysleli. Adam nebere.

**Speaker 3** [8:55]:
Jo, super. Necháte Jirka se.

**Speaker 1** [8:59]:
Nevím, jestli jsi se ani tam nehlásil, myslím, že jo. Adam vlastně psal jenom, že by mě, protože to nezvládá, ale že by mě nějak nabrýchoval v kmeni, což neudělal. Pohodně. Já tady dávám záložku a to můžeme začít.

**Speaker 3** [9:13]:
No, jak to uděláme? Nebo já bych řekl, asi já si představuju, že bude objektiv toho programu. Dnešního. A vlastně i toho, nebo kam směřujeme, nebo kam směřujeme v tom neketonu. Mně by se líbilo, kdyby si to každý můh nějak užít, aby se tam každý můh nějak najít. A jestli to znamená, a to je moje otázka spíš na vás, znamená to, že budeme mít víc témat, nebo víc okruhů nějakých, aby lidi měli tu možnost si říct, baví mě víc tohle nebo tohle.

[9:49]:
Tak to je asi taková jedna otázka, kterou mám, ale bylo by zároveň dobrý přijít, asi ne s úplným vějířem velikých možností, ale prostě aby to bylo nějak konkrétní a říkal jsem si, že právě když si dáme tady tu přípravu, tak nám to jako umožní, aby to bylo dobře rozmyšlené, aby lidi věděli, co můžou čekat, co můžou dělat, jak se můžou zapojit a tak dále.

**Speaker 1** [10:11]:
Já bych možná nejdřív...

[10:15]:
Uvěd ten širší kontext, jak jsme se domluvili, že to bude zhruba koncipovaný příště, Protože ten Hackathon je jenom část toho příštího EI jobu, že jo? Takže jenom bych řekl Filipovi a Viktorovi, že jsme se s Tomášem bavili, Že chceme zachovat vlastně v nějakým způsobem ten formát, který je teďka, To znamená, pořád sdíráme témata, pořád tam budou nějaký lightning talks, Ale většina těch workshop style témat budou Hackathon příště, je to tak?

**Speaker 3** [10:43]:
A je to proto, aby ten, kdo třeba na Hackathon nemůže nebo nechce přijít, tak aby pořád se mohl zapojit na tu běžnou dobu, řekněme, na ty dvě, tři hodinky, a pak si třeba mohl odejít. Což, takže vlastně, já si to představuju tak, že dáme nějaký lightning talky a pak už to rovnou vykopneme. A budou lidi, kteří se třeba odpojí potom před obědem a budou lidi, kteří to vloukí dojet všechno do konce.

**Speaker 1** [11:08]:
Takže budeme mít nějaký tříhodinový track, jakože třeba, já nevím, První hodina, hodina a půl, i s introkolečkama budu lighten tolky a tohleto, Ale pak už ty hegetonisti, kteří chtějí fakt jako get the hands dirty, Tak prostě už sednou a pojedou, ať se to nezdrží ničím dalším. A jestli tam vykrystalizuje ještě nějaký téma pro někoho, kdo by chtěl prostě diskutovat, Nebo něco jiného řešit, tak to je v pohodě. Ale bude prostě hegeton track a tenhle ten kratší track. Yes?

**Speaker 2** [11:37]:
Dobře. A ten hegeton by byl opravdu jenom jako rubida, jo? Titulky vytvořil JohnyX. Tenhle keton by byl opravdu vodoběd.

**Speaker 1** [11:45]:
Já bych si představil právě, že začne hnedka po těch nějakých lightning tolls. Hnedka po nějakém takovém jako rychlém začátku. Protože se ukazuje, že toho času je jako fakt málo. Že se to využije celý ten den, takže bych myslel, že bych hned nebyl dobrý z toho. Jo, určitě.

**Speaker 2** [12:00]:
Asi budeme tady tím pádem mít nějakou technickou přípravu zvládnutou, Abychom pak nezačali dělat servry a nějaké prostě věci až potom. Sybolevo, která hodinová původnice nestane vlastně a to asi závisí od toho tématu, co si řekneme, jestli jsme nalazili pipeline, jak to někdy doděláme, to nezveřejíme, to si řekneme podle toho tématu.

**Speaker 3** [12:28]:
No, mně připadá, že jako všechny na nějaký mír zajímá to openplot. Jak tohle vidíte? Vy vidíte to, že se by to podle toho mělo jako rotat, nebo?

**Speaker 1** [12:37]:
Jo. Já za sebe vlastně celý ten hege to nějak spíš pustím a budu se spíš, nechám to spíš na vás a spíš se zúčastním jako účastník, než abych to nějak jako drajoval příštím směrem, nechám se rád jako ovlivnit tím, co, co budou ostatní řešit, no.

**Speaker 2** [12:51]:
To open call je dobrý, no.

**Speaker 1** [12:53]:
A možná nechceme teda nejdřív rozhodnout, jestli jako jedno téma, jeden tým, jeden cíl, anebo jestli se to bude štěpit, nebo to záleží na, na počtu účastníků, na...

**Speaker 3** [13:06]:
Taky asi na možnosti spolupracovat v těch týmech, pokud bude líst týmu, jakože nemusí být, ale já si to tak jako představuju, za sebe si ideálně představuju, že jsou týmy o dvou, třech lidech třeba, nebo jsem řešený, chci říct sám, tak jako muže, kteří si tam něco budou kutit, nějakej svůj aspekt toho, té dané věci. Jako úplně takový, jako jenom tak, jako říkám takové věci, jo, prostě. Řekněme, že budeme dělat prostě open-cloud asistenta. Budeme mít jednoho, jakože budeme mít jeden cílový stroj nebo cílovou instanci, kam to pak budeme chtít všechno nasypat, třeba ty skilly, a každý si tam bude chtít udělat nějakou novou část, někdo si bude chtít udělat nakupování brodíků, někdo jinej si bude chtít udělat, nevím, obsluhu kalendáře, volávání telefonický, já nevím, něco vlastně, různý pluginy do toho, nebo různý věci, co by to Open Club mohlo dělat, což...

[14:04]:
Jako nutně to neznamená, že to musí běžet jako v jednou, že jo, každý může mít nějakou svoji instanci a tam si to může jako zkoušet, jo. Navíc se komponento neumí v podstatě jet ve více vláknech, že jo, pořádně.

**Speaker 2** [14:15]:
Volumí jako víc, jak person, jak to by asi umí, to vypadá, že tam těch agentů jde založit víc, ale nevím, na jakém principu to funguje, protože podle mě nejsou nás unboxovaný, Tak to je spíš z toho typu polární osobnosti, prostě. Dobrý den.

[14:34]:
Co by mohlo být jako cílem toho heketonu? Já vám to řeknu. Podle mě bysme měli udělat něco pro Square.

[14:45]:
Samozřejmě. Já bych navrhoval něco trochu jiného. Já bych navrhoval udělat normálně virtuální firmu. A udělat jakoby jednu. Udělat jeden server, jeden open cloud, jeden repozitář, jednu appku, to je jedno. A na to nabalovat různý věci, protože když to chápu dobře, tak... Celý ten vtip je o tom orchestrovat jako skily, agenty, nějaký procesy, Ale to neznamená, orchestrovat ještě neznamená, že si musí všichni jít najednou, že jo? Jestli tam někdo si chce udělat prostě objednání rohlíků po telefonu, že to mu zavolá, prostě řekne,

[15:18]:
Tohle byl objednej, nebo půjď tam hlasovku, tak to lidi nějak nebudou dělat, prostě nakoupit jako, Nakoupit jako slačiny pro práce, vlastně stejný jak domů, to asi nevadí, rozeslat maily taky. Až to dobře půjde, abychom tam mohli být něco taky, co jsem ukazoval, že prostě lidi jako ty by mohli prostě zadávat otázky přes GitHub prostě s designama a mohli jsme jakoby zkoušet, jestli to chodí jako celý takhle kolem duchova prostě, protože tohle je naše ambice, jo. Třeba to, co jsem ukazoval, to je spojený právě s Open Cloud, takže ty ukíšeš po telegramu, založ tiket a...

[15:56]:
To je asi ta autonómní firma, jestli se nedělá tiket, nebo jestli se objedná rodlík.

**Speaker 3** [16:05]:
Já si myslím, že potom to technický, jestli to jsou jako jedné, nebo jich je víc z nějakých problémů, to je asi detail. Že stejně ta práce jako taková potom spočívá v tom, že člověk si vezme to téma a teď se začne řešit. Nebo to bude něco jinýho, jak to vlastně udělám, čím se budu zabývat. Mně by přišlo, že když by všichni ty týmy dělali na okruhlo, tak mi to přijde dobrý v tom, že si budeme všichni moci pomoct.

[16:37]:
To bude na jedné platformě, i když jich bude více a budeme se moci blokovat třeba, nebo něco takovýho. A že každej, protože mě mě osobně na tom láká, že to je asistenský systém. A mě by to bavilo mít takového asistenta na telefonu. Já jsem musel vypnout, protože... Měl jsem třeba 20 milionů tokenů za den a vůbec nevím proč. Nedělal vůbec nic téměř, Ale jsem tam občas čeknul nějaký procesy a tak, Takže jsem ho musel zabít, Ale mě by to hodně bavilo to tam být. Byl jsem jako nasměřovaný k tomu dát víc a víc práv, Aby zkoušet si na to takový věci.

[17:10]:
A mě by třeba osobně bavil aspekt toho knowledge graphu. Teď zkouším knowledge graphy. Jako to memory prostě? No, no, no. To je souzřejnostný. Dobře, takže různý aspekty, takže, ale aby se v tom každej našel, je jasný, že každej má trošku jiný úhel do toho, někdo bude víc firmní, někdo bude víc osobní, ale přijde mi, že by si každej v tom mohl najít nějaký úzký vztah.

**Speaker 2** [17:38]:
Já mám jediný argument pro to, udělat jednu virtuální firmu v tom, že cokoliv uděláš takovou rekrutilnost, těla technologie, má co sloub, tak si prostě předěláš zádem do svýho. Tak to dneska nemá co doplostlit třeba na skvěrnou. Jenom to tam rozdrbu a pak si to budu uplízet díl, než to dělám. Dřív to bylo opráce, já bych si byl rád, že tam nějaký skryt, hlavně ani nesahejte. A kdyby to bude jeden, tak to má výhodu, že třeba ten, kdo není úplně technickej, zasekne se. Tak když jsme všichni hands on na stejný technologii, tak to odsekne.

[18:09]:
Prostě pečkej, já se ti podívám, až ten job nejede. Když to ještě dáme heketon, kdy ti dám virtuálku, byť rozjetou, Ty si podívej, co začneš dělat, teď se to prostě zesede celý. A vlastně nebudem dělat jakoby keton, ale budem dělat prostě si navzájem jako support pětí virtuálek, že jo. To je jedinej můj jasný argument jako proč to dělat takový...

**Speaker 3** [18:29]:
To je jediný, jestli to je feasible technicky tohleto. Jestli vlastně k němu můžou mluvit čtyři lidi najednou ohledně úplně různých věcí a jestli to poberete. To je jako jediný, co k tomu mám. Nic jinýho k tomu nevím. Souhlasím s tebou, ale nevím jestli to je technicky možné. Je to takhle, v podstatě. Můžeme to do té doby rozseknout, aby jsme to neřešili v ten den potom. Aby jsme neřekli, hele, měli jsme nějakej směr, teď se to rozbilo, teď tady budeme hodinu a jak domy. To má dostat něco jiného.

**Speaker 2** [18:57]:
Hele on má nějaké ty témata, tohle gramu je to vlastně skupina. Tohle je grupa, ty máš grupu a v té grupě jsou jednotlivý témata. To znamená, že ty tady máš... Počkej, ty to zrovna ukazuju blbě.

**Speaker 3** [19:10]:
Jo, to o tom jsem slyšel.

**Speaker 2** [19:12]:
Z jakýho důvodu to tady...

**Speaker 3** [19:14]:
O tom jsem slyšel, že to je trik, jak mu dát víc, jak to jako... Jak to namespace-ovat nebo workspace-ovat, jenom dělat skupinu v Telegramu. Tohle jsou různý skupiny v Telegramu. Pozvan ho tam a nějak to tam řešit. Ale to musíme vyřešit teď, to můžeme vyřešit. To musíme vyřešit teď, ale je důležité, že to drží tu sešnu nějakým způsobem.

**Speaker 2** [19:34]:
On si teda křížem vidí do všeho, když mu řeknáš úplně odsuď sem, tak to on to vidí. Ale tady si drží jednu sešnu, ta má jeden kontext, jednu cache. A tím, že je to skupina, ale ty do skupiny pozveš víc lidí, to znamená vy jak kdyby všichni můžete do takovýhle skupiny. A když budeme dva prostě tady, tak nebudeme jinde, to je v pohodě úplně.

**Speaker 1** [19:56]:
Já pořád mám pocit, že jsme v detailech a že bychom se nejdřív měli pobavit o tom, jak velká je skupina A jestli to budeme rozdělovat po dvou, po třech, nebo jak to zhruba chceme organizovat vůbec ty lidi nad tím. Já nevím, jestli máte někdo zkušenosti s heketonama, jak to nejlíp funguje, tak klidně jsem s tím. Otevřel bych téma množství účastníků na heketonu a rozdělení do týmů. A jinak obecně souhlasím, když budeme dělat všichni nad jednou technologií, tak to bude o to zajímavější.

[20:28]:
Takže já bych se pro to zahrámil na Open Club. Ale nejdřív mám pocit, že musíme odbavit ten počet účastníků a rozdělení.

**Speaker 2** [20:36]:
Jo, to bylo hlavně k tomu, jak se budeme organizovat a v kterých počtech. Za mě na takovouhle věc je úplně v pohodě, že bude lidí jako 5 nebo 20. Děkujeme. Bude to pořád ta firma, bude to pořád ten jako, že někdo řeší to, někdo to a někde se to třeba propojuje, jako technologicky to možný je, takže se lidi můžou teďka opravdu vrátit k tomu, co teda vlastně a kolik.

**Speaker 3** [20:59]:
Já z toho mám trošku jako obavu, jak to bude fungovat, když budeme jako na jedné instanci navěšený a bude nás fakt třeba 15, jo, tak by bylo dobrý mít jenom nějakej fallback, třeba co můžeme udělat, když to nepůjde, tak prostě jak to můžeme splitnout. Třeba mít tu instanci připravenou ještě jednou třeba, jenom jako...

**Speaker 2** [21:17]:
Kdybychom mohli říct, že ten Proxmox vypněte nám na ty většinu, Ale tu já ten Proxmox vypneme ho a sklonujeme ho a zapneme druhý. Tak no. To by asi vlastně, to je jako v pohodě, to jsme teďka dělali, to je hned.

**Speaker 3** [21:29]:
Nějak to logicky rozdělit, jako od sebe ty témata a prostě vyměnit víc. Jenom jako fallback, jako vědět, že když něco nepůjde, tak vím, že rychle bym udělal něco jiného A do patnácti minut třeba můžeme pokračovat, jo? Jo, to jo. Tak jo, tak fajn.

**Speaker 5** [21:42]:
A co k tomu Keninborce, co uděláme za den, vyjadru tokenů tady? No tokeni, no jako, to je brá otázka, no. A jak by pouštěl tam něco lokálního, podle mě nebude kvalitního.

**Speaker 2** [21:58]:
Tak lokálního, to rozběhnu toho Quena tady, ale tady by mi si obsloužil tolik lidí. Na registraci dobrý, já myslím, že na to prostě jde něčí, jako max plán na kódu. Prostě za ten den určitě, to je jasný, že to není takový deal, co se dá udělat.

**Speaker 1** [22:14]:
Můžete mi jenom laicky vysvětlit, proč si každý tým jako nepřijde s vlastním open claw rozjetím někde?

**Speaker 2** [22:21]:
To je to, jako když to chceš dochodit třeba i s tím telegramem a nastavit tam správně ty skupiny a tady ty... Tak je to hodně, jo. Tak jako i když ti to celý připravím, tak jenom si amparoval ten telegram na tom 40 minut, jako nahadíš, budeš vidět, co děláš.

**Speaker 1** [22:33]:
Jo, jo, takže by to prostě vyžadovalo potom od všech účastníků.

[22:39]:
No právě, to co říkáš je možný, ale vyžaduje to od všech účastníků, aby udělali si nějakou přípravu a přišli k připravení a mají tam tyto nakoupené nějaké subskriptiony, nějaké tokeny, aby byli ready.

**Speaker 2** [22:52]:
Třeba není v našich silách asi tam každému dát jinou subskription, jiný tokeny dopředu do téhle připravy.

**Speaker 1** [22:58]:
Jo, mě připadá, mě připadá.

**Speaker 3** [23:00]:
Tohle je asi jednodušší, když těch instancí bude míň, že já třeba svůj max můžu taky nabídnout jako na tohle, takže...

**Speaker 1** [23:09]:
Nechám to na vás, ale připadají mi jako schudný obě dvě varianty, klidně říct, přijďte na Hackathon s připraveným OpenClaw někde běžícím.

**Speaker 2** [23:19]:
Tak by to možná bylo nejlepší, že je jedna prostě společná a kdo chce jinou, tak má jinou.

**Speaker 1** [23:24]:
Já nevím, jak bychom se pak rozdělovali tu cenu za to, nebo jako řekněte.

**Speaker 2** [23:28]:
Tak určitě do toho dáme nějakou subscription, která jenom není zlimitovaná, není placená.

[23:36]:
Do toho dáme čtvrtku svýho měsíčního plánu, který je do 50 euro. Za den zábavíte asi líp. Důvodem toho Opelko technologické opravdu je, že to žere. Že se to musí krotit. Musí se tam dát kompaktný memory. On tam má nějakou konverzaci, nějakou paměť. A když neví, tak do toho takhle šáhne, celý to tam pošle. Titulky vytvořil JohnyX.

**Speaker 6** [24:05]:
Já jsem nikdy se neúčastnil přímo heketonu, takže to znám spíš představ asi většinou, mě by vlastně zajímala ta motivace, S čím chceme, aby se ten člověk odcházel nebo s čím nepřichází, já mám zkušenost hlavně z herních džemů, kde je samozřejmě, To třeba definovali nějakým tématem, který je někdy otevřenější, když se týká mechaniky, někdy nádhy, prostě jak se hlasuje.

[24:41]:
A pak je to o tom, že člověk má samozřejmě zábavu a má nějaký limitovaný, kratší úsek času, kdy je v podstatě vnucený experimentovat. A pak si zároveň odnáší toho, na co přišel a zábavu. A jak to tady je, jestli tady vlastně, a je to v nějakých týmech nebo individuálně. Jestli tady chceme dělat jako na stejný věci, ten člověk přichází s tím, že si něco jako odnese, což třeba teďkon tady začínám mít, já bych teda asi spíš šel do nějakého mít jako vlastního unko, protože bych právě chtěl, abych si pak to nějak odnesl, a ne abych si jako tady povídal s četem něčího a pak ho odešel a vlastně z toho měl jenom tu jako přece.

**Speaker 2** [25:29]:
To je určitě aliní, to můžeš určitě tak udělat, já můj zkušenost, jak to byla, že když jsem si řekl udělat na svým, tak jsem vlastně zjistil, že já to udělám sám, takže získat podporu od ostatních na to by bylo moc nejlepší, Oni mají ten tým, kde mají ten svůj projekt, takže člověk, když chce koukat někomu pod ruce, s někým něco udělat, aby z toho něco měl novýho, tak se tím vlastně vyřadí, Takže to jako z toho kroužku vystoupíš, uděláš si svůj a v tu chvíli ta výměna těch informací se zpomalí na desetinu.

**Speaker 1** [25:58]:
A není to potom jenom o tom rozdělení do těch týmů právě, aby tam byly vyvážené týmy, prostě dvou, třech lidí na každém tomhletom nějakom týmu?

**Speaker 3** [26:05]:
Počkej, ale mně to připadá validní v tom, že my vlastně těm lidem můžeme jako nabídnout, protože třeba něčím motivací může být přesně tohle, tohle chci odejít z týmu, že mám funkční úkon toho koseba, že si hruba vím kam šátnout a co jak dělat a to je úplně jako legit. Prostě pro někoho jako cíl toho toho heketonu, jo, já, někdo jiný naopak se bude chtít jako ochytřit od těch ostatních, to znamená bude spíš v tom týmu, takže takhle bych tu nabídku vlastně ladil, jo, řekl bych teda, hele, máme tady jako, já to trošku otočím jenom teď po tu kostku takhle, tady opracováváme, jo, já bych šel se s tou těch témat, to je podle mě, to je jako osvědčená věc v podstatě, každej může něco přiníst, něčemu se zahlasovat.

[26:51]:
Prostě můžeme tam něco vygenerovat, ty témata budeme motivovat lidi, nebo budeme říkat, hele, jako preferujeme témata, které jsou open core related, nemusí bejt, můžete přijít samozřejmě s čím svým, je to úplně v pohodě, ale budeme rádi, když budou open core related, je to prostě open core hackathon, jo, primárně, jo, takže sbíráme témata, máme na to perfektní čas, protože máme na to tři týdny, že jo, myslím, jo, zpátky. Na to, aby se mi ty zavodil jazyk. Zavodil jazyk.

[27:20]:
Pojď mi vodu, když tak, prosím. Takže, sbíráme témata A v těch už se zase Už se v nich bude ladit Jakoby, už se v nich bude kristalizovat Nějaký skupiny možná, nějaký klastry Lidí, který něco zajímá A pak bysme měli říct, hele Jako řekněte vlastně, Jestli chcete, jako Aby se tam přineslo to, co jsi tady popsal Nebo jmenoval, jestli, jako s čím si Chceš jako odejít, takže odejít Vůči instancím vlastních, Nebo když bude jít s nějakým nohom, který jsi nabral.

[27:52]:
Super.

**Speaker 1** [27:53]:
Jo? Sorry, když tě na to jenom navážu, jenom bych to doplnil. Já bych udělal zase takový barkem format. To znamená, že je tam někdo, kdo to facilituje, tu skupinu. Je to někdo, kdo to nabízí, to téma, a kdo k tomu přibírá další lidi, a kdo je za to zodpovědný, aby to nebylo umeh. Ale prostě já dělám tohle, kdo se přidává.

**Speaker 3** [28:08]:
Já bych zrovna tady to, jako jo, určitě, bude to fajn, když to tam bude, ale... Já bych tady v tom se rád nabídnul a budu rád, když ty se taky nabídneš, Abychom byli v tomto dispozici a tu funkci tam třeba přinesli. Někdy ji tam třeba nebudem umět přidat, Prostě bude mít téma, bude si na tom chtít dělat, Budou dva, tři, A myslím si, že bude fajn, když budeme ubíhat ty týmy A prostě nějakým v tomto pomáhat.

**Speaker 6** [28:33]:
Já bych rád byl třeba nějaký součástí nějakého týmu, A zrovna od téhle technologie si vlastně nejsem úplně schopný představit, Když říkáte. Zase budu už mít z toho hloub třeba a ten přátelí částí, ale člověk popouduje ten produkt, vytváří ten produkt. A když tady ten produkt do nějaké míry je hotový, že je to nějaké prostředí, se kterým já dokonce si povídám jenom skrz chat, Čili moje interakce je poměrně omezená, protože já něco řeknu a pak čekám.

[29:06]:
A teď, jestli v tomhle chatu je pět lidí a všichni něco řeknou a pak čekají, Já si to představuji možná špatně, ale mám jako zkušenost toho.

**Speaker 2** [29:21]:
No, to si úplně špatně nepředstavuješ. Já si myslím, že je velký přestupeň toho, co má být výsledek. A je to jako dost black box, který právě proto, aby někdo něčeho viděl, Musí mít připadek k tomu zerminálu, jako na heketon. Teď se nebavíme o tom, že se jako lajk to jako... Takže když si to použiješ jako lajku, to nejde, nějak si to podaří nainstalovat, nebo ti to někdo prostě dá, nebo to já nevím, Tak to vlastně teďím, já nevím, telegramem třeba řeknu, můžeš vlastně celý jako přeprogramovat. Teď jim budeš implementovat ty funkce. Ono to jakoby jde, ale je to jako strašně, na heketon je to strašně pomalý.

[29:55]:
To znamená, že víc ne, je to tak, že máš otevřený, nevím, kurzor, nebo v něčem, co se umí připojit jako rovnou k tomu, A boucháš do toho spoustu nějakých skriptů, koduješ a ten šestu... Uvíjte jenom to ověření, že to funguje. Teď to zkus udělat. První cesta to budeš psát týden. Heketon není úplný.

**Speaker 1** [30:18]:
Dobře, tak kde jsme a co víme? Chceme mít oponuklo orientovaný heketon, S tím, že není ale zavřeným tématem, Pokud někdo chce. Zbíráme témata dopředu A budeme kolem nich tvořit skupinky. Že skupinky, které si nebudou mít rady s tím, aby byly nějak jako zafokusovaný na nějaké cíle, tak jim můžeme nějakým pomoct. A víme, že začneme den s nějakým velmi krátkým timeslotem na lightning talky stejně.

[30:49]:
Co ještě dál víme? Víme, řekli jsme nějaké čísla, až klidně 15 lidí. Podle mě otevřená otázka s přizváním dalších lidí, kteří bychom chtěli. A skupinky teda si se ujasnily. A jak je to teda s tím rozhodnutím, jestli každý přichází se svým openclou, nebo jedme proti jedním trmě? Takže jak se teďka vidíte?

**Speaker 2** [31:09]:
Tak uvidíme proti tématu, ale můžeme to udělat tak, že kdo si nepřenese svýho, tak bude jeden sdílený a to nějak vykrystalizuje asi. Zajímá tolik, že si to připraví v tý době, tak to bude mít prostě.

**Speaker 6** [31:23]:
A není možný, kdybych... Třeba když budeš mít ty opulní v nějakým repu a já bych měl vlastního, ale tahal bych si to, mohl bych si to opulnout a pushovat, že by to bylo na mých tokenech, ale bylo by to...

**Speaker 2** [31:47]:
To budeš muset mít nějakou tu čistou architekturu přes ty plug-iny, jako sdílet si nějaký plug-iny čistě teoreticky.

[31:56]:
Tak upřímně vevnitř to je rozprasáváno, tohle punklo. Kdybych nepřerazil, to mi přijde maličko. I ta konfigurace, která míchá tokeny s nastavením, taky jde blbě jako...

**Speaker 1** [32:12]:
Jirko, máš tady nějaké vstupy? Něco, co ti napadá k tomu?

**Speaker 7** [32:16]:
No, já jsem tady nebyl, tak... Vlastně... Já bych chtěl zeptat, jak jste... Protože to je fokusovaný na to open-closed.

**Speaker 1** [32:23]:
Jo, jo. Moc si toho neminul, vlastně... Jediný než jsme se shodli je, že chceme pořád nechat zachovat nějak ten formát, že tam budou alespoň nějaký lightning talky nebo něco na začátku, nějaký show and tell, Ale že chceme vlastně většinu toho dne pro ty, kteří budou si chtít šáhnout jako na nějaký kód nebo na nějakou tvorbu, něčím na ten heketon, Takže prakticky jako hodinu až maximálně hodinu a půl po startu, až do konce vlastně bude na to prostor, že už o to nebudeme jako dál řadit. Ale lidi, kteří budou chtít přijít na klasický AI jam, tak budou na lightning talky a pak si můžou.

[32:55]:
Pokud si budou chtít pobídat ještě pod něj těma, tak tak může být, ale heketon už bude prostě heketon.

**Speaker 3** [33:00]:
Jo, já si ještě přemýšlím, já teď možná víc vnímám to, že tam můžeme mít lidi s úplně různým technickým foundationem v podstatě. Třeba umíš SSH čknout někam, Viktore? Včera mi Filip ukázal. Takže to vlastně může být jako prostor... Může to být bariéra, nebo že my to třeba považujeme za úplně běžnou věc, ani tě to nenapadne, mě to teď napadlo, ale on to třeba jenom neumí, a když se jenom neumí SSH-čknout, tak vlastně bude hrozně pomalej, nebo pomalej, prostě bude mít prostu bariéru, takže přemýšlím, jestli třeba neudělal nějaký paralelní ještě k tomu nějaký školení, třeba mini, mini školení k nějaký, nevím, jestli to vůbec jde, jestli je to vůbec realizovatelný v tom smyslu,

[33:49]:
To bude se... Jestli někomu něco třeba předám během té hodiny, aby měl se trošku naskylo k tomu, aby řekl, aha, tak jako všechno třeba zhruba vemkám šáhnout, nebo co můžu dělat, nebo tak, jo. A myslím si, že to mělo jako smysl, a když jsem se vlastně instaloval, když jsem instaloval to OpenGLO, Tak je tam spoustu neintuitivních věcí, jako rozjet to, prostě nastavit tu gateway a ty relay, prostě tyhle ty věci, to není tak, že to prostě pustíš a ono to běží. Ani hovno, jo.

**Speaker 1** [34:21]:
Co kdyby se tohoto předřadili třeba online, víš, nějakou prostě týdem předtím. Připojte se tady na to, Tomáš vám pomůže rozjet o tom klo a naučíte se, kde mám CSS háčko. Jenom jako brainstorm, my jsme se s Tomášem mimochodem bavili na našem jako plánovacím meetingu, že, Trošku řešíme no, tu disbalanci, jako lidi, kteří jsou hodně, běží na těch koních vepředu, jak říkáš, jsou chvíli prátí, tak jako by, vy jste na skillení a pak jsou lidi, kteří jsou spíš jako vlajou někde na vocase a potřebují se jako chytnout a chceme, aby to bylo užitečný vlastně jako pro všechny, takže tohle tak je obě téma, co ne, jak tohle zapojit právě lidi, kteří prostě...

[35:07]:
Na rovinu můžou vás brzy třeba proskoumávání toho, co chcete dělat, což bych si jako já nepřál.

**Speaker 2** [35:12]:
To je, a pak se vrátím k tomu, co jsem říkal na začátku, že pro to, jakoby zavníje, je skoro lepší nabídnout jako něco takovýho, Typu tady máš GitHub prostě a dělej issue, hodně se agentně zproklaň a vy si s ním povídej v telegramu. Pro nějaký jako mini-skillt. A no, ten první se tomu zabude každý, že jo? Někdo je přes záčko, někdo si píše na telegram. Ono specifikuje na GitHubu a vlastně může to fungovat docela dobře dohromady.

**Speaker 5** [35:42]:
Mně teda ještě jenom napadá, když to přijdu své placenty,

**Speaker 7** [35:52]:
Jestli by teda nestálo za to si udělat skupinky tematický, Ale ne úplně, že to téma je ta technologie, ale že to téma by bylo, já dám příklad třeba. 

[36:06]:
Agentní zpracování, nevím, podkladů pro kampaně, jako reklamu, jo, a v té skupince by mohl být někdo, kdo je třeba produktový, marketingový, nevím, prostě analytický typ, někdo, kdo je teda technický, kdo bude schopný mít rozběhlýho open-clou, jakoby, a smyslem, cílem toho Hackathonu by bylo za mě jako mít nějaký hotovej produkt, nišová malá věc, jako, že to bude prostě, nevím. Šelový nějaký skript, který umí nějakou super věc, nebo to může být jako hotová webovka, která něco prezentuje a to jestli k tomu jako na pozadí používáš OpenClone nebo nepoužíváš, je vedlejší a pokud se to tam hodí, tak si to v té skupině jako vyzkoušíme a jeden tam bude, kdo to bude mít teda připravený, kdo to bude zapojený a těm ostatním to jako ukáže, jak to teda funguje a ty ostatní to použijou jako jenom platformu, proto aby doručili jako ten produkt vlastně.

**Speaker 1** [37:06]:
Jako se se mnou tohleto rezonuje skoro stoprocentně, no.

**Speaker 7** [37:09]:
Protože já sám za sebe bych do toho šel přesně s tímhletím, že budu chtít prostě pro Square produkt. Ať už je to něco, co zapojím jako do naší aplikace pro pocáky, nebo ať je to něco, co tady zapojím jako by pro naše zaměstnání. A my, a věřím, že jsou lidi, kterým by se podobný věci jako udělali prostě. Já nevím, někoho hrozně baví videa, my taky potřebujeme dělat videa, tak ten produkt může být jak spousta... Konečně a efektivně opravdu postavím video, ale nebude to o tom, že to dáváš do Sory a ona ti co vrátí, že dáš prompt do Sory a ona ti co vrátí.

[37:45]:
Ale že jako si opravdu postavíš na tom stroji nějakou pipeline, něco víš, jakože v tomhle smyslu jako se posuneš.

**Speaker 1** [37:52]:
Tohle mě dává...

**Speaker 2** [37:53]:
Co děláme s tím blogem teďka, že jo? Že to je jako minimálovka, která je primitivní, když komitneš, tak se publikuje na Cloudflareu sama, Hnedka asi za 30 vteřin a v ní jsou ty skilly. V ní jsou ty skripty v tom repozitáři, v ní jsou ty nalinkovaný ty environment variables, Ty přístupy na ty tokeny, na ty geminaje a tady ty věci, takže když tohle jakoby uděláš, Tak z našeho technického pohledu vlastně commitneš prostě skript a skill, kterej dělá video třeba. A do GitHubu už mám přes specifikaci, chci tohleto video prostě má vypadat takhle.

[38:29]:
A teďka jeden ladí specifikaci videa a druhý říká, Počkej, už jsem dneska rozchodil a už ti to vyplnilo jako vybíráče.

**Speaker 7** [38:36]:
Takhle jsem to myslel, že vlastně někdo udělá třeba analýzu v desktopový AI, Jako používáme AI nástroje, tak si udělej analýzu prostě v desktopu A jako dá se to dohromady, jako rozdělíš si úkoly a až to dohromady. Ale nevím, jestli je to...

**Speaker 1** [38:52]:
Ne, taky já jenom... Řeknu rychle svůj název, pak dám to se dostat něm, já souhlasím s tím orientovat to na use case, respektive na zamýšlený end goal, jakože který bude nějakej vyložený, nějakej use case, chci tady tím pokryt a toho bych chtěl na konci jaké tenho dosáhnu, to mě dává smysl, moje jediná oblova, která s tím je trošku spojená je, co když to budeš ty a dva lidi, kteří přišli jakoby z ulice a nemají ještě na jejich straně niče GPT, teď to přeháním na skvál, jo, ale jako, no, jak to vlastně sformuovat, aby. 

[39:24]:
Ten cíl, ten tým heketonovej byl efektivní, no. A to je, od čím teďka dávno...

**Speaker 7** [39:29]:
Tak jediný je teda o tom opravdu jako dopředu dostatečně jako si vlastně to... Kdo se cítí jako lídr a má nějaký to téma, tak ho opravdu vzít a sehnat si ty svoje lidi A jako už to připravit před tím, než to pak jako začne. Už by na tom jako ta stupinka vlastně párkrát si to asynchronně otočila, Třeba na tři týdny mi přijde, že jsou dostateční na to, aby se to jako vycizelovalo.

**Speaker 2** [39:55]:
Já bych tomu věřil, protože vím, že vždycky někdo něco. 

**Speaker 7** [40:00]:
Přináší, ty máš hodně zatížený game development, ale kluci tam chtěli rohlíky, nebo já nevím, my máme společný témat toho rohlího času s rodinou, Já jsem ochotný udělat ústupek z toho, že víc by se mi líbilo video, ale to venitře taky z toho, tak se tím můžeme domluvit. Takže já se tématicky přizpůsobím vlastně, no, taky. Mě by bavilo hrozně, já, já nemám problém na tom pracovat sám, že jo, se zavřít elovíkem, prostě.

[40:31]:
A mě by bavilo právě ta interakce, že ten druhej ti jako dá nápad, ale tyhle, co kdyby jsme to ještě udělali, no. No, s tímhle zvolil jsi. A tam, tam jako mi přijde, že ten technický skill až tak jako, není to hlavní, lépe řečeno každá ta skupinka by někoho měla mít, Kdo to jako bude garantovat a kdo zajistí, že se pokračuje dostatečně rychle. Takže jako se nebrzdíš tím, že něco začneš zrovna. Instalovat a učit se a že už to vlastně máš jako připravený, takže prostě ty máš, jestli si rozhodnete, že proto chcete používat OpenClaw a Telegram, tak prostě to tak můžeme udělat a někdo vůbec ten OpenClaw k tomu nepotřebuje, stačí mu jako stavět skilly a jenom jako dávat je někam do pipelany.

**Speaker 2** [41:11]:
No tak jako mě na tom nejvíc zajímá, jestli tady ty věci typu pošlu seznam témat, na kterých chci prostě připravit fotky v blogu a chci, aby fotky majily fotky v blogu třeba. Pošlu web, kde jsou fotky a chci, aby byly oživlí, aby nad každou fotkou byl hipací git, který si udělám sorou, že jo. Vlastně na konci tohle jsou za mě ty věci, které mě zajímají víc než ta technologie třeba. Já tam jako nepotřebuju na tom heketonu dělat něco, co není vidět.

[41:42]:
Jo, rozumím. Byl by jako skvělý, kdyby se na konci neprostě měl.

**Speaker 3** [41:49]:
Já si myslím, že potřebujeme přijít s enablerama pro ty lidi. To znamená, enabler je přijď a saj napíš se k tématu, který někdo jinej vykopnul. Nebo enabler je máš témat, pojď ho tady nazdílet a třeba se k tomu někdo připojí. Plus to, co k tomu můžeme přiníst každý sám za sebe. Mě napadlo, já bych mohl přijít s tím, že mám nakonfigurovanýho slim... Slim open-clou instanci a můžu ji tady někomu poskytovat, aby on nemusel stávit hodinu tím, že ji tady bude třeba instalovat.

[42:21]:
Takže když někdo bude chtít dělat open-clou prostě, tak já můžu takhle mu vytočit prostě instanci, nebo jakomu by, jo, takže. Takže vlastně je to enabler něčeho, co ten někdo jako potom může dělat. Dobře, takže mně připadá, že vlastně bysme to neměli směřovat nikam konkrétně. Mně připadá, že bysme měli vykopnout témata, říct, že máme. Vlastně nějaké prostředí tady připravené, můžeš sem přijít, jsme schopni tady mít instance, které jsou zafandované jako na tokeny nějakým způsobem a teď je to na nás vlastně, jak se připravit ty témata, my bysme si měli udělat ček třeba za dva týdny, jak to vypadá s těma tématama, jestli se to dobře formuje, jestli tam jsou...

[43:08]:
Nevím, jestli z toho vzniknou kanály, kde si ty lidi třeba domluví dopředu nebo něco takového, to jsou lidi, podle toho.

**Speaker 5** [43:14]:
Super. Zrovna na tom stavku se udalo odehrát všechno.

**Speaker 1** [43:18]:
Přesně tak, můžeme fakt pro každý témat vyzařit kanál, ale můžeme se nějak, určitě by bylo ráda, kdyby se co nejvíc dokoordinovali dopředu, aby potom tady nebyl ten tady šaškování s tím, kdo s kým je. Ano, jasně. To bysme měli odbavit co nejvíc dopředu, určitě na ty heketoní témata.

**Speaker 3** [43:34]:
Takže je to ideál prostě zase vykomunikovat. Ideál je, že máš svoje téma, ať už uděláš sám nebo se k někomu připoješ a už to víš jako dopředu, co vlastně děláš.

**Speaker 1** [43:45]:
Ano, musím říct, že pro ten heketon by to skoro měla být podmínka, že no, nevím, jestli by pomohlo jako nějaký plonkový lidi možná, že pak když budou třeba jenom přihlížet nebo nevím, no. Ale byl bych rád, jako kdyby ten... Ta aspirace byla, všichni už víme, že přicházíme, kdo přichází na jaké tam doktory, kdo k tomu, no.

**Speaker 3** [44:04]:
Ale třeba nemá čas jako se s tím seznámit víš, nebo tak, jo, jako přišlo by mi, měli by aspoň aspirovat k něčemu, no měli by, bylo by fajn, kdyby si to vůbec vybrali, nebo aspoň k něčemu inclinovali, aby se mohli potom rychle nadrýfovat, no, to znamená, jako ten, kdo téma vede, ten, kdo téma vede, ten, kdo téma vede, ten, kdo téma vede. Tak potom můžu udělat nějakej malej briefing vlastně a ty lidi, kteří se ještě nepřepojili, tak si můžu o to poslechnout a říct, mohlo by to být vlastně i lightning talk na to, že jo, moje téma je tohleto, chci dělat tohle, prostě, jo, a...

[44:35]:
Možná bysme pro každý ten track stejně měli lightning talk, jako vlastně pitch toho téma. Aby to slyšeli všichni, že jo, třeba si chtěli ještě změnit názor nebo něco. To já vám zmyslím.

**Speaker 7** [44:45]:
Ale určitě bylo jako potřeba, aby se teda každý někam zapojil, aby fakt nebyl jako jeden plomkáč, tak byli chodit a koukat sem.

**Speaker 3** [44:51]:
To je každého věc. Abych tady nikdo nebyl, by si toval někdo takovej být muženo, který bude nerozhodnej, nebo bude stydlivej, nebo něco. Jenom aby nám to nějak nerozbíjelo.

**Speaker 1** [45:03]:
Proto mi připadá důležitý, aby každý téma mělo svýho lídra, aby to byl člověk, který na tento téma táhne. Ten je za to zupovědnej, klidně pomůžu, klidně cokoli, ale to je člověk, který musí umět říct, ale my jsme tady tady okusovaní.

**Speaker 7** [45:18]:
Co máme na to teďka s členama? Kolik máme vlastně kvůli tím? Třináct. Třináct lidí. A ty nějak ještě screenuješ a tak. Jako se ptám, jestli budeme mít jako třeba By the time 20, ze kterých Ale my se v té době neuvidíme.

**Speaker 1** [45:32]:
To je právě otevřený, to je právě otevřený Téma, který jsme si ještě neodpověděli. Jestli přizýváme další lidi a případně Jako jo, ne. A pokud jo, tak jaký lidi A jak to jako, jak to uděláme.

**Speaker 7** [45:44]:
Říkám třeba nějakých pár zajímavých jako typů, že by mě jako Zajímalo s tím člověkem se potkat A tímhle s tím... Ale žádný AIGEM v bíliku nestihneme, že jo? Jo, nestihneme.

**Speaker 1** [45:54]:
Ale jako, proč se na to ptám? Mě to asi nevadí teda. Já se spíš kloním k tomu otevřít to, Nějak jako si to zahrám od kdokoliv lidí pozve, jaký lidi.

**Speaker 7** [46:04]:
Tak určitě jsme asi garantit, že jako nepřivlečeš někoho tamhle od Lidlu, Jako co jsi potkal dneska.

**Speaker 1** [46:10]:
Tak když někoho neseš jenom za tři týdny, tak vezmu to k podporce od Lidlu.

[46:16]:
Ne, tak asi každý máme nějakou frontu lidí, který by se sem hodili, tak... Můžeme si říct třeba něco jako pasuány, co, nebo jak to vidíte?

**Speaker 3** [46:25]:
Jako pro všechny, všem dá to možnost přiníst někoho.

**Speaker 1** [46:29]:
Nevím. Nebo skupinka, když se to bylo na skupinku, možná bylo jako platnější na počet. A jinak panuje shleda na tom, že to klidně rozšíříme na nějaké tomu, Nebo byste to radši drželi s tomhle počtem? Je to asi na vás hlavně, to asi netrůfnu definovat.

**Speaker 7** [46:47]:
Já nemám žádný názor nějakej, že to neje fajn asi, když přijde víc lidí. Já mám ten pocit, že tý skupince prospeje, když bude spíš čtyři než dva tý skupince.

**Speaker 2** [46:58]:
Když my se třeba s Jirkou uděláme nějaký marketingový pipeliny, tak se bude hodit vzít třeba někoho, kdo to dělá. Obvinnost to není. Tak to vidíš.

**Speaker 3** [47:12]:
No asi jenom kapacitně, tohle se hrozně blbě řeší, že lidi pak to odřeknou nebo tak, takže jak ideál by byl, kdybychom řekli, že potřebujeme vědět od vás, půjdete ne půjdete, tím se odvíjeme, volá kapacitku a to můžeme nabídnout, můžeme nabídnout, je tady sign up list, kdo se sign upne, tak ten tam prostě bude a je to. Jo, pojďme tak.

**Speaker 2** [47:41]:
Že bych řekl 6x3, tak 18 bez problému a určitě se k tomu vejde lidi víc.

**Speaker 7** [47:47]:
Normálně čtvrtek jako bývá, jo?

**Speaker 1** [47:50]:
Zatím je to tam daný, můžeme to šoupat, ale zatím je to čtvrtek 27. A to nějaký potvrzení bych vlastně vyžadoval tady s tímhletím dřív, jo? Protože ať se nám to pak nerozsype, prostě omlouvá nemoc, ale jinak... Ale nějaký židle máme, takže to tady jinak vejdeme, no. OK. Pojďme každej shrnout, co slyšíme, co si vzpomeneme tady pro plóda. Já si pamatuju to, že teda, vezmu to od konce, že jsme OK s nějakým rozštěřováním.

[48:23]:
Zatím není specifikovaný jak, ale že bychom rádi do toho přizvali další lidi. Udá se to tady prostoru, je tady dost na, kolik jsi říkal, 18 lidí v pohodě, že jo? Myslím, že jo. Potom jsem zaslech, že ty témata chceme koordinovat na Slacku dopředu, aby jsme už přišli ideálně co nejvíce rozdělení do týmu nad jednotlivýma tématama, Který budou ideálně zaměřený na nějaký use case, chci pořešit tohle, chci pořešit tohle, tohle chci dosáhnout. Témama nějakýho lídra nebo někdo, kdo to téma táhne vlastně, kdo ho vykopává, kdo k tomu přizývá lidi.

[48:57]:
A ještě jsem tam zaslech, že lightning talky na začátku... Jestli tam budou nějaký obecný, tak ještě doplníme právě tím, že každý téma bude mít krátký pitch, prostě nějaký lightning talk, abychom se všichni naprývovali, kdo co dělá. A pak jsem tam zase chcel, co jsme si ještě řekli, na čem jsme se ještě shodli. Že budeme chtít nějakou tvrdit účast, nějakou dobu dopředu, aby bylo jasný. Ženský. Ženský potřebujeme, yes, no, to by to by opravdu chtělo. Nějakou diverzitu trošku v tomhle.

**Speaker 7** [49:32]:
Chce někdo nechat předělat ještě tak do příští.

**Speaker 1** [49:34]:
Nestíhám, sorry. Jinak bych ti vyhoujel. No to papíro, člověče to je.

**Speaker 3** [49:42]:
Co ještě zase? Že budeme mít diverzity kvóty nějaký, jo? Hele, já myslím, že dobrý.

**Speaker 1** [49:49]:
Neměl jsem něco, co jsme zeschodli? Vám chceš, že jsem něco nařekl?

**Speaker 6** [49:56]:
Ještě. Tak jo. Možná otázka na ty infrastruktury.

**Speaker 1** [50:02]:
Takže jsme se shodli na čem vlastně? Pokažte, Viktorec, nějak... To právě jenom právě na čem jsme se shodli.

**Speaker 2** [50:10]:
My jsme se shodli nějakým tématům na chvilku, Ale poté to bylo jakoby odvědní. Já bych říkal, abych měl udělat co pro Squared. Já si třeba myslím, takhle se shodnou, neschodnou, Že my dva, když budeme dělat něco společně V nějakých těch mediálních pipelinech, Nebo pro marketing, nebo jinak, Že to je to, co my potřebujeme dělat, že jo? No to se to jako hodí, no. No se to hodí jakoby dost. A můžeme to dělat obecně, nemusí to být na skverdu, v tu chvíli můžeme prostě vymít jedno odpraveného na tyhle účely. Kdo se k nám připojí, tak ho může mít, a pokud bude chtít od něj, tak může být na kopi.

**Speaker 1** [50:46]:
To by asi nebyl problém. Ještě tady byla nějaká ta možnost nějakého preškolení, který by si někdo, Tomáš, nebo někdo střeloval jako... Pojďme si společně instalovat oknuchlo a naučit se, co je řezák.

**Speaker 6** [51:04]:
No to taky může být, že když tam tohle padne, že to bude třeba tématem nebo že to bude dobrý, že to bude mít případně nějaký odkaz, nějaký manuál, Tak pak se lidi můžou hozvat, kterým to nepůjde, nemusí se jenom dělat.

**Speaker 1** [51:20]:
No já si myslím, že každý témat bude možná nějaký specifický.

**Speaker 6** [51:23]:
No taky, anebo přímo ten oknuchla prostě se hozout třeba. Třeba třeba tři lidi, kteří to jako chtějí zkusit nainstalovat a něco jim tam nejde. Ale byl by nejjednodušší třeba to takovýhle heketon,

**Speaker 2** [51:35]:
Když někdo bude chtít jakoby svého, aby použil nějakou tu službu, která je předkonfigurovaná. Oni to prostě pak řešují, jenom jakoby to... To jsou služby, které udělají VPSko za pět dolarů, který zruší za dva dny, jak to nestále, vůbec nic. I kdyby za dvacet si zdal výkonní, do toho potřebuješ dát jenom svůj nějakej subscription nebo... To může každý připravit a někdo s tím může pomoct, jestli někdo z vás na to má čas do té doby udělat tu odporu, třeba se někým dávat, tak to dál bohužel teda nemůžete a budu rád, když to udáváte, to by bylo asi řešení, než bylo rozbíhat někomu, kdo s tím vlastně nedělal.

**Speaker 3** [52:17]:
Je to asi jo, asi jo, no, asi jo, asi jo a je to dobrý measure toho, jestli to někdo zvládne nebo ne vlastně, jo. Takže když si to zvládne připravit, tak super, tak má na to měsíc, teď po tři týdny vlastně si to připravit a když to nezvládne, tak si musí zjít téma, který zvládne. Než tady vytvářet commitment nebo nějakou potřebu proškolit.

**Speaker 7** [52:41]:
Mě přijde, že by to fakt mělo být o těch obsahových tématech, než o tom technickém, protože to technické zase, kde budeme za tři týdny? To si to zase nevím.

**Speaker 1** [52:51]:
To jsem vlastně chtěl říct, že to vlastně není své technické skill to, že přesně jak říkáš, to jsem tady nedal do těch závěrů, že aspoň je to hezký člověk, který je skupinou to táhnout, ale je v pohodě tam mít další lidi, kteří budou s jiným zaměřením. Tak to pojďme to nějak uzavřít a rozdělit si úkoly, kdo co udělá teda. Aha, to my všichni.

[53:23]:
Já bych čekl.

[53:28]:
Nějak bychom to asi měli co nejříkou psat, že jo, pro všechny.

**Speaker 3** [53:31]:
Jinak, odnášíte si někdo z toho nějaký úkol pro sebe? Takhle bych to otočil spíš.

**Speaker 7** [53:36]:
Vymyslet téma. Já chci určitě jako víc téma nějaký, protože prostě je to příležitost vyřešit to, co už chci hodnotek.

**Speaker 3** [53:46]:
Super.

**Speaker 2** [53:48]:
Tak my na vás mysleli, abychom to připravovali spolu asi.

**Speaker 7** [53:52]:
Já si říkám, že klidně můžeme mít jako dvě skupinky, že tady musí být jako, víš.

**Speaker 2** [53:57]:
Já mám pořád, já mám jako téma, když tak záložnicky připravenýho toho robota, že, to je v pohodě. Tam se ráno dnes, že posílává svý textovky.

**Speaker 1** [54:09]:
Vy potřebujete něco na zajištění toho místa tady? Nějak něco domlouvat? Potřebujeme něco jako infrastrukturně? Myslím, že ne.

**Speaker 3** [54:18]:
Dáme nějaký vstupný, aby se zajistilo nějaké občerstvení z toho. Ať to není na vás celý. Můžeme to udělat. Abych dal nějaký vstupný. Vstupný dvě kila, co?

**Speaker 5** [54:34]:
Kilo až dvě metří, to by bylo v pohodě. To by byl dobrý.

**Speaker 3** [54:39]:
To potočíme na zbytávku za jídlo a to vyřeším. A vy teda vykréte když tak nějak zbytek.

**Speaker 1** [54:45]:
V tom případě co? V tom, že bude potřeba notifikovat ostatní od... Můžete říct o tom formátu na Slacku.

**Speaker 3** [54:51]:
A vlastně kam dávat ty témata.

**Speaker 1** [54:54]:
Tak to dáme my dva dohromady nějak. Ať to popíšeme tak, že to má novou patu. Teď jsme dali dohromady spoustu vstupů. Musíme to nějak dobře formulovat. Asi upravit nějakou tu Google tabulku, Jestli nebudeme mít něco jiného na ten sběr těch témat.

**Speaker 2** [55:10]:
To si odnášíme my. Takže se ozbíráme témata, pak si dovolíme, Kolik byly skupiny podle naslování. Myslím, že skupině můžeme dělat tři až pět odhadem. Tak jo, já už tam za sebe můžu dát něco, na čem se dá stavit. Když se dvou to neohlasuje, tak se připojím někam jinam, je to jednohlasné.

**Speaker 5** [55:32]:
Dobře, super. Máme něco? Taky máme nějaký ček. Děkuji, těšíme se.
