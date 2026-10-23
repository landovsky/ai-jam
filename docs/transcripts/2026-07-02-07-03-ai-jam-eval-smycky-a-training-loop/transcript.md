---
title: AI Jam – eval smyčky a training loop
date: 2026-07-02
type: meeting
tags: [AI Jam, eval, training-loop, hill-climbing, prompt-optimization, ground-truth, LLM-as-judge, vibe-coding]
project: AI Jam
language: cs
duration: 2h 43m
plaud_id: b7e02fcb3db01a27cd9c97749e864dcb
---

# Transcript: AI Jam – eval smyčky a training loop

--- Part 1 (07:03, 2h 22m) ---

[00:00] speaker_0: Jestli můžete, jestli chcete nesouhlasit, tak můžete teď.

[00:08] speaker_1: Můžete nesouhlasit a váš nesouhlas bude nahrán.

[00:18] speaker_0: Tak jo, tak já budu mluvit, vy stejně to všechno víte. Ehm, AI Jam. Eh, jak to vždycky říkám? Říkám, že jede strašně rychle vlak, kterej-

[00:28] speaker_1: Budeš jak Adam na JRku.

[00:31] speaker_0: Jo!

[00:31] speaker_1: Protože ještě potřebuješ jako Henry.

[00:35] speaker_0: Trošku to kopíruju, zdá se mi, intuitivně.

[00:39] speaker_1: A ještě potřebuješ toho, jak se jmenuje, Clema.

[00:42] speaker_0: Ty seš Clem, jo?

[00:43] speaker_1: Budu tvůj Clem.

[00:44] speaker_0: Ano, bože, copycat jsme. No, eh, vlak s AI jede rychle. Snažíme se ho všichni dohnat. Snažíme se, eh, jít s tím tempem, který je fakt hodně rychlý. A abysme ten, abysme to stíhali, tak lepší než ten vlak dohánět sami, tak je scházet se a sdílet si svý znalosti, protože pořád jako lidi máme tu výhodu toho exchange, tý exchange informací mezi našima mozkama, která prostě je stále hodně efektivní. A takže jsme s Tomášem, eh, rozjeli tady tenhleten formát, kdy naším cílem není jenom si tady sednout a nějak se sami zlepšit, ale i si to navzájem předat. A snažíme se nějak iterovat nad tím formátem, eh, plus minus tak, abysme maximalizovali, eh, přínos pro, pro jednotlivý lidi tady. Takže-

[01:38] speaker_1: Jo.

[01:38] speaker_0: Tomáš třeba vykopl teďka nějakou novou formu, eh, zadávání těch jako témat. Eh, možná budeme experimentovat i s tím formátem samotným. Hm, uvidíme. Každopádně na-naše, naše vize zůstává stejná. Chceme se zlepšovat, chceme pomáhat ostatním lidem, aby se v tom zlepšovali. A, eh, věříme v to, že takovýdle setkávání může hodně přinést.

[02:02] speaker_1: Ok, můžeme vazat.

[02:03] speaker_0: Yes.

[02:04] speaker_1: Ok. A my jsme už avizovali a zkoušel, pokoušeli jsme se o to minule, o tu přípravu témat. Víme, že to je vlastně něco, co nám hrozně moc pomůže se tady nakopnout a rychle jako na, jako rychle nastartovat tu, tu práci. A takže, eh, i když jsme nebyli úplně přesně sladění s Radkem, jak to udělat, tak, tak jsem jakoby dostal green od, od Radka, jak to zkusím nějak pojmout. Takže viz včerejší teda zprávy a dal jsem vám tam nějakej vlastně návrh toho guidu, vlastně jak to, jak to připravit a dal jsem vám tam prompt, kterej je, eh, úplně super k tomu, že vás tím může jako provést. Takže pokud byste si někdo nebyli jistí tím tématem nebo jej chtěli zpracovat prostě víc, tak je to fakt skvělej způsob, jak se nechat do toho vtáhnout, do toho přemýšlení o tom, co vlastně tady jako chcete ty dvě hodiny dělat. A já jsem to včera udělal taky s tím svým tématem, prostě s pomocím toho promptu. Takže bych dneska navrhnul, eh, pokud je tady dost témat, myslím, že jo, my máme připravený asi tři nebo čtyři, že jo, tři plus jeden fallback, eh, tak abysme uhodili do placu tyhlety předpřipravený témata a odprezentovali si je tady během třeba dvaceti minut. A pak, pak se prostě dohodneme, jestli, jestli se rozdělíme nebo jestli budeme dělat jedno. Pokud bysme jich, těch skupinek bylo víc, tak je možno udělat breakout do, do tý vedlejší místnosti, vzít si tam židli, kafe a tam se, tam se pobavit. Jo? Tak jo.

[03:29] speaker_2: Ez to, když mám nějakou vlastní, vlastní ideu, tak s tou můžu jít anebo se mám typu jít spíš to, to, to informovat?

[03:36] speaker_1: Pokud máš vlastní ideu, tak ti určitě nechci bránit se to tady rozvíjet. To by byla škoda, ty sis na to našel čas a prostě-

[03:42] speaker_2: Ono vlastně my jsme si, my jsme s tím jedním klukem začali dělat nějakou věc. Pro mě to bylo nový, já jsem přemýšlel, jako že to nějak zvládnu, ale ono to bylo na ty dvě tři hodiny strašně moc.

[03:51] speaker_1: Jo.

[03:51] speaker_2: Tak já jsem se ten scope teď jenom zúžil, že zkusím jenom prostě jednu drobnost z toho, co všechno jsem si představoval, že se tady, že udělám spolu. A to prostě absolutně nefungovalo.

[04:01] speaker_1: Jo, jo.

[04:02] speaker_2: Prostě se nikam nedostal za ty dvě hodiny. Takže v tom bych chtěl pokračovat.

[04:05] speaker_1: Jo, úplně v pohodě. Jenom vlastně bych asi nechtěl, abysme to téma tady zkoušeli jakoby rozebrat, protože by, by nás to právě rozdělilo. Máme nějaký témata připravený, jo. Ale jestli ho chceš-

[04:15] speaker_0: Já bych byl rád, kdyby někdo aspoň řekl třeba, že mu se chce venovat, třeba ať se k tomu někdo přidá, třeba mě doporučí.

[04:19] speaker_1: Jo, ok, tak jo, rád vás uslyším taky.

[04:21] speaker_2: No takže to bylo o tom, jako že vlastně on chce použít ten cloud. Mně se ta myšlenka líbila jako na automatizaci nějakejch soukromejch tasků, který jsou, který se opakujou, jako že něco nakupuješ, něco ti má připomenout, něco ti někde dochází a on ti to buď zařizuje, nebo ti připomíná, že se to stává. A v podstatě základ byl to, že se ti to připojí na e-mail a hned do history e-mailů, na kalendář, já nevím, na Spotify jsem si to připojil. Dokázal mi to vyhledávat nějakou hudbu, kterou jsem poslouchal nebo si chci, jsem zapomněl a chci prostě něco dohledat. Tohle mi třeba funguje plus minus víc, než jsem si myslel, že by to mohlo fungovat. A, a pak to mělo jakože ještě umět automaticky objednat něco z internetu, jo. Že prostě periodicky třikrát za rok objednávám jednu věc a musím ji vyklikat v tom Fishu. A tohleto je to, co bych si chtěl dneska zkusit. Jakože prostě nějakou, eh, nějakej nástroj, kterej mi bude ovládat ten browser a já mu řeknu: „Hele, objednej mi tohle stejně jako minule.“ On to najde, co to bylo, objedná to a jo, nechá mi to třeba jenom na Submit a jo, já to submitnu do toho obchodu. Jenom tuhletu věc bych chtěl zkusit dneska.

[05:28] speaker_1: Ok, tak jo. Dobrý scope. Tak jo. Hele, Kubo, chceš začít svýma svýma tématama?

[05:39] speaker_0: Ok, já ho dokonce mám až trošku překrytý, tak s tím. Eh, tak jo. Pardon, mám to méně připravený, než by bylo ideální, protože tys mě posílal včera večer, takže prohnal jsem to o ten prompt, ale, ale vy do toho koukat ne. V podstatě první téma je, eh, mám příležitost se zúčastnit velkého mediálního projektu, kterej nově vzniká v Česku. Pro mě to je asi docela velký. Nemůžu k tomu teď moc říkat, ale chtěj tam prostě popularizovat různý témata, učit lidi různý jako praktický věci, rozumět složitým věcem a hezky to jako chunkovat.

[06:12] speaker_3: A je prostě významnej téma bude AI, ale framovat to tak, že to je prostě pro obyčejný lidi. Prostě moje, vaše máma, která prostě už ne AI používá, protože jsem se bál, že taky bude něco vyhodí, tak je prostě učit, co je možný dneska, co, co s tím jde dělat, na co si dát pozor. A vlastně jsme začali dávat dohromady jako nějaký killer use casy. Jeden příklad je, že třeba lidi možná nenapadne na první dobrou je, že tam můžete nahrát nějakou smlouvu, než ji podepíšete a ona vás to upozorní, jestli tam jsou nějaký jakoby místa, třeba půjčku, než podepíšete nebo něco takovýho, aby ty lidi pak nebyli překvapený nějakýma šedýma rukama a takovýhle věci, že to jako upozorní na nějaký nestandardní věci a tak. Což si myslím, že spousta lidí ocení. A já nevím, jestli i tam tu lékařskou zprávu, abyste pochopili, co se v ní vlastně píše, což je trošku jakoby takový téma, že se používá třeba na zdravotní věci jako pošme- Takže prostě by tady framovat dvacet takovejch silnejch use casů. A prostě bysme na začátku dělali list těch věcí, pak bysme to nějak jako diskutovali, osekat to a na konci bysme to prezentovali jako ostatním. A na to jsme přišli. Já nevím, jestli tam byly nějaký parametry a jako jestli to je jako obecnej use case pro hodně lidí, jak moc to může být game changing pro lidi, jak moc by je to zaujalo a, a že se to dá jako dobře vysvětlit, jestli to není jako příliš obtížnej use case pro běžný lidi. A no a myslím, že výstup pro, pro mě je jasnej, ale pro vás by to bylo zároven, že bysme třeba vymysleli use casy, který nás třeba jako jedince nenapadly a mohli jsme to ještě používat způsobem, jak to ještě nepoužíváme. Takže myslím, že je to zajímavý. To je první projekt. Můžem jít druhej teda. Druhej projekt je, eh, vlastně ty chatboty. Prostě když si otevřete ChatGPT, Claude, cokoliv, Gemini, tak vlastně dneska už tam maj jako dost inbuilt v těch nástrojů, jako že vlastně quick research asi používám docela hodně. Ale teď tam mají nějakej co-learning mód, kterej jsem nikdy nepoužíval a nevím, jak ho použít. A já jsem nikdy moc nepoužíval chatovací hlasový služby, že si s nim pak povídáš. A maj tam teďka hodně ty pluginy, že jo, jako na nebo ty konektory na mail, na, na kalendář a takovýhle věci. A vlastně já vůbec nemám přehled, co všechno už tam dneska je takhle built in a jak to použít. Často se překrývají, že někdo jako všichni, ale nevím, kterej je ten nejlepší, kterej horší. Takže udělat si přehled, co všechno dneska už je takhle built in a co se s tím dá dělat. Kdo to má nejlepší. Takže prostě bysme si to nějak rozhodili a udělali si přehled a pak to nějak jako ohodnotili a pak bysme ostatním prezentoval. No, tak to jsou ty dva, to jsou ty dva projekty. Tam teda jeden přechod s tím, že jako jak to napojovat a jaký jsou jazyky a prostě právě jestli a tak. A pak mám ten polopojekt, projekt o tom, že bych si teda asi spíš vymyslel něco já, že bych jakoby vyrobil aplikaci do mobilu na transkripci hlasu, protože nějaký registrovaný, nebo spíš věřím, že si to nikdo neukládá ty moje nahrávky. Takže když si to dělám sám, tak tomu můžu jako stoprocentně věřit. A, a prostě bych vám to pak dal k dispozici normálně, prostě protože to máte instalovaný na mobilu, tak to není žádnej spor. Prostě to pro mě je takovej půvab jako toho jako kdyby si člověk udělá aplikaci úplně na míru, když se tam do ní něco nahrává, hodí, on tak si to zahltí, nealkoholuje a je to přesně to, co třeba mě zajímá pro mě platí. Takže tohle.

[09:42] speaker_1: Hele, to předchozí téma, jaký ty platformy chceš srovnávat? Nějaký-

[09:46] speaker_3: No, všech těch hlavních. ChatGPT, Claude, Gemini, případně-

[09:50] speaker_1: Takže jako consumer, prostě ty sign upy v podstatě.

[09:55] speaker_3: Jo, jo.

[09:55] speaker_1: Good, good.

[09:57] speaker_3: A tam si samozřejmě kdyby někdo chtěl něco jinýho ještě vyzkoušet, tak-

[10:00] speaker_1: Jo, jasně, jasně.

[10:03] speaker_3: Ok, můžu představit to moje?

[10:06] speaker_1: Mhm, jo.

[10:08] speaker_3: Ok. Já jsem, eh, vlastně mně se stalo to, že mi kamarád jako ukázal základy machine learningu jako jenom úplně principiální. Přičemž to, co vyrobil ten machine learning, nebyl jako model, jako nějakej prostě AI model, ale byl to kód. Byl to jako deterministickej kód, prostě programovací kód. A mně to úplně jako hrozně otevřelo oči. A tak vlastně jsem si udělal skill, kterej mi jako pomáhá vlastně nastavit celou tu smečku. Takže vlastně já jako interaguju jenom, jenom s Claude ohledně toho a on to jako píše. Takže jsem to, nazval jsem to jako, nazval jsem to algoritmizace pomocí AI. A vlastně princip je takovej, že když, když máte, když máte něco. Třeba dobrej příklad, sice takovej jako triviální, ale příklad jakoby tej datový sady, kterou když tak můžu dát k dispozici. Máte eRecept kódy, jo. A ty, ty mají nějakou, za ní mají nějaký validační schéma, aby jako jste je mohli prohlásit za platný, jo. A když vy, když vy tomu learning loopu dáte vlastně seznam kódů, který jsou validní, tak on se na základě toho, jenom na základě toho, že bude vlastně vytvářet kandidáty, který budou se snažit ty pravidla kodifikovat, v podstatě dělat ten algoritmus, tak na základě několika iterací vnitřních, který ten, ta slečka s tou inovací udělá, tak je schopnej dostat se vlastně na, na jakoby je schopnej vlastně vymyslet vlastně reengineer, jakoby reverse engineering, dodat ty pravidla, který jako formujou ten, ten, ten, ten eRecept, jo. Já jsem to vyzkoušel ještě třeba na příkladu, že jsem vlastně pro toho jednoho zákazníka, on chtěl, aby se ze sketchupovýho modelu vytvořil jako seznam materiálů de facto. Takže jsem se snažil jakoby, aniž bych já mu dával příkazy, vlastně podívej se do SketchUpu, vidíš tam něco, co tam vidíš? Abych mu vlastně nemusel vysvětlovat, tak mu vlastně dáš ten výsledek, kterej chceš, aby vyprodukoval. A, em-

[12:12] speaker_1: Ve formě toho evalu. Eval je právě nějaká jako funkce, která zhodnotí ten výstup a řekne, jestli je to dobře nebo špatně. Jo, takže eval pro, eval pro eRecept je prostě tenhle, tenhleten kód je chybnej, tendleten není chybnej, případně ještě nějakej rozpad, jakože něco jo, tak si můžem říct. No takže vlastně součástí toho cvičení, že bysme se jakoby podívali na to, jak se tvoří ten eval, eh, že bysme si řekli jenom nějakou jako malinkou teorii, ale tady jako velkej disclaimer, já jsem v tom jako slepej, slepej učení toho psa nebo tak jo nebo no, takže já nejsem jako odborník na to, ale prostě, eh, je zajímavý se tomu přiblížit, protože člověk si uvědomí, že vlastně c-co mně to strašně dalo i pro běžnou práci mimo jako tady ty svečky, který zas tak často nepoužívám samozřejmě, tak je to, že, eh, je mnohem lepší pro autonomní vývoj definovat dobře vlastně jako objectives a, eh, a acceptance criteria, jako nějaký akceptační kritéria, aby ta, aby ta mašina mohla jet sama, aby jí člověk nemusel furt babysittovat, protože to hrozně jako unavuje babysittovat furt a říkat: „Hele ještě tohle, ještě tady na to jsi zapomněl a tak dál.“ Jo, takže vlastně je to, je to vlastně trošku jakoby takovej posun do mindsetu definuju si cíl, eh, a jak to má vypadat, což je ten eval, de facto ten eval jakoby říká tohle je správně, tohle je špatně a nechám ten stroj, aby k tomu jako došel nějakýma iteracema.

[13:37] speaker_0: Takže a co že z toho vlastně vypadne? Z toho vypadne potom něco, co bude umět generovat ty kódy.

[13:43] speaker_1: Něco, co bude umět validovat ty kódy.

[13:45] speaker_0: Validovat.

[13:45] speaker_1: Ale i, i generovat. Můžeš mu říct prostě hele, jako, eh, jako vlastně to, to, to, oproti čemu se to učí to udělat správně ten kód, ten, ať už bude generativní nebo validační, tak je oproti tomu, jak bude nastavená ta funkce. Jo, takže když ta funkce bude říkat prostě, eh, sem dám kód a ty mi řekneš nula nebo jedna, jestli je, jestli je správnej nebo špatnej. Nebo vygeneruju kód, eh, a, a řekne mi to, jestli bude jako dobrej nebo špatnej, tak, tak vlastně ten kód sám si vymyslí cestu k tomu, jak, jak tohohle vlastně jako docílit, abys, abys splnil ten eval, jo.

[14:23] speaker_0: Hm.

[14:25] speaker_1: No a vlastně postup, postup, ty, to jsou jednotlivý iterace těm, těm, těm jakoby, eh, vlastně těm pokusům o to vytvořit třeba nebo zvalidovat ten eRecept se říká kandidát a on si ty kandidáty tvoří sám, vlastně na základě tý zpětný vazby. Takže vytvoří kandidáta, prožene to tím evalem, dostane zpětnou vazbu a na základě toho vytvoří dalšího kandidáta, jo. A je tam vlastně jako dobrý vlastně i pozorovat a on to sám řídí, že každej rozdíl mezi každým tím kandidátem, tím jeho výstupem je třeba, že první to udělá třeba na, když, když to máš jako od nuly do jedničky, jako že tam máš nějakej gradient, že to není jenom binární nula jedna, tak třeba první kandidát udělá nula celá dva, druhej třeba má to stoprocentně znásobí a má třeba nula celá čtyři. A pak už to třeba začne upadat jakoby ten přírůstek a ty se zastavíš někde prostě a řekneš hele, vlastně tohle asi není dobrá úloha nebo k tomu přístupuš špatně. Je potřeba vymyslet jako úplně jinej přístup, jako jak to udělat. Takže to je i součástí toho, že to není, jako že to vždycky do-do-doteče do sta procent a vyřeší se ten problém, ale něco ti jako o tom řekne a ty si s ním potom pak můžeš jako popapat, no.

[15:29] speaker_0: On se zastaví sám, když začne jakoby stagnovat nebo ty ho zastavíš, protože-

[15:33] speaker_1: Zastaví se sám, když začne stagnovat.

[15:35] speaker_0: Jo? Hm.

[15:36] speaker_4: To jako že se může stát, že prostě se dostane do nějakýho lokálního maxima a nechce se mu dál.

[15:40] speaker_1: No jasně no, už to jako vidí, že prostě to nějak jako nepude.

[15:47] speaker_0: Tak já možná s mým tématem, protože to je s tím nějak související. Eh, já tady mám víc témat, ale tohle mi připadá, že, že je podobný. Říkám tomu the slop, jako s míň AI slopu. Já hodně bojuju s tím, že to, co mi AI generuje, jak už odpovědi v chatu, eh, texty, UIka, kód, tak je to prostě hrozně verbose a dělá to věci, který prostě nechci. Opakuje se to, jo, a bojuju s tím pořád se snažím jako ladit ty, eh, ty moje vlastní prompty a call MD, aby to nedělal, ale pořád se nacházím v tom ty vole TLDR. Proč mi tohleto znovu opakuješ? Mažu kusy prostě textu, jenom aby to nebylo, aby to nebylo re-repetitivní. Já vím, nakolik jsem v tom sám, ale chci si, chci si tohleto pro sebe vyřešit a nějak jsem si na to nenacházel ještě čas. A můj plán je asi takovej, že z tady z týhle tý domény bych se soustředil na texty. Eh, mám, mám tady, právě jsem si dělal eval na nějaký vytváření user stories, protože kde pracuju, tak vytváříme user stories, který přesně popisují akceptační kritéria a tady tyhlety věci. Takže jsem chtěl, aby to dělalo za mě. A udělal jsem si nějaké eval, kde právě že mi to nějak vylepšilo trošičku ten skill, aby to psalo líp. Takže mám příklady nějakejch promptů a mám příklady nějakejch jako goals, jak by to mohlo vypadat. No a chtěl bych, chtěl bych nějak přijít na to, jak tohleto, eh, takže na tomhletom to vlastně můžu běžet, jo, že prostě dám prompt a měřím, co z toho vypadne a nakolik je to vlastně blízko tomu mýmu jako gold standardu, kterej jsem si našel a chtěl bych to nějak vlastně, takže tohleto jsou jako moje podklady, ale teďka bych to chtěl vlastně nějak použít na to, že bych chtěl nějakej obecnej, eh, princip, kterej mi pomůže s textama tak, aby nebyly, prostě aby tam bylo míň AI slopu. A představoval jsem si to tak, že v nějaký první půl hodině se rozhlídnu vůbec, jak to jiní lidi řeší, že přece nemůžu být sám, kdo to řeší. Tak bych se podíval jako vlastně na ty různý možný řešení toho, jak, jak to, jak tohleto fixnout. Potom bych, potom jsem si představoval, že vezmu ty svoje raw vstupy a raw výstupy a zkusím nějaký varianty těch řešení na nich jako zběhnout a vidět, který vlastně, eh, který budou úspěšný a který budou míň úspěšný. Takže bych odcházel s tím, že mám, eh, mám- Mám co, mám nějaký metody jak, jak to limitovat. Vidím, jak zhruba fungujou, nefungujou a, hmm, no a jak se do toho můžete zapojit.

[18:28] speaker_2: Počkej, a ty to chceš ladit jenom tím, že budeš upravovat ten prompt anebo ještě nějaká jiná-

[18:33] speaker_0: Jo.

[18:33] speaker_2: -jiná?

[18:33] speaker_0: Já jsem si, já jsem si představoval, že najdu nějaký tři způsoby nebo tři prompty nebo i tři způsoby. Já vlastně vůbec nevím, co to bude, jestli to je jenom prompt, nebo jestli to je ještě něco jinýho. Jak se dá ten AI stop omezit. Jestli to jsou nějaký možná nějaký determinističtější věci. Ne-nemám vůbec tušení, ale představoval jsem si, že najdu tři metody, jak to udělat. Dám všem těm třem metodám tady tenhle ten vstup, nějakej vstupní prompt, kterej mám a uvidím, co z něj bude vypadat a uvidím, která bude lepší.

[19:00] speaker_2: To máš jako několik vzorů těch vstupů.

[19:01] speaker_0: Mám několik, mám tři vzory vstupů a tři vzory výstupů.

[19:04] speaker_2: Máš, máš vstup a to očekávaný třeba na tom konci.

[19:07] speaker_0: Něco jako ty Tomášovy eRecepty, tak já prostě mám na konc-na konci, já mám na konci to hodnocení, nakolik je to blízko tomu mýmu gold standardu. Ale ještě nevím. Jsem v tom taky novej. Nevím, jestli to na něj ambiciózní, ale chtěl bych se na tohleto téma podívat a odejít minimálně trošičku víc informovanej, co s tím dělat, protože s tím povím v šumprndách. No a zapojení je, nevím, jestli máte někdo svůj nějakej vlastní task, kterej vám často generuje hodně slopu, hodně jako redundance.

[19:34] speaker_2: Úplně jakejkoliv. Jedna věta a tři plány.

[19:38] speaker_0: Jde o to, jestli máte i ten vstupní task, ale i ten výstupní goal, no. A pokud byste něco takovýho měli, tak vás moc rád uvítám a chtěl bych to s váma vyzkoušet. Pokud ne, tak se můžete připojit tady k tomuhletomu. A, hmm, no, uvítám dva, nula až osm lidí.

[19:55] speaker_2: Třeba jako moje zkušenosti strašně velkej rozdíl mezi ChatGPT ten je výrazně ukecanejší než ten Claude. Ten Claude je takovej stručnější, jako že se drží stručně toho, co čekám trošku víc než ten-

[20:07] speaker_0: Já s-já si, já si myslím, že některý moje customer nutrace jsou vlastně hodně naivní. A když jsem včera udělal jenom rychle jako research toho, co, jaký jsou možnosti, tak jsem zjistil, že to jako promptuju špatně. Takže si představuju, že budu mít třeba tři různý prompty, který budou různejma způsobama říkat, jak limitovat tu verbozitu a ty, ty, ty nějak.

[20:30] speaker_2: Mě hrozně straší na konci ten shop insert.

[20:33] speaker_0: Jo jo, jo, ale já to píšu tolikrát, že už jsem z toho unavenej. Ten pán co nás- říkáš vám? Čau, čau, čau, čau.

[20:42] speaker_2: Dva lidi co se střídají, přátelé.

[20:44] speaker_0: Webináři. Už jsme tady všehni webináři. Ahoj, ahoj, ahoj. Ty jsi byl první s těma sestřihama mimochodem. Já nebo ty? Ty. Jo, já jsem byl první, no, ale nedobrovolně. No dobrý, no. Nenechte se rušit. Já jsem to, já, já jsem jako tak dlouho se chystal, že sem vyrazím, až jste přišli jako sami. My jsme první v tomto kanclu. No to jste- Teď říkal Potůček, chci jste první, no. No taková čest. Doufám, že to tady pokřtíte někde. Kafe na zemi a tak. No. Díky, díky za seedečku. My jsme zrovna, zrovna tady do-do-dobíráme témata a pak k tomu že можем zaváhat, kdybyste- No tak hurá! Tak jo. Já teda jako ještě to samozřejmě není hotový, jo, takže mám tady asi od změr, od zjevu nějakou tak- Ty věšáky na ty trička nejsou hotový? Hele, jako máme tady pár konstrukčních závad, jo, jako třeba tady v místnosti je trezor, kterej tady byl jako pod nějakým obrazem ještě původně. A my jsme přišli a říkáme tomu šéfovi tý stavby: „Kde je trezor?“ A on říká: „Ježišmarja, to je moje vina.“ No a oni to, my jsme kvůli tomu, já jsem myslel, že se, že to přijde zazdít a nedržela nám ta omítka, tak jsme na celou stěnu museli dát perlinku. Říkám: „A co ta jedná?“ „No tak to vyříznem, no.“ Zazdilo. Jo, zapomněl jsem říct, kolem jedenáctý to přijdou vyříznout. Já vím, jsem ho vyslal, že to je dobrý. Hele, můžu vám tady sežrat jednu tady- Jasně. Já jsem strašně na sladký, ty jo. Děkuju. Ty jo, co to je? Pozdravuju Boženě. Bananový. Bananový. Tak jo, tak vítejte u nás, bavte se dobře. Díky moc. Když něco vymyslíte, tak budu, budu rád adresátem. Hele čau, měj se moc dobře. Čau. Hele, já si myslím, můžu ti, ty jsi skončil to svoje téma nebo ještě, ještě budeš něco povídat? Plus minus jo. Ještě bych k tomu doplnil, co bych uvítal někoho, kdo má tady s tímhle nějaký zkušenosti, hlavně s běháním těch jako evaluací, no. Což se právě překrývá možná s tímhle tématem. Jo, ok, ok. A ještě mám další témata, ale chtěl jsi něco k tomuhle tomu říct? Jo jo, chtěl jsem jenom říct, že vlastně jakoby jádrem toho mýho tématu je naučit se napsat ten eval, že to je na tom nejdůležitější. Tak možná, že to je ten start dobrej. Protože všechno ostatní vlastně umí ten skill, takže se člověk tam musí zabejvat těma technikáliema, jak to tam potom jako na sebe napojit. A jakoby tím, co se optimalizuje, může bejt klidně prompt. Nemusí to bejt jako program, jo, nemusí to být deterministický. Jasně. Já jsem hodím ještě jedno téma, který mám, ale dneska ho asi nebudu rozvíjet, ale chci ho jen aspoň tady že tak nějak jako tady tyčnout. A my máme takovou, říkáme tomu fond rozvoje. Lidi pravidelně přispívají pravidelnýma platbama v korunách na nějakej fond, kterej potom přerozdělujeme na různý projekty. Je to takovej vlastně crowdfunding, jakoby- Kickstarter. Tak no, takovej Kickstarter komunitní. A máme to teďka v absolutně šíleným Excelu, kterej je prostě za mě blocker k tomu, aby to lidi používali. Takže jsem se na to koukal a hledal jsem jako jakej shape tam vybrat, kterej bysme mohli udělat. A takže mám tady nějakou představu nějakýho takovýho UIka, kde budou, kde bude možný vypisovat, vypisovat projekty a bude možný ty projekty crowdfundovat nebo na ně přispívat, jak se to říká. Teď nemám terminologii, sorry. A s tím, že by to nebyl jako full projekt, ale bylo by to vlastně jenom nějakej scaffolding nebo jenom jako nějaká část toho UIka bez přihlašování, bez čehokoliv a jenom by tam byl potom nějakej možnej export toho, co tam jako vzniká do toho Excelu. Takže jako aniž bysme museli dopnout ten náš šíleně překomplikovaný Excel, tak udělat nějaký UI, kde jsou vidět, vidět jednotlivý projekty, lidi na ně můžou přispívat a je tam potom nějakej bridge do našeho prostě překomplikovanýho Excelu. Takže jsem představoval nějaký takovýdle UI, jako že by se dali dohromady. Mám tady jako přesnější shape a je to ale spíš taková nějaká jako ujasnění toho shape a write white coding. Tak to tady mám, ale asi si to nechám. A vymyslel jsem k tomu terminologii. Je to tribe pot a budeme tam, budeme, patroni budou pledgovat drops do pot. Jsem si trošku zamezlal na tý terminologii, aby, aby to dávalo nějakej smysl.

[25:27] speaker_1: No tak jo. Tak teď budu dělat nějakej split time. Kdo teda si co, kdo bude v čem, kde, kdo si, kdo se chce čeho účastnit, ať můžem naši tvořit skupinky a vrhnout se do toho. Čas je nelítostný.

[25:43] speaker_0: Mě osobně buď, buď láká hodně ty evaluation, myslím si, že bych se hodně mohl posunout v tom, co já potřebuju, ale zároveň mě lákají obě dvě klubový témata, jak to hledání těch use casů pro ty public, public, general public, tak možná ještě víc to, ty krása, ty tooly prostě nabízejí věci, který ne, nevyužívám dostatečně. Takže tyhle dvě, co z těhletěch tří přistane, tak u toho budu spíš asi.

[26:16] speaker_5: Já když jsem to poslouchal, tak mi došlo, že jsem hodně unavenej a že mám chuť vlastně whitecodit jednu věc, kterou mám v hlavě už delší dobu, tak asi pojedu solo a potom řeknu, jak to dopadlo. A to je ten Just Dance interface. Prostě já mám chuť postavit tu apku. My teďkom tančíme Just Dance podle Just Dance videí na YouTube, ale prostě ten YouTube jako sorter prostě na to není vhodnej, tak si chci postavit vlastní. No.

[26:42] speaker_1: Existuje, každý má v mobilu notní Just Dance a hejbeš rukama, tak ten mobil jako-

[26:47] speaker_5: Jo, ale my děláme to pro hlasování, to nás jako moc nezajímá. Zajímají mě ty moves.

[26:52] speaker_0: A trošku nás tam brzdí to, ten výběr těch, těch songů a hledání songů a dohledání songů, který jsme tančili a tak.

[26:59] speaker_5: A my jsme často, my jsme třeba vlezli do nějakýho playlistu jako kategorie Beginner a zahrajeme jeden song a nás to hodí do doporučení na nějakej úplně jinej song, do jinýho playlistu. Takže furt mezi těma songama přepínáme věci, furt posouváme, play, no. Tak tady to bych chtěl hrozně streamlinovat. A mám tam jakoby další ty, takový to fakt rozkouskovat, abysme se mohli třeba naučit ty věci podrobně, jestli mi něco. Ale mě moc baví, jako teď jsem postavil pár takových appek pro sebe a hodně přemýšlet nad tím, jakej interface vlastně chci a jak to promítnout teda do toho hledání. Tak to si myslím, že jako na tohle se celkem těším vlastně.

[27:35] speaker_1: Rozšířejme témata, kterejch by se rád účastnil.

[27:40] speaker_0: A postavil jsi pár takovejch appek, když máš, že jo, to je vidět, že máš různej portfolio appek.

[27:45] speaker_5: No já jsem stavěl vlastně, jak jsme posunuli na tý párty, že, tak jsem postavil vlastně apku na to, že se tomu ten playlist, playlist sedmihodinovej, aby měl prostě, on se tam, tam se děly takový věci, že tam měl nějaký jako peaky intenzity, vlastně, že to vždycky vyrostlo do nějakýho peaku intenzity a pak to zase kousek stouplo a zároveň každej ten další peak byl vyšší než ten předchozí a zároveň to vyhodnocovalo jakoby temnotu těch skladeb, jestli jsou jako víc happy anebo víc temný a ta temnota tak kontinuálně rostla na příštím tím. A to je ten jako solver tady toho. Jsem to vlastně tam chtěl postavit a zároveň jsem pak došel k tomu, že některý data, co mi jako Spotify dává o těch skladbách, nejsou spolehlivý, takže potřebuju jako velkou část z toho udělat ručně. A postavil jsem si jako zase jako interface na to, abych mohl projíždět ty skladby takhle na klávesnici a prostě jenom jako shiftkama, shiftem a mezerníkem a enterem ovlivňovat vlastně zařazení těch skladeb, přeřazování těch hodnot, posouvání toho kolotoče, že jo, prostě takhle s kratkama. Taktle jsem to chtěl.

[28:37] speaker_0: To jsem měl jenom sedět a jenom poslouchat ten playlist. To jsem úplně-

[28:41] speaker_1: To by byl super case na ten eval, že bys, že bys tomu dal prostě padesát jakoby označkovanejch skladeb a že, že by ti mohl zkusit jako označovat další.

[28:50] speaker_5: No já jsem, já jsem viděl tooly, co jsou schopný jako tu skladbu prostě poslechnout si v pár místech anebo poslechnout si vytvořenou vteřině a udělat vyhodnocení, ale jsou hodně drahý. Jako to pro mě vyšlo prostě nějak, tam to bude tisíce dolarů, prostě že by to asi tak padesát tisíc za ten playlist. To je dost.

[29:07] speaker_1: To se začíná deset měsíců před tím blogem.

[29:10] speaker_5: No jasně, ale pořád mě takový to řeší taky. Musím to udělat tou těžkou cestou, jak to udělat co nejjednodušší pro mě a prostě namapovat si to tak, aby to mohlo dělat víc lidem.

[29:19] speaker_1: Děláš dobový apky, jako jsou to dobový věci.

[29:21] speaker_5: Jo jo.

[29:22] speaker_1: Okej.

[29:28] speaker_0: Mně se líbí eval, jako já to nějak řeším v kontextu prostě pull requestů ve firmě, že prostě nejsou dostatečně dobrý, nejsou, aby byly prostě rovnou mergnutelný, nějak tohleto zlepšovat. Tak vlastně v to-v tom se mi to nějak líbí, že by to v tomhletom mohlo, mohl být zajímavý přístup, jak jim pomoct. A pak mě trošku lá-lákalo si něco zob whitecodit tady kmennýho, ale asi ne tady Just Dance, protože to, to mě spíš zajímá to rankování. Tak to mám jako dvě věcičky.

[30:07] speaker_1: Tak jo.

[30:08] speaker_5: To já si stáhnu, já jsem totiž mám pocit, jako že-

[30:11] speaker_1: Budeš se k tomu-

[30:13] speaker_5: Já jsem přemýšlel, že jakože prostě se připojím k tomu, ale přijde mi, jako že to budu ztracenej, jako že to je moc daleko pro mě, že minule jsem rozuměl deset procent tomu, co se tady dělo. A myslím si, že jako ke komukoliv se připojím, tak tam nepřinesu nic a oni mně to zas tak moc nedá. Zkusím se posunout v tom svym tématu, to, to mám jako v hlavě.

[30:37] speaker_4: No já dneska, zajímalo by mě to Eval, ale nevím, jestli jsem schopnej nějak k tomu přispět zajímavě. A pak mě zaujala ta Kubova první věc, to, ten brainstorming těch, těch věcí, těch kill killers. No, no a pak by mě teda zajímalo ještě to rozpoznávání řeči, ale to, na to asi nedojde, jak jsem pochopil.

[31:02] speaker_1: Tak ta-

[31:03] speaker_4: No, no, to vlastně, no.

[31:06] speaker_1: Když se najde chvíle další, někdy, tak můžeš snadno.

[31:18] speaker_4: Jo, rád.

[31:19] speaker_1: Co ty Kubu, jaké máš dotazy? Já myslím, že ty velmi mě jako zajímaj, možná jestli pak z toho bude nějaký použitelný výstup, jako že něco vyzkoumáte a to know how předáte, tak klidně pak jenom dostaneš z toho toho, jestli je to reparování nějaký ten úkol, já mám, já jsem měl facilitovat tím pádem, takže trošku tíhnu víc k tomu druhýmu než ty, ty killer use casy, možná trošku víc rozkoumat ty nástroje, byl ten. Takže tak.

[31:52] speaker_0: Tak jo. Tak kdo chce dělat Eval, tak asi počítej, že se mnou.

[32:00] speaker_4: Jo, já půjdu zase s tebou a uvidím, jestli pak nožičkama nepřejedu ke Kubovi, no. Takový mám, mám, vezme i půl tady Koby, Matěji, máte na to nebo jenom mám moc-

[32:13] speaker_1: A Kuba teda killer use case, jo? Budu mít dva notebooky.

[32:18] speaker_4: Ne.

[32:18] speaker_1: Jakoby se mnou o ten nejspíš tím o tom druhým, o to jako prozkoumávat, ono to jako trošku souvisí.

[32:23] speaker_4: Jo, prozkoumávat ty tooly.

[32:25] speaker_1: Ty velké nástroje, který tam jsou a já se jim tam věnovat.

[32:28] speaker_4: Jo, jo.

[32:30] speaker_0: V kolik začneme nějakej, nějakou prezentaci nebo ten závěr dělat? Kolik máme času?

[32:34] speaker_1: Za dvě hodiny, půl dvanáctý.

[32:35] speaker_0: Půl dvanáctý.

[32:36] speaker_1: My jsme to vlastně řekli, že to můžem protáhnout o půl hodiny, že jo?

[32:38] speaker_0: No já ne.

[32:39] speaker_1: Ty ne? Ok, ok, tak to byla nějaká jenom, ne, ne, nekodifikovali jsme to, ale-

[32:44] speaker_4: Za mě bych to nechal v tom čase, v jakém je.

[32:48] speaker_0: Tak jo.

[32:51] speaker_1: Tak já-

[32:53] speaker_4: Já jdu na Eval teda.

[32:55] speaker_1: Všichni budou dělat dvě věci, každý si najde svoje, vy tři jdete na Eval.

[33:01] speaker_0: A Kubu voláte vy sám.

[33:01] speaker_4: Na Eval, tak jo.

[33:01] speaker_1: Deš na Eval, že jo?

[33:01] speaker_4: No, no, no.

[33:02] speaker_0: Tak možná Eval může zůstat.

[33:04] speaker_1: Eval může zůstat tady teda asi. To je teda-

[33:06] speaker_0: Největší skupinka.

[33:09] speaker_1: Kdyby šel ty killer use case ještě až po mně, to přemýšlím z té romantiky.

[33:15] speaker_4: No já jsem takovej, že dneska myslím, že nebudu moc produktivní a myslím si, že v tomhlenctom je to takový jako jednodušší, než, než zkoumat nový věci. Na to bych dneska neměl. Jako nechci sloučit, nechci sloučit moc nových věcí, jako, ale, ale dávat dohromady jako ty killy, to asi není zas tak-

[33:36] speaker_0: Pro mě nechce přiznat, že nemá předplatný.

[33:38] speaker_4: To jsem říkal.

[33:43] speaker_1: To jste prokouřeli.

[33:45] speaker_4: Hele, mám hezkou šanci to zvedat teď. Oni ty odpočinky, když ti dojdou tokeny, jsou vlastně docela dobrý. Jsem zjistil.

[33:55] speaker_1: Tak já se přihlaš s kláma na to Eval, kdybych tam cítil, že já jsem si řekl, že chceme ještě nějak to rozvíjet.

[34:02] speaker_0: Uvidíme, no. Hele, řešíte takový to, já vlastně nevím, jak je to s tou cache, tak jako dopustil krátký rychlý dotaz, že vás to moc nezdrží. Ale jestli řešíte, že jako se snažíte do toho vlákna mít co nejkratší ten token window, protože tažete míň tokenů, řešíte to nějak?

[34:23] speaker_4: Jednou za čas můžeš prostě dát nějaký takový to com-

[34:26] speaker_0: Jo, to on dělá tady ten TC index, no, že to compact, compact.

[34:30] speaker_4: Compact, no.

[34:30] speaker_0: Na to bych taky rád slyšel odpověď. Já to neřeším kvůli tokenům, ale spíš kvůli efektivitě toho-

[34:36] speaker_4: Kvůli hustě.

[34:37] speaker_0: Ne kvůli tomu, jestli to není lepší v čerstvým okně, ty dotazy.

[34:43] speaker_4: Ok.

[34:43] speaker_0: Tak když mám jeden projekt, tak je možnost přímo vytvořit projektovou složku a pod ní mít vlákna. Ale zatím vždycky jsem, že prostě celou tu věc vždycky dělám v jednom vlákně stejně, protože tam mám kontext všeho, co jsem si řešil doteď a to mi přijde vlastně užitečnější.

[34:56] speaker_4: Jo, to je taky lehce řešitelné, jestli to nějak neznižuje potom tu kvalitu toho. To je moje větší obava než počet tokenů. Jo, mě taky přijde, že jako sice máme teoreticky ten milion, ten kon, že jo tokenů, ten kontext window, ale přijde mi, že v nějakej moment je to takový, že už si nejsem jistej, jestli to vlastně všechno ty podstatný věci vidí a když to zkompaktní, nebo prostě má to vlastně zvetá. Občas a tak jako pocitově si řeknu, tady už mám strach, že už jsem tam toho vyřešil moc a je tam několik prostě takových side uliček, kterých se bojím, že mou vlastně plevely ten kontext, tak to radši to jako zmenším, ale jako není, nemám na to žádnou jako reálnou jistotu.

[35:35] speaker_1: Já vám řeknu svůj best practice. Jsou tam asi dva faktory, který to ovlivňují. Jako jednak, jednak zahlcení, ne zahlcení, ale jako heterogenita toho kontextovýho okna, žes tam řešil jako x věcí a ty se můžou, to bude mít to určité, asi, jako nemám to vyzkoumaný, ale bude to mít asi jinej průběh, než to bude čistě to zadání. To je jeden faktor. Druhej faktor je style cache. Vlastně to, jak jakoby ten, ten request response se nějakým způsobem cacheuje. Vůbec nevím, na jaký principie, ale vždycky, když tam pošleš, jo, ty, ty, ten token ti, ten kontext ti přebývá a ty vždycky neplatíš za celej ten kontext, kterej tam pošleš. Je tam nějaký cachování a tady to, oni to držej jenom nějakou dobu, jo, a vlastně nikde, nebo nevím, můžete si zkusit dohledat, jak dlouho to přesně je, ale Cloud Code, vlastně to CLIčko ti pak řekne, hele, když to teďko vyčistíš to okno, tak ušetříš pět set tisíc tokenů, třeba něco takovýho. A to je proto, že ta cache vypršela. Nejspíš je to proto, že ta cache vypršela. A když tam pošleš cokoliv dalšího, jenom ahoj prostě, tak se samozřejmě celej ten kontext pošle, znova se zacacheuje, ty ho zaplatíš ten výstup z toho a ten vstup do toho a jedeš jakoby znova. A můj best practice, já používám vlastně jako dvě techniky na to. Nebo tři. Jedna je čistit to kontextový okno od věcí, který už nepotřebuju, že se na něco zeptám. Vím, že to bylo jenom jako side, jako sidetrack. Tak potom, když zmáčkneš dvakrát escape v Claude Code, tak ho vlastně můžeš smazat jakoby tady ten dotaz a tu veškerou větu, co, co nebo ten veškerej výstup, co s tím přišel, tak tím můžeš jakoby vyhodit to okno.

[37:10] speaker_0: Jenom poslední, že jo?

[37:11] speaker_1: No ne, můžeš-

[37:12] speaker_0: Tak pak tam můžeš vlastně jakoby-

[37:16] speaker_1: A druhá věc, kdy můžeš použít BTW by the way command, kterej vlastně funguje de facto stejně, ten jakoby, ten ti odpoví. Teďko úplně netuším, jako jestli se dívá do toho kontextu nebo ne, ale odpoví ti jako blokem a ty to zaescapeuješ vlastně, když zmáčkneš escape, tak z toho zmizíš a seš tam, kde jsi byl.

[37:32] speaker_0: Ale tam je jenom jedna možná iterace. Tam je jenom jedna iterace.

[37:36] speaker_6: A tohle s tím escapováním je dobrý no.

[37:38] speaker_1: A potom co dělám, když už se mi jako naplňuje kontextový okno, tak si nechám vytvářet jako handoff. Jo, handoff je prostě nějakej jako markdown, kterej říká tý další seanci, jako co má vlastně dělat, jo, kde jsme skončili, jakej je status a tak dále. Takže můžeš pak vytržit tou seanci a poslat ji tam.

[37:56] speaker_0: Pro mě je tam vlastně téma, který bych taky rád posunul, abyste potom na to měl někdo nějaký tipy a to je vlastně jako forking tý věci. Jo, už mně se často stane, že se dostanu k něčemu a teďka bych chtěl jako pokračovat v nějaký meta úloze jako vedle. A často právě přesně pak mám ty heterogenní věci, kde najednou řeším všechny ty úrovně a nepodařilo se mi to nějak jako rozumně pokořit.

[38:18] speaker_1: Vidíš, ale ten fork command myslim má, já jsem ho teda-

[38:21] speaker_0: Jo, ale on dělá subagenty a nějak vždycky jsem z toho vždycky odcházel zmatenější. Takže pokud byste měli někdo, mám úlohu a začne se rozšiřovat na různý věci, který chci řešit paralelně nebo třeba pozdějc a v separátním sešně, ale zároveň potřebuju ten kontext, kterej mám tady, tak to by mi taky pomohlo.

[38:36] speaker_1: To je i fork ten chat ne, že se vám vlastně celej-

[38:39] speaker_0: Jo jo jo, to jde, ale ale v Claude Code to je divný, on jako pustí subagenta. Nějak by se v tom potřeboval zorientovat, takže pokud někdo víte, tak mě tak tak budu rád vědět.

[38:48] speaker_6: A neudělá on si nebo jako já nevím, víš, že se přímo k tomu kytu, že si udělá vlastní větev a na tý řeší nějakou svoji věc.

[38:55] speaker_0: To je možný, já to vlastně to úplně neznám, to netestuju. Já programuju v Replit, ale no prostě když tohle prostě mám v Claude Code-

[39:03] speaker_6: Chceme se vrátit k tomu rozhodovacímu bodu a nevítám to jako-

[39:07] speaker_0: A teď se zvedá další další téma. Například třeba když už ty user stories, já chci scale na user stories a teďka veškerej ten kontext, kterej tam je, vlastně potřebuju na to, abych do toho směřoval, ale zároveň tady chci pokračovat v tý práci. No takže prostě vlastně fakt fork jakoby-

[39:25] speaker_1: Kulur místo Claude Code.

[39:27] speaker_6: Tady pokoje je množší.

[39:30] speaker_1: Každý další problém.

[39:31] speaker_6: Okej.

[39:32] speaker_0: Tak hele, jdem na to, jdem na to.

[39:34] speaker_6: Jo, takže eval, eval skupina začíná tam někde, Bebe kolem tebe.

[39:37] speaker_1: Eval skupina začíná kolem mě, tady jsem zahlásil. Tak jo, takže téma eval smyčka. A-

[39:47] speaker_6: A kdo je teda eval, abych všichni jsme eval skupina.

[39:50] speaker_0: Skoro všichni.

[39:51] speaker_6: Teď teď na začátku jsme všichni kromě vás dvou.

[39:54] speaker_0: No jestli, jestli.

[39:55] speaker_6: A nech, nech, nevyměníš se místem Jiro, abych mohl, aby to bylo to Máša a zároveň na mě, aby ti pohodli.

[40:00] speaker_1: V pohodě. To chce až sednout, jak chceš. Tak vlastně jedno o čem mluvit. Takže vlastně jako první vůbec věc je zamyslet se nad tím nebo nebo se zeptat, jako kdy tu smyčku pouštět a kdy ne. Vlastně na nějaký věci to má smysl a na nějaký věci to nemá smysl. A ta ta smyčka dává smysl ve chvíli, kdy potřebuješ protočit nějakej vysokej objem něčeho, prostě jo. To znamená, a to je jedna věc. Druhá věc je, kdy kdy chceš tu evaluaci nějak jako automatizovat, takže vysokej objem je a vlastně nevyplatí se ti na to pouštět jako jako jednotlivý LLM cally. Takže když budu ti něco někde klasifikovat, když budu chtít jako udělat nějakou vysokoobjemovou práci a tak bych si tak tak můžu si říct hele, chci ušetřit a budu na to mít nějakej jakoby deterministickej kód, kterej mi to bude dělat. A já jen potřebuju vědět, jestli je dost spolehlivej na ten můj vlastně use case, kterej tady budu mít jako jo. Hm, zároveň třeba já osobně bych si určitě chtěl vyzkoušet tu optimalizaci těch promptů. Chtěl bych si tu smyčku vyzkoušet na optimalizaci promptů. A byť vlastně to není miliony volání nebo prostě nějak je hrozně moc volání, tak mně se na tom líbí to, že že je tam ta metodika, která to celý systematizuje a já se nemusím soustředit na to, jak to jako pouštět, prostě kde se to bude ukládat, jak, jak, jak, jak vlastně, jak budu ty jednotlivý kola toho vylepšování pouštět, ale můžu se soustředit čistě jen na tu jakoby tu svoji roli, vlastně na vytvoření toho evalu, jo. A to znamená jako, co chci sledovat vlastně v těch výsledcích, jak, jak chci, aby ty výsledky vypadaly a připravit s Claudem pro to jako měřitelnej vlastně standardní formát, standardní standardní jako postup hodnocení, kterej pak budu moct, kterej on pak bude moct použít k vylepšování těch promptů, kterej pak budeš moct použít v testování jinýho modelu třeba jo. Takže si vyladíš prompt jako na na na Clauda a pak můžeš říct hele, použij prostě pro ten eval, nevím, tady je to jinej model, prostě haiku nebo prostě úplně jedno, jakýkoliv model a vlastně on ti to rozhrozí, jak vlastně ty výstupy jako najednou fungujou při nezměněným promptu, že jo. Nejdřív mění prompty a pak se dívá, jako kdo dosáhne nějakýho, dosáhne nějakýho jako peaku v tom, jak, jak seš s tím jako spokojenej. A pak můžeš použít jako jinej jinej model, takže ti to vlastně i vytváří prostředí na to, abys to mohl jako evaluovat postupem času třeba jo, ať už na změněný data třeba jo. Mám nový data, jsou tady nový, když jsme se bavili o těch o těch preskripcích, jo, tak jsou tady nový typy prescription kódů, prostě třeba nebo něco takovýho, jo. Nebo jsem-

[42:56] speaker_6: Můžeš říct, kolik jako řádově to je objem jako těch kódů na ten na ten model? Takže tys řekl, že pro málo se nevyplatí, ale kolik je to málo?

[43:06] speaker_1: Jo takhle. Tak ty musíš mít jako-

[43:10] speaker_7: Statisíce bot.

[43:11] speaker_1: Já si myslím, že tam je ještě kombinace toho druhýho faktoru a to je to určitě není tři sta tisíce, to by nemůžou být jenom tisíce třeba.

[43:17] speaker_7: Malý tisíce.

[43:18] speaker_1: Jo.

[43:18] speaker_7: Okej.

[43:20] speaker_1: A je to asi každej má ten apetit jako utrácecí za ty tokeny třeba jinej, že jo. Jako já když mám max dvacet, tak prostě asi tisíc hype callů mi nic nemění prostě jo, ale tisíc Opus call. Na druhou stranu, pokud bych, pokud by nějaká úloha byla potřeba řešit podle pomocí Opusu, tak pravděpodobně ji nevyřešíš deterministicky jako pomocí kódu třeba, že jo. Takže oni ty kritéria musí bejt splněný obě, že, že, že, že to má smysl nějakej, že, že ti to nějak jako pomůže významně a že, že to je trénovatelné. A to, jestli to je trénovatelné, závisí na tom, jestli, jestli seš schopnej dát dohromady vůbec ty příklady, že jo. Protože když nedáš ty příklady, když nedáš tu pravdu, vlastně jakoby ten ground truth jako dohromady, tak není proti čemu trénovat vlastně.

[44:07] speaker_7: Ale jako já mám pocit, že prostě když si napíšeš dobrej eval, tak nevíš, jako ten Opus to taky může one shotnout, jako že může se stát, že rovnou napíše fakt super kód. Podle mě, když prostě máš dobrej eval a pak to vyjde dobře, tak super. A mo-možná, že přeceníš to, že je tam potřeba hrozně moc iterací a podle mě nemusí být třeba, jako že to podle mě i ví. Jako že když jste, když jsi napsal přesně, já nevím, tady mu dáš padesát bodů energie nebo něčeho a on zrovna tam ten pattern, protože fake ho tam uvidí rovnou, tak ti to rovnou napíše ten správnej kód.

[44:38] speaker_1: Jasně.

[44:39] speaker_7: A podle mě to není špatně.

[44:40] speaker_1: Tam, tam, tam hrozně, tam hrozně závisí na tom, jak je ten eval udělanej, jak k tomu se, k tomu se pak dostane. Takže ty, takže důvody, proč jakoby uvažovat o tý smyčce. Plánuju to na něco, teda co má vysokej objem nebo potřebuju nějakou nezávislost prostě jo. Takže jako bude to kód, bude to deterministický a já si potřebuju vyzkoušet, jestli vůbec je možný dojít k tý spolehlivosti, kterou potřebuju, že jo. To je jako druhá věc. Když si řekneš ok, tak tady mám nějaký pravidla a nějaký jako vím, co, jak chci, aby to vypadalo, ale já jsem to třeba včera zkoušel na, na bot detekci. Jo, vlastně já mám na dostupnost lajků chodí prostě asi dvacet procent lidí a osmdesát procent botů, takže tam je prostě statisíce návštěv jako za, za měsíc, ale prostě reálných lidí je čtyřicet tisíc třeba, jo. A, a takže vlastně jedno jako téma identifikovaný na, na sem bylo postavit eval na detekci těch botů. A když jsem jako nechal to Claude jako připravovat, tak on zjistil, že tam je nějaký, jako že maximum, co ty data vlastně jako umožní, protože tam už není víc informací, podle kterých by se to dalo jako determinovat, tak je třeba osmdesát procent, jo. A že třeba jako single page návštěvy v podstatě nemají šanci bejt detekovaný, jestli to je, jestli to je člověk nebo bot, jo. Jo, takže ta úloha vlastně jako nedává smysl, nebo i ne nedává smysl, nedává smysl při stávajících datech. Musel bych se zeptat, jaký další data bych mohl doplnit do toho eventu, do toho hitu na, na ty stránky, aby mi to zvýšilo jako pravděpodobnost, pravděpodobnost detekce těch jakoby spolehlivější detekce toho bota, jo. A člověk si to boundary musí sám říct. Je to jako osmdesát procent, stačí mi to, jo. Nebo je to devadesát devět a prostě pod to nemůžu vlastně jako jít a nedává to smysl.

[46:27] speaker_7: Jo.

[46:29] speaker_1: Ok. A-

[46:32] speaker_7: Já bych ještě řekl, že to je hele podle mě docela smysl, když neočekáváš tisíce iterací, ale jako někdy, když si napíšeš nějakej kód a potřebuješ, nechceš u toho sedět a furt tobě vysvětlovat, jestli, jestli to opravdu implementuje. On neříká, že to implementoval, je to hotový a ty to otestuješ a není. Tak jako já jsem třeba něco opravil tím, že jsem tomu dal příslušné aplikace, že to vlastně vyrobilo něco, něco fixnul v aplikaci, řeklo, že je to hotový. Já jsem se na to podíval, nebylo. Tak jsem nakonec udělal nějakej jako end to end loop, že to vlastně proklikal tu aplikaci a ověřil si, jestli to tam pak jako je fixnutý. A takhle udělal asi pět iterací a nakonec se sem tam dostal. Hele, tak když už jsme do toho-

[47:10] speaker_1: Vopravdu to bylo.

[47:11] speaker_7: Asi.

[47:11] speaker_1: A ušetřilo mi to spoustu času a toho času. Hele, jako určitě, určitě jo. A ono to v podstatě znamená, že ty evaly běžně děláte, že jo, v tom Claude mode. Není vám to jakoby cizí ostrov, ale nemáte to vlastně jako kodifikovaný, jo. A je úplně v pořádku spoustu věcí řešit tímhle způsobem, protože vy mu ty kritéria stejně dáváte. Řekneš mu, co to všechno musí umět prostě. A on proti tomu jakoby kodí, že jo. A to je v pořádku.

[47:34] speaker_7: Ale je to možná-

[47:34] speaker_1: Tohleto-

[47:35] speaker_7: Exaktnější definice, ne?

[47:37] speaker_1: Tady to je vlastně standardní pipelina, jo, která je na tohle podle mě jako hrozně obrovská. Tím psát nějakej kód, kterej ti stačí one shotnout. Ta podle mě ta pipelina je dobrá na nějakou optimalizaci, protože představ si, že tomu tvýmu kódu řekneš má to umět A, B, C, D featury, jo. A ten kód to udělá. Teď si představ, že mu ještě řekneš a musí to, musí to toho uživatele obsloužit do tři sta milisekund třeba, jo. A najednou, najednou potřebuješ jako jasnou pipelinu, která to perfektně změří, která bude vlastně, která vyzkouší různý kandidáty na to řešení a která ti bude jako optimalizovat vůči tomuhle, vůči všemu vlastně, nejenom splnění těch feature, ale zároveň třeba tý rychlosti nebo já nevím, počtu obsazený paměti nebo whatever, jako dej tomu nějakej další rozměr ještě a už to na tu běžnou smyčku bude vlastně jakoby najednou, už tam těch kandidátů můžeš mít mnohem víc. Jo, takže řekl bych, že možná to je jako další dobrej, jako další dimenze nebo další nějaká jakoby charakter toho, kdy ta smyčka může bejt vhodná, že očekáváš, že to nebudou dvě iterace. Ještě každej to budou dvě iterace, ať to udělej prostě přes code úplně normálně a nedávej to do tohohle extrémně složitýho jakoby, do týhle vlastně jako velkýho kánu na vrabce do těch evalů, že.

[48:54] speaker_7: A vy teda si myslíš s tím, jako že něco udělá a pak ho musíš opravit.

[48:57] speaker_1: No pak ho musíš opravit.

[48:58] speaker_7: Jo.

[48:59] speaker_1: A je to třeba možná proto, že, že jsi mu dopředu nevytvořil vlastně jakoby ty plný kritéria, podle kterejch by to mohl jako on hodnotit, jo. To je vlastně jako otázka, jestli jsi je vůbec mohl vytvořit anebo jestli si během toho jenom zjistil, hele, tady mi to vlastně trošku nesedí a potřebuju to trošku jinak.

[49:15] speaker_7: Skoro vždycky je to odpověď, není. Dal jsem ty data, že jo, který-

[49:19] speaker_0: Na které jsem přišel já teďka při tom připravování.

[49:21] speaker_1: A ono ani nejde vlastně, protože pointa tý eval smyčky, tý jakoby mojí v uvozovkách tý machine learningový je, že víš, k čemu dospět. A pokud zjistíš na konci toho celýho loopu, těch loopů, že vlastně ty, ta smyčka je blbě zadaná a že měří něco, co nemá a že to vlastně nepomáhá, tak se musíš vrátit na začátek. Tu e-- ten eval předělat. Vlastně ten způsob toho hodnocení předělat a pustit to znova. Jo a, eh, takže ten, ale ten eval je jako pevnej, kdežto u tebe se ten eval hejbe s tím poznáním, že jo. Jo, ty mu dáš nějaký zadání, on něco udělá, ty si to vyzkoušíš, zjistíš něco, cos nevěděl předtím, upravíš zadání a necháš ho znova jako by tomu pracovat.

[50:00] speaker_0: Jasně, prostě je to, investuješ do toho strašně moc ресурсů, tak prostě do toho potřebuješ mít ten eval fakt promyšlenej, no.

[50:07] speaker_1: No jasně.

[50:09] speaker_0: Pořád nějak bojuju s tím vlastně, jak identifikovat ty správný příklady na ten-

[50:13] speaker_1: Na tu smyčku.

[50:14] speaker_0: Na tu smyčku, na ten eval, jo, kde právě je lepší, jako, jako jo, jsou nějaký jasný, takový jako ty tvoje, tvoje R kódy. Nebo když vím přesně, když vím přesně výstup, jo a je to nějakou uzavřený task, tam si dokážu představit, jo prostě běž to, nebo teďka dělám, běž to v pěti agentech a uvidíme, kterej jako bude úspěšnější a-

[50:34] speaker_1: Hm, hm. Já se trošku bojím u tebe, že to je jako hrozně neexaktní ten výstup, že to jako nejde úplně změřit, že jo. Furt jako to je nějakej vibe, jestli to jako odpovídá tomu zadání nebo ne. Když jsi u toho kódu, vidíš, jestli ten error se opravdu jako jestli to generovalo správně.

[50:49] speaker_0: Jo a ten texty versus, jo, jo, jo.

[50:52] speaker_1: To je jako no. Hele, on mi tady říká, že ta druhá půlka filtru jakoby na to, jestli to je pro smyčku nebo ne, že řešení je v fazi na okrajích, ne v jádru. Jo a já jsem se ho jednou ptal, jestli by ten eval šel použít na tvorbu jako UI a, eh, a odpověděl mně něco jako ve smyslu, že, že bys proto prostě, že to je mnohem softwarovější. Jo jasně. A to mi tady to říká, že to není jasný v jádru a v fazi na okrajích. Jo, to znamená, že jo, ty kódy jsou ja-jako jasný v jádru a pak tam jsou nějaký jako, eh, nějaký edge casy třeba, který se budou pokrývat nebo něco takovýho, no. Takže jako zrovna, zrovna kódit s tím, jo, nevím, no, jako třeba co mě napadlo, je zkusit optimalizovat nějakej SQL dotaz. Prostě máš nějakej totálně spráskanej SQL dotaz, kterej doběhne, dá ti data, který chceš, ale trvá dvě minuty prostě, jo. Takže ty víš, jakej je výsledek, víš, jakej, jakej má bejt výsledek. Jo, ten eval je napsanej vlastně. Ty jako říkáš hele, až to, až to, až, až ten dotaz spustíš, tak bude vypadat přesně takhle. Budou tam tyhlety sloupečky, budou tam tyhlety data, v nich budou tyhlety hodnoty. To je vím já, že je správný řešení. To nedávám tobě, to neoutsourcuju tobě, abys našel jakoby ten výsledek. Ale vím, jak to má vypadat. Ty data jsem si ověřil a tvůj job je teďko ten skript, vlastně tvořit ty kandidáty a optimalizovat ten skript, aby, aby reprodukoval stejnej výsledek, aby prošel tím evalem. Akorát součástí toho evalu bude jako data plus rychlost. Jo a chceš se dostat třeba do třiceti sekund, jo. A ty uvidíš po-pomocí těch vlastně jakoby těch loopů, těch smyček. Uvidíš, jak rychle se tam dostává a jestli se dostal na sto procent. To znamená pokořil těch deset nebo dvacet vteřin, jo. Nebo dokonce to třeba překročil. Anebo jestli se zasekl někde na prostě nevím kde a není tam schopnej dojít. Což neznamená, že to nejde, ale třeba jako Vojta, ten můj, ten můj guru, vlastně jakoby ten IT můj AI guru, tak ten říká, že ono by to měla bejt i jeho úloha toho kóda nebo toho, co tvoří ty jakoby ty kandidáty na to řešení, aby právě myslel jako out of box, jo. Jo a pak je tam nějaké jako final strategie. Final znamená, že, že a ten tam je ten můj skill to, to umožňuje, že můžeš třeba testovat tři různý strategie najednou, který jsou úplně diverzní, prostě. Jo. To znamená, máš SQL dotaz a jeden bude se snažit jenom napsat jinej dotaz, druhej k tomu bude vytvářet pomocný tabulky a třetí si ty data bude předpočítávat nebo já nevím, prostě jo, jako tři úplně jiný techniky, jak, jak, jak se dá něco jakoby zrychlit a, a, a vyzkoušet to. Takže to, že to nejde najedný neznamená, že to je, že to není řešitelný to téma, jenom to není řešitelný s tím postupem a s těma datama, který tam jakoby máš, jo. Takže není to jako jednoduchý, jako se říct, ale no jasně, aby na to člověk pak nezanedbal, aby tam nehodil něco, co třeba bylo úplně nevhodný a pak si řekl no to jak kdyby tomu jako nepomohlo. Jako hrozně by mě to zajímalo na tom tvým scénáři toho promptu vlastně, jo, jak zlepšit prompt, aby mi dal výsledky, který chci. A na tom bude extrémní nebo ne extrémní, na tom bude docela těžký vlastně, protože ty výsledky bys neměl hodnotit ty. Ty bys měl napsat eval, kterej ty výsledky hodnotí podle tvýho, že jo. To znamená ten a ten eval říká něco jako dám ti text, jo, to je ten výsledek. Ty vlastně hodnotíš výsledek toho promptu a ty tam budeš mít ty příklady toho, co se ti na tom jako nelíbí.

[54:21] speaker_0: Jo, ty kvality.

[54:23] speaker_1: A ty řekneš jako, eh, je otázka, jestli potřebuješ vůbec říct, totiž teď se dostáváme k tomu, jak ten eval může fungovat, jo. Ten eval je buď jako binární, že prostě buď to projde nebo neprojde, což tohle není možný, aby byl binární.

[54:37] speaker_0: Není možný, jo.

[54:38] speaker_1: Anebo právě ty dojdeš s ním k tomu, že to je gradient, jo, že to má nějaký jako nevím, eh, může to bejt třeba, můžeš hodnotit třeba výsledky, eh, jako AI asistenta na podpoře, jo. Takže on si nějak povídá, prostě nějaká konverzace a tam můžeš hodnotit, jako že halucinaci třeba, jo. Jestli třeba, jestli třeba má adherence k tomu promptu, jestli, jestli nedělá věci, který by neměl, prostě. Můžeš si vymyslet jako nějakejch pět kategorií třeba, který by jako měly bejt splněný, aby to u tebe prošlo. A, a vlastně pak, pak, pak vlastně jako postavit eval, kterej bude dělat LLM, že jo, jako LLM, který si vezme výstup. Ty mu řekneš, má to mít tady těch pět věcí, takhle to oskoruj a on to oskoruje a přiřadí k tomu nějaký číslo, jo. A tenhle ten eval se bude pouštět jako, jako pokaždý, že bude novej kandidát. Takže ty dáš novej prompt. Tady u toho se to těžko dělá, protože nemůžeš jako replikovat tu konverzaci, jako že jo, tu živou konverzaci, jo, v podstatě. Ale u toho tvýho eval, že jo, u toho tvýho to můžeš replikovat, že řekneš hele, má tam bejt, nevím, má to bejt takto dlouhý nebo já nevím, jaký na to máš vlastně jako požadavky. To je hodně právě do tý práce s Claudem, abyste dali dohromady vůbec, jak to můžem hodnotit ten text, aby to dalo ten gradient, aby to, aby to dokázalo spočítat skóre, který je mezi nulou a jedničkou, jo, a který on bude moct jako zkusit vylepšovat.

[56:05] speaker_0: No a přes to asi že to u dátka půjde. Ještě jako co, co bych tam dodal, že jo, že je nějaká důležitá nějaká ta testovací trénovací sada na to nějak myslet. A to jako v tvým případě bude těžký, že jo, aby to prostě se neoverfitovalo na prostě nějaký tvoje příklady, pak si řekneš, jo, je to dobrý a potom si tam hodíš nějaký reálnej use case a najednou prostě-

[56:24] speaker_1: No ale tohle to jsou reálný use casey. Já jsem vzal reálně prostě celej jako, eh, všechny user stories, který jsem kdy napsal tady v tomhle tom konkrétním projektu, a to jsem mu tam dal jako-

[56:35] speaker_0: Ale to bys vlastně neměl mu dát všechno, že jo. Jako dobře to rozdělovat, abys pak jako to evaluoval na něčem, co on neměl v tý trénovací sadě.

[56:43] speaker_1: Ale ten můj, ten můj skill s tímhle tím počítá. Ty mu dáš data a ono to hned to nezačne. Nejdřív tam je jako designér toho evalu, kterej ti ty data rozdělí, zaslepí jakoby tu, tu eval sadu, abys, abys mu na ten trénink nedával všechno, jo, ale aby tam právě měl jakoby kus, kterej opravdu se bude proti tomu jako testovat, že to jako vypadlo dobře. Jo a ještě co mi včera radil jakoby Claude, že můžeš vlastně udělat meta eval, což je to, že si, eh, ale to vlastně i už je, už je embedded v tom, už je to embedded v tom, v tom skillu. Jo, že právě mu část toho necháš si open. Budeš říct, že tohle je správný řešení a on když na to pustí ten, ten svůj jakoby prompt, tak můžeš zjistit, že ten eval jako vůbec nefunguje v podstatě. Jo, že něco, co bylo správně, to vyhodnotilo, jako že to je špatně v podstatě, jo. Což je testování samotnýho evalu, což za tebe zase Claude udělá. Postupně dávám mu dohromady eval, dělám pár iterací, jsem s tím spokojenej a řeknu mu teď do toho evalu pusť tenhleten, tenhleten výsledek, s kterým já jsem byl spokojenej. Jo, jak bude hodnocenej tímhle evalem? Bude hodnocenej nízko nebo vysoko? Jo a to ti říká, jestli ten eval je dobře postavenej anebo, nebo blbě, že jo. Když ti to, když ti tvůj dobrej výsledek poscoreuje na padesát procent, no tak víš, že je něco blbě a že ten tvůj eval nefunguje, protože bude prostě hrozně podhodnocovat některý výstupy, který by mohly bejt úplně dobrý pro tebe. A bude to pro tebe zna-znamenat, musím zase zapracovat na tom evalu, jestli ho dám dohromady tak, aby aspoň ty věci, který jsem mu dal, hodnotil dobře.

[58:12] speaker_0: Ty jo, to je hrozný inception, ale jasný.

[58:16] speaker_3: Můžeme si dát vylistovat několik jako use casů, třeba všichni za sebe, na co bysme to použili konkrétně a třeba si to i navzájem okomentovat, jestli to je opravdu vhodný. Přijde mi, že co nejvíc jako uchopí všechno.

[58:28] speaker_1: Jo určitě, absolutně, můžeme o tom diskutovat.

[58:31] speaker_3: Mě třeba Řezníčka napadlo hnedka, jak, jak jsi mluvil o tý svojí aplikaci na přepis hlasu a já mám, už ji mám hotovou jakoby v Macu, ale teďka mám několik, vlastně máme nasazených několik modelů na tu transkripci o různý rychlosti s tím, že předpoklady, že ty pomalejší třeba budou přesnější. A já bych chtěl vyzkoušet, jestli ty rychlejší třeba jak moc ztrácejí tu kvalitu a jestli to přepisy jsou stejně kvalitní. Že bychom dát, nahrát nějakej hlasový záznam a mít přesnej přepis toho hlasovýho záznamu a pak ho vlastně posílat těm modelům a sledovat, kolikrát vrátěj správnej výstup a doevalovat to.

[59:08] speaker_1: To mě přijde úplně dokonale jako.

[59:09] speaker_3: Což bychom mohl udělat snadno ručně, ale teď bysme tam mohli vyspořádat-

[59:13] speaker_1: Jasně, že ty mu dáš sadu prostě. A navíc tady je skvělý, že, eh, že by se to, že by se tam daly generovat ty syntetický data do toho, jo. Ty by sis mohl nechat, eh, ty by sis mohl nechat ten text vlastně přetvořit do, do, do zvuku, do hlasu a vlastně ještě jakoby-

[59:32] speaker_3: Jo a-

[59:32] speaker_1: Namíchat to, že nemusíš mít jenom svejch pět příkladů.

[59:34] speaker_3: Že mi to vygeneruje text, kterej to přepíše do-

[59:37] speaker_1: Do hlasu.

[59:37] speaker_3: Do hlasu a ten pak zpátky do textu.

[59:39] speaker_1: Samozřejmě já netuším, jak to jako může dopadnout v tomhle, no, ale, ale jako taková idea, že spoustu dat může bejt syntetickejch a právě ta speech ke mně může pomoct, nebo ten, ten skill ti může pomoct jako vlastně jako o tom přemejšlet, jestli, jestli to může mít jako do-dobrej dopad nebo jestli tam vidí nějaký úskalí a pak ti je může třeba pomoct nagenerovat. Stačí Eleven, Eleven Labs API a prostě-

[60:01] speaker_3: My taky máme jako, my taky děláme hlas, jo.

[60:05] speaker_1: Super. Tak jo, nějaký další téma?

[60:10] speaker_0: No a, eh, chtěl jsem teda, že bys nějak, jestli to můžu ujasnit. Tys mluvil o dvou typech úloh. Jedny jsou vlastně docela jasný, jako tvoje QR kody, tam je celkem jednoduchý, že jo, vlastně změřit, jestli to je success nebo ne. Zatímco ty, ty, ta tvoje úloha je víc, eh, víc, já nevím, jak to nazvu, jo, gradient nebo jako soft vlastně.

[60:33] speaker_1: Ona ta moje úloha je taky soft, může bejt softovější, jo. Já bych taky nechtěl ten eval postavit jako funguje, nefunguje, ale i u toho kodu můžeš říct jako malej počet znaků. Je to špatnej typ dokumentů, protože prescription začíná vždycky péčkem třeba, jo. Takže ty mu vlastně do tý trénovací sady můžeš říct, tady jsou ty správný, jo, eh, a něco takovýho. Takže tam ten gradient taky můžeš vymyslet. Ale promiň, povídej.

[60:57] speaker_0: Přišlo mi, že ten trénink, hm, že ten, že vymyslet jako s-jsou, jsou dvě věci. Buď máš jako jasnej výstup, jasný akceptační kritéria, jasný jako rozpoznání nebo nerozpoznání nějakýho eReceptu nebo QR kódu nebo whatever. Tak tam mně to připadá jakoby jasný, že zejména při nějakým větším objemu to dává smysl a jsem jako confused, když mám teda takovýdle víc ty fuzzy věci, eh, jako například kvalita, eh, napsaných jako akceptačních kritérií nebo user story nebo něco takovýho, tak, hm, ono by měly dvě tady tyhle kategorie. Ta jedna je taková jakoby jasná, kdy to je pila a pás a ta druhá je taková víc-

[61:40] speaker_1: Tak jenom si to ujasňuj, že tohleto jsou opravdu dvě, dva různý, dvě různý nějaký věci, který-- dvě různý kvality, který tam můžu identifikovat, že jo. Ale to druhý nevylučuje eval, jenom ten eval bude prostě dost jinej třeba pomocí nějakýho- Bude pomocí LLMka. Bude pomocí LLM třeba zhodnotit výstupy. Ale pak si nějak musím jasně ujasnit právě třeba s pohledem jakoby co jsou teda ty věci, na který kouká, že jo? Ano, ano. Jo, co on tam měří? Opakování slov nebo general vibe nebo whatever jako. Hele Radku, já se jenom, nebo mám dotaz, jako přemýšlíš ty, ale tady si trošku budeme, když jedno LLMko ti dá výstup, o kterým jako tvrdí, že splňuje kritéria. Dokáže jiný LLMko odhad-- nebo vlastně to stejný, jenom v jiný instanci odhadnout, jako rozpoznat, že ten výstup ve skutečnosti není dobrej, když to jedno, který to, ten výstup vytvořilo, říká, že je. Rozumíš? Nerozumím. Jsem v těch meta, meta levelech jako ztracenej trošku, ale jako souhlasím s tím, že jedno mi řekne je to OK, pak otevřu další tři okna a tam mi řekne dobrý, nedobrý, dobrý, nedobrý, dobrý, nedobrý. Ale tam nemůžeš mít dobrý, ne, tam budeš mít tu škálu, ne? Oni by měli bejt- Ale jestli to, co to vytvořilo, to LLMko, který ti dalo klidně i ten špatnej výstup, ti řeklo, že, že splnělo kritéria, tak jestli jiný LLMko rozpozná, že ty kritéria ve skutečnosti splněný nejsou. Když ten autor, to LLM jako autor říká, že je, tak jestli to jiný má tu kapacitu to rozpoznat, že není. I když ono to je asi něco jinýho hodnotí výstup než tvořit, že ono to jako- Představuju, že jo, že to má-- jako tam to je hrozně, že píšu, takže to mám nějakej kontext, nějakou věc prostě tvořím. A tady vlastně to má hrozně jednoduchej task, jenom prostě tady mrkni na těchletěch pěti věcí, tak si představuju, že i stejně k tomu modelu- A některý věci můžou být třeba fakt počet znaků, že takový jakoby hard deterministický rules a některý můžou být víc jako odhadnutí, nakolik je to napsaný pozitivním tónem třeba, že jo, nějak jako- Jo. Nebo ne? Jo, určitě, jasně. Takže můžu mít nějakej hard rules, kterej fakt chci. Vždycky tam musí být tahleta sekce, vždycky to musí být takhle, takhle dlouhý věty max. Ne tyhlety slova a jiný můžou být takový jako, eh- Hele, a to, na co se ty ptáš, Kubo, je právě ten meta eval. To znamená, ty vezmeš ten vstup toho hodnotícího subjektu vlastně. A, a teďko, teďko se zeptáš na text, jo? Jo. Takže dáš prompt a řekneš: "Vyhodnoť tento text podle těchto kritérií," prostě, jo? A dáš mu tam nějakej text, kterej je podle tebe dobrej třeba. Kterej jsem napsal sám, že jo, to je to, který jsem napsal sám. Vybral jsem si. A teďka ok, jako- Je to, je tohle dobrý vlastně. A oni ti, oni ti, tim de facto zjistíš, jestli to hodnocení, který sis tam napsal, jestli je dobrý nebo ne. Yes. Jestli to vyloučí ten text. A já jsem se taky- Pak musíš dát špatnej text. Ještě doplnění. Já jsem se ptal, jestli součástí ground truth mají bejt i negativní příklady. A říká, že musí, že to by tam určitě mělo bejt. To je super. A mělo by tam bejt i to, že- Ty špatný. A je tam teda nějaká terminologie, protože ono mi tady vyskočilo něco jako gold, gold nebo něco takovýho. Super. Ground truth, golden data set je to nejlepší, jo. Jo jo jo jo. No ale jako i tohleto je ono s těma, že jo, negativníma, pozitivníma. Furt jako se může stát, že potom on se naučí tim, tim, jako on se bude chytovat na ten eval, kterej v něčem trošičku rozbitej bejt může bejt, takže potom tam bude najednou texty, který budou třeba v něčem hrozný, protože to tam někde jsi měl, že jo, nějaký slepý místo, někam to uteče, tak to prostě se, že jo, vždycky asi stane. Záleží, pak můžeš vylepšovat prostě, aby tam bylo dob-dobrej ten eval, ještě víc nějakejch příkladů, aby to pak nepsalo nějaký- Hele, terminologie. Ground truth je obecný pojem. Správná odpověď k vstupu, o které tudíž tohle je pravda. Zdroje je jedno, můžou to být syntetický data z databáze ošíkovaný člověkem, měření v realitě a může být velká špinava automaticky generovaná. Golden data set je podmnožina toho ground truth. Je to malá, ručně prověřená, důvěryhodná sada, kterou bereš jako referenční etalon. Golden rovná se někdo to očima zkontroloval, je to curated a na tohle se nemůže mýlit vlastně ten model. Typicky menší a stabilnější než celá ground truth. Ok a v čem se liší ta ground truth od toho golden teda, že nebyla všechna, nemusela být všechna jako mnou zkontrolovaná, jo, nějak? Ano, ano, může být špinavá, automaticky generovaná. To by mohlo bejt to, cos říkal, že to vygeneruje ty vlastní, že neuměl. Jo a ten tvůj golden je vlastně to, co jsi opravil sám. Ok. Každý golden set je ground truth. Ne každá golden truth je ground, ground truth, S G D. Ne každý golden je ground truth. Ne každá ground truth je golden. Ground truth rovná se mám k tomu správné odpovědi. Golden rovná se těmhle správným odpovědím obzvlášť věřím. Jsou prověřené. Ok, jo a to bys dokázal aplikovat na ty svoje recepty tohleto, rozlišit tohle? Nebo tam je to, tam je to přímo golden vlastně nějak? Jo, no asi, asi. A asi ty, který byly přijatý, tohle jsou asi golden. Ty přijatý preskripce jsou golden, protože někdo zkontroloval, že ta preskripce je platná a vydal proti ní lék, jo, tak ty jsou golden a ty zbytkový nevím vlastně. Super. A co, a ještě ta terminologie, jestli dokončíš ty negativní příklady, to se nějak říká. Máš to taky? Jo. Takže proč negativní příklady patří do ground truth? Ok, tak to jsou taky- Eval musí umět hodnit i správné odmítnutí. Když řešení pozná, že vstup je špatný, nepatří nebo má být, má být zamítnut. Bez negativních dvojic tohle vůbec neměříš. Bez nich switchka vyrazí na blbý konec. Naučí se číst tak všechno je OK, všechno je bod, vždy tableta a dostane se ke skóri. Negativní příklady jsou to, co tuhle zkratku trestat.

[67:45] speaker_0: OK, takhle přeškrnout address.

[67:47] speaker_1: Jo.

[67:48] speaker_3: A negativní příklad, příklad je ten terminostupněkus, jo, pro toho.

[67:52] speaker_0: Nějak to, to nevím. Asi jo.

[67:55] speaker_3: To se ptal, ne?

[67:56] speaker_0: No.

[67:56] speaker_1: Ne, já jsem se ptal, jestli může klidně obsahovat ty negativní příklady.

[68:00] speaker_0: Jo, jo, jo.

[68:00] speaker_1: Takže odpověď na to je, že ano, ale ne, jestli to je správná terminologie.

[68:03] speaker_0: Jo, to je jedno celkem, jestli chceš teda-

[68:05] speaker_3: Radku, mě ještě napadlo jedna věc nebo taková poznámka, že vlastně ty bys teoreticky mohl to svoje workflow mít takový, že něco ti vyplodí text a ty na to budeš mít, na to budeš mít načínovaný druhýho agenta, kterej to bude kontrolovat, že vlastně jako ideálně by to mělo dát dobrej výsledek, ale teoreticky kdyby to úplně nešlo, tak můžeš mít ještě toho kontrolovara za tím nějak jako pomoc.

[68:25] speaker_1: Mně připadá, že to moje téma se vlastně soustřeďuje na to, aby dokázal vygenerovat dostatečný množství goldens a negatives a nějak je prostě zreviewovat a mít tohleto a proti tomuto měřit a pak to jakoby tam šlo to hodnocení, ne? Nebo nevím, no, připadá mi to jako kritický vlastně v tom.

[68:41] speaker_3: Jo, jo, to rozumím.

[68:42] speaker_1: Já bych asi nepřemýšlel zatím nad generováním. Ale kolik těch příkladů máš, jo? Jestli máš třeba jen tři jenom jako-

[68:49] speaker_3: A máš, máš spoustu těch negativních asi, ne?

[68:51] speaker_0: Těch mám spousty.

[68:53] speaker_3: Když to pro-

[68:53] speaker_1: Takže když jako proklikáš pár threadů, tak zjistíš jako-

[68:56] speaker_0: Jo, asi bych mohl dát nějaký příklady z minulosti, no, který byly blízko, ale už nejsou golden, no. Tohle to jsou vyloženě takový, který jsem jako říkal: „Teď se to přihloupilo, to by byly fakt dobrý,“ no.

[69:06] speaker_1: Jako tohleto všechno je práce pro ten tool, jo, pro ten skill teda. To znamená, ty řekneš: „Hele, chci dělat tohleto, mám tyhlety data, jako pomoz mi jít dál, jak velký data-

[69:17] speaker_0: Pomoz mi definovat, co jsou ty věci, na který chci koukat-

[69:20] speaker_1: Tak.

[69:21] speaker_0: -a pomoz mi-

[69:22] speaker_1: Pomoz mi vytvořit ten-

[69:22] speaker_0: Rozumím. Takže zase mi tam jde o to, abych já procházel jednotlivý jako výstupy a došel tak prostě cíli.

[69:28] speaker_1: Hm, jo, super. A ty pak jemu můžeš říct, ty přece pracuješ s Kolodkou a Kolodkou vidíš use case sessions.

[69:34] speaker_0: Jo.

[69:34] speaker_1: Takže ty mu můžeš říct: „Hele, udělej prostě-

[69:36] speaker_0: No jasně.

[69:37] speaker_1: -prostě scan těma sessionama a nech, vytahuj mi z toho příklady a já ti řeknu, jestli jsou dobrý nebo ne, prostě. Jo.

[69:44] speaker_0: Jo, jo. Udělej mi UI pro to, abych dělal clicky, clicky.

[69:46] speaker_1: Přesně, udělej mi UI pro to, jako yes.

[69:48] speaker_0: Označit tvůj-

[69:50] speaker_1: No ten skill je v tom threadu, v tom vlákně na Slacku. Si ho můžete nainstalovat, kdyžtak jestli to budete řešit. Eh, a no.

[70:00] speaker_0: Já bych ocenil, vlastně se, nechci to nějak hate checknout, ale ocenil bych nějaký practical tips, jako vlastně jak to udělat. Možná se můžu zeptat Clouda, jo, ale jako vlastně jak tohle, hm-

[70:13] speaker_1: Tak pojďme začít tím, že si nainstaluje ten skill každej.

[70:16] speaker_3: Mně se líbilo, jak jsme procházeli to kolečko, jako na co bysme to rádi použili.

[70:20] speaker_0: Já tam ještě půjdu zase.

[70:22] speaker_3: Takže u tebe je to jasný. Ty to chceš použít tady na ty, ty texíky.

[70:26] speaker_1: No a možná bych to, no, jo, na ty texíky, no.

[70:33] speaker_0: Vlastně jenom abych to upřesnil, tak to jsou vlastně user stories, kterejma zadávám práci jak Cloudovi, tak vývojářům a chci, aby měli určitou jako vlastně kvalitu, eh, jakou si představuju, aby vlastně to psal za mě v takový kvalitě, jako bych to psal já. To je můj use case, ale myslím si, že spoustu use casů míní i právě, aby to mohlo použít.

[70:59] speaker_1: Super. Tak jo. Mají teda ještě nějaký use case, že ty nemáš myslím třeba?

[71:03] speaker_0: Nevím, teď nad tím přemejšlím, na co, ale spíš mě to zajímalo jako technologicky.

[71:08] speaker_3: Mně jely jak ty fuzzy, tak ty jako exaktní, jak jako-

[71:11] speaker_0: A máš nějaký ty exaktní? Mě by zajímalo víc případů těch exaktních, abych já byl schopen de-de-de-definovat.

[71:17] speaker_3: Jako ve vývoji, no, jako softwarově prostě jestli ten výstup opravdu dělá to, co má. Mně když to kontroluju, to většně většinou dělá, jako toho testera, že to prokliká třeba ten produkt a tak. Jako z hlediska funkcionality, no, to je vole, horší jako.

[71:32] speaker_0: Mám to na sebe jako příklad. Já se totiž nechám zhodnotit tady ty nápady, co tady jsou, jaké jsem napsal.

[71:38] speaker_3: No, dobře.

[71:39] speaker_1: Takže-

[71:39] speaker_3: Mám to nějak.

[71:40] speaker_1: No, já nevím, co to je teda.

[71:42] speaker_3: Eh, jakoby automatizace-

[71:44] speaker_1: Co je ta úloha vlastně?

[71:46] speaker_3: Automatizace quality assurance softwarových výstupů, co to je? Jakoby kódu, funkcionality.

[72:02] speaker_0: Já si zas dovedu představit tohle použít na jako ve stylu Radka. To znamená, že já mám nějaký, eh, nevím, prompt na vytváření issue, jako kódění issue v mým projektu. Mám tam hromadu nějakejch agents MV já nevím čeho. A teďkon teda řeknu, mám, dám mu prostě issuečko a teď ho nakódi prostě a vypadne z něj něco prostě. Já to zhodnotím, že jo, a můžu mu říct jako nějakej eval na to. A takže teď to budu pouštět stokrát a budu vylepšovat jakoby ty teoreticky ty různý prompty, teda ty různý agents MV, aby byl ten kód kvalitní, jakoby nějak optimalizovat tohle, ale je to podle mě takový hodně jako široký, no, že hodně, eh, ale třeba bych se mohl zaměřit na jednoho, na jednom konkrétním, jo, mám prostě třeba ten, já tam mám nějakej skill, kterej teda, eh, jako naimplementují pull request, prostě kde mu to říkám, co to má všechno prozkoumat a tak. Tak tenhleten vlastně vylepšit, aby, aby pak ten kód, kterej z toho vyleze, byl lepší, že jo.

[73:03] speaker_1: No super, to je, to spadá do stejný kategorie jako optimalizace promptu.

[73:07] speaker_0: No přesně, přesně, no. Já tam jako-

[73:09] speaker_1: No nějaký jiný téma.

[73:11] speaker_0: No já jako, jak se tady bavíme, tak asi u mě tam hodně rezonuje, ne vlastně asi to, ty věci, který mám, nejsou až na tu smyčku se spoustou iterací, ale vlastně daleko víc přemejšlet nad tím evalem i u těch tasků, který mají těch iterací pár. Ale prostě dobře to umět, dobře definovat ty akceptační kritéria.

[73:33] speaker_1: Takže evalem v tom obecném smyslu, jako jak mu dát ty cílový kritéria, proti kterým bude vyvíjet vlastně.

[73:38] speaker_0: No, no. A jako i v těch pár iterací je vlastně hrozně hodnotnej a hrozně právě, já často to dělám u těch skillů, že vlastně ty skilly píšu nějak jako-

[73:48] speaker_7: Tam pozměním pár věcí a doufám, že to pomohlo, ale vlastně líbilo by se mi tam mít třeba dvacet datovejch bodů, na kterých to jenom ověří, že to pomohlo. Tak to není ten eval, jo, ale prostě všude musím tak nějak víc datově pracovat, ehm, jako-

[74:02] speaker_1: Ale ten, ten eval je o tom, jako mně, mně připadá, že tohle je trošku misfit, jo, protože ty když víš, jaký kritéria to má splňovat, tak de facto se pohybuješ mezi nulou a jed-- tak, takhle binárně vlastně. Nula je nesplněno a jedna je splněno. Odškrtaný prostě věci, co, co tam máš mít hotový, ne? Nebo vidíte to jako jinak?

[74:20] speaker_3: Když, když díváš na vše, tak jo. Ale-

[74:23] speaker_1: Ale že vlastně jako neoptimalizuje, že to je vlastně jako checklist, co má dělat, jo? A, a-

[74:30] speaker_7: Ale ty ho tam máš, jak často a kterej prompt to splní, ne, všecko?

[74:35] speaker_1: Ne, to je smysl-- tady to chápu, že to je vývoj software jakoby, jo, že prostě ty mu dáš zadání na vývoj nějaký, jo, a dáš mu nějaký kritéria a on bude sám iterovat, dokud je nesplní, jo. A k tomu třeba můžeš říct pusť si testovací pipeline a samozřejmě, že musí bejt zelená, že to musí projít, jo. To je taky součástí toho evalu. Splníš, splníš úkoly, který ti dávám a, a poběží, budeš mít test coverage a poběží pipeline.

[75:00] speaker_7: Jo, ale-

[75:00] speaker_1: Testovací. A, a on, on bude iterovat jakoby do tý stovky, ale, eh, vlastně, no.

[75:08] speaker_7: Jenomže to je právě to, co mně nestačí, jako to teďkon dělá, že je to zelený a že to projde jako v pohodě, ale ten kód je furt strašnej. Takže já tam potřebuju ještě nějaký další kritéria, aby nevím, tam nebyly testy, který jsou samy pro sebe a takovýhle věci. A mně tohleto třeba je hard kritérium, ale další je, aby tam nebylo spousta zbytečnýho kódu. Já nevím, tam to je-

[75:30] speaker_1: Tohle je ale úplně brutálně fuzzy, prostě vůbec si neumím představit, jak bych napsal eval, kterej tohle bude jako automaticky vlastně jako optimalizovat ten prompt, že jo. Ty se bavíš o tom, že napíšeš evaluaci, hodnocení toho, co z něho poleze, která se automaticky aplikuje. O-o-o tom to je jakoby. Ty bys musel napsat prostě evaluaci, která tohle všechno jako zahrne. Budeš tam mít ty špatný a ty dobrý příklady toho, jak to funguje, vlastně, a na základě toho se bude optimalizovat prompt, kterej ti vezme jedno zadání vždycky, což je btw další, další jako filtr do toho, jestli ta smyčka je dobrá, jo. A to kritérium je, jak dlouho ten eval trvá. Jo. Takže vlastně na, na eReceptu je to milisekunda, je tam kód, do něj vrazíš eRecept, on se vyhodnotí a víš, jestli je dobře nebo špatně prostě, jo. Takže ta celá věc trvá prostě sto milisekund a je to hotový. Kdežto u toho tvýho případu vlastně vyhodnotit jeden příklad bude znamenat třeba jako expense na pět minut třeba ko-- jako Claudeni, jo.

[76:31] speaker_7: Jo, jako mně přijde, že to na tisíc iterací fakt není, ale mít jakože, takže jak říkám, přemejšlím skutečně nad eval smyčkou, prostě nad tím, jak si psát různý evaly na to, abych prostě když měním skill nebo něco, tak aby to bylo nějak udržitelný.

[76:47] speaker_1: Ok, ok.

[76:47] speaker_7: No.

[76:49] speaker_1: Hele, klidně jako, klidně můžeme to téma splitnout, jo. Já tady cítím jako, eh, to spektrum, že, že, že, že vlastně jakoby to, co nabízím já, tak je jakoby ta, t-to je trošku, ty ses na to ptal, k čemu mi bude ten skill. No ten skill tohle všechno, o čem jste se bavili, tak dělá za tebe. Ty za ním přijdeš s tím problémem, jo, on ti pomůže vyrobit tu testovací sadu, pokud ji nemáš, jako třeba v tvým případě, nebo ohodnotí tu testovací sadu a pomůže ti napsat ten eval, jo. Pak řekneš Enter a to je všechno prostě.

[77:19] speaker_7: A jak se to liší od toho skillu, kterej nabízí Claude na evaly?

[77:23] speaker_1: A to je eval čeho?

[77:24] speaker_7: No, že jo, on nabízí eval na skilly vlastně. On mi nabízí, když tvořím skill, takže-

[77:30] speaker_1: To netušil, tak se nic neděje. To bysme se mohli zeptat.

[77:33] speaker_7: Nebo nějaký custom prostě s-skill, kterej si vytvořil.

[77:36] speaker_1: Tohle je custom skill, kterej tvoří mraky Python kódu, umí právě trackovat ty výsledky z toho, jo, prostě je to jako, je to, je to jakoby, je to fakt jako, no, jako machine learning based prostě trénovací smyčka.

[77:52] speaker_3: A to jsi dostal někde, to jsi-

[77:53] speaker_1: To jsem vyrobil. A to co, eh, ale takhle je hodněkrát evaluovaná, jako ještě, hele, řekněme, jak ta smyčka funguje, jestli jako jo, ale klidně moje, proč ne. Je, je dlouhý, jo, jedna velká smyčka. Hm, a vlastně to, co trénuje, je úplně jedno, jo. Ono to klidně může trénovat jako custom ML modely třeba, jo. A ty to právě musíš řešit. Jako ten kandidát na to řešení může bejt prompt, kód, machine learningovej model, jo, může to bejt úplně cokoliv. Takže vlastně pokud si chceš psát, jako pokud chceš něco budovat víc lightweight, tak možná nepotřebuješ ten skill, jo, ale zrovna úplně bych doporučil to jako vyzkoušet na tom, jak těž-- jak, jak snadný, jako kolik času, třeba jestli to nevzdáš po dvaceti minutách, že se nedoberete třeba do toho dobrýho evalu a půjdeš si nějakou svojí cestou. Anebo se dobereš do dobrýho evalu, budeš s tím jako spokojenej a zkusíš to pustit, jestli to, jako jakej to vyprodukuje výsledek vlastně, no.

[78:50] speaker_3: Já mám ještě jeden jako hodně velikej use case, to vezmu stručně. Co teďhle děláme teďka ten náš projekt, tak v podstatě sháníme nějaký GPU servery, na nich pouštíme open source modely a ty pak chceme pronajímat.

[79:06] speaker_7: Jo, jako tady tenhle speech to text třeba, jo, to je jeden příklad.

[79:09] speaker_3: Například, ale vyloženě jako LLMka tam běží a takovýhle třeba Qwen a, a vlastně co, co my, co je náš úkol, co pak bude obrovský know how jako naše deviza a co už jako budujeme, ale chceme to s časem automatizovat skrz agenty je, že vlastně dáš dohromady nějakej hardware a tam máš kombinaci různých komponentů, prostě grafickou kartu, CPU, prostě jo, můžeš, RAMky, tak to prostě musíš to mít jako dobře zkombinovaný. A teďka pro každý, každou tu konfiguraci můžeš jako jinak nastavovat věci třeba i v BIOSu, jo, jako, eh, já nevím, overclocking, prostě spousta, milion mega parametrů, co můžeš jako nastavit, abys z toho setupu vymáčkl maximální výkon za co nejmíň jako vstupní energie jako energie. A teďka to je, tohle je prostě strašně moc konfigurovací, co jako, co se dá najít kombinací jako. A přesně potřebuješ, vlastně na to potřebuješ eval. A tam to nekončí. Potom potřebuješ, potom na to nasadíš nějaký LLMko, teďka jaký se tam hodí, nevím, jak to vlastně ještě celý nastavit, abys to pak jako na-nastavil na míru pro to LLMko, pro ten model, kterej tam běží. Jak nakonfigurovat ten model vlastně, ten se dá taky ještě konfigurovat, prostě různý parametry, aby měl co největší výkon. A když ho pak jako ještě začneš, už to máš jako tohleto víc a chceš ho poskytovat, pak ještě řešíš pricing, aby to bylo třeba na OpenAštu. Nebo i kdybys ten raw compute toho hardwaru pronajímal třeba přes вас AI, prostě platforma na pronájem raw computu, tak prostě i tam asi máš nějakej auto pricer, kterej může, může být od Mega Alchymie. Jak to nastavit tak, abys maximalizoval revenue za měsíc. Že to je nějaký tři distinct jako fáze toho, co prostě mega optimalizovat a můžeš na to mít agenty a ty nemusíš vlastně obvolávat tak, aby si z toho dostal co nejlepší výstup v každý z těch fázích.

[80:57] speaker_1: A ten výstup je v čem? V tokenech za sekundu? Nebo jako v čem je ta hodnota?

[81:01] speaker_3: Záleží. Jasně, může to bejt tokeny za sekundu, ale pak tam máš jako-

[81:03] speaker_1: Nebo zisk, že jo.

[81:04] speaker_3: Pak tam máš srůpu, vlastně to je ono, latence do prvního tokenu. Máš tam, eh, schopnost jako, jako success rate, success ratu tool callingu. Jestli, jestli to umí používat ty tooly správně, jestli, ty jsi narazil na věc, že prostě jestli si to jako uvědomí, že to, že to je automaticky, že tool má zavolat, když ho má k dispozici, nebo jestli ho ignoruje a dělá si to nějak jinak. Eh, jako těch věcí je jako strašně moc. Asi na to budeme potřebovat jako velice dobrý eval.

[81:37] speaker_1: Hm, mně přijde úplně jako hustej case tenhle ten.

[81:40] speaker_3: Jo.

[81:41] speaker_1: Protože je to rychlý relativ-- je otázka, jestli je to rychlý, no, jak, jak rychle změníš tu konfiguraci.

[81:45] speaker_0: Ten první mě ohromně zaujal, jak rychle by to bylo vlastně, jak rychle mění ty konfigurace a testovat je.

[81:50] speaker_3: No tak jako to musíš fyzicky vyměnit, pozor. Ale když už nějakou máš, tak jako ladit jí, ladit ty věci v BIOSu, to už je asi jako snazší automatizovat, si myslím.

[82:01] speaker_0: Já se pořád motám vlastně kolem toho, že třeba že pro mě je nějak důležitý, jak identifikovat ty věci, který jsou vhodný na eval. A pořád jsem kolem toho vlastně zmatenej, jestli ty věci, co říkáš, třeba ten první krok, jestli je vhodnej na eval. Tři, tři kroky jsi vlastně dával na-

[82:15] speaker_3: První krok jako ladit BIOS, posbírat ty-

[82:17] speaker_0: Ladit BIOS.

[82:18] speaker_3: No. Jo a jo, to bylo ještě dobrý na eval. Máš ty parametrický, to vlastně, ono to bude porovnávat ty výstupy z těch různých konfigurací. A je to eval? Je to spíš nějaký srovnávání, je to, je to eval, Tomáši? Že to není jako ano/ne, není to takhle binární. Je to najdi v seřaď a najdi nejlepší.

[82:40] speaker_1: Je to jako hledat optimální konfiguraci.

[82:42] speaker_3: Je to de facto-

[82:44] speaker_1: Ale musel by, musel, musela by bejt nějaká možnost to aspoň jako, protože on, aby mohl zjišťovat tu optimální konfiguraci, tak by si ideálně měl umět měnit sám, jo. Aby opravdu mohl hledat jako kombinatoriku v tom-

[82:58] speaker_3: Což by mělo jít jako-

[82:59] speaker_1: Což, co jak co ovlivňuje.

[83:00] speaker_3: Že ten agent to vlastně-

[83:02] speaker_1: No, takže BIOS, já myslím, že konfigurace BIOS třeba.

[83:05] speaker_3: Může, může. To nasadit, ono to může být, prostě to běží na serveru, může to napršet, no.

[83:12] speaker_1: No, tak to mi přijde jako dost hustej case. Ale dobrý, máme čtyři casy. Píšu mu ke každému, mi stručně řekni, jak přistoupit k tvorbě testovacích dat a jak přemýšlet o eval. Dobrá. Ještě teda nebo poslední šance na pátej case tady, kterej tady nemáme ještě z jinýho, z jinýho soudku. Mirku, nenapadá tě něco?

[83:28] speaker_0: Ty jsi říkal ten eskal dotaz, jestli to nebyl dobrej case.

[83:32] speaker_1: Ok.

[83:33] speaker_0: Že tam máš jasnej vstup, výstup.

[83:37] speaker_3: Přemýšlím ještě něco jako víc pro open populaci. Snad jsem se nenapadl. Pro modely. Než se tomuhle napíše sám model jako use case pro modely.

[83:58] speaker_0: Já přemýšlím, jak to použít v datový analytice. Eh, často mi trvá dlouho, než se doberu k těm správným datům, na který jako vlastně koukám. A říkám si, že když se doberu k těm správným datům, který vlastně chci vidět, tak jestli ho máme nechat iterovat na to, aby přišel na to, jak, ehm, to je hloupost. To není optimální, co v tom. Nevím, no. Já furt bojuju s tím identifikovat ty casy na to dobrý.

[84:30] speaker_3: Než to, než to domyslíš, ještě mě hnedka napadlo teda, eh, když se ptáš AI modelu, ať ti poradí s čímkoliv v životě, tak prostě může halucinovat. Nevíš, jestli tomu můžeš věřit, jestli by se dalo obvolovat, jestli halucinuje, jestli vymýšlí, nebo jestli ti říká jako pravdivý input.

[84:45] speaker_1: To, to není pro studentský portfolio, to je prostě pro jako side by side LLM, že jo. To znamená, něco ti poradí a ty si pustíš research, kterej řekne: „Hele, za jistými dostupných jakoby veřejných zdrojů jakoby vyhodnoť mi jako pravděpodobnost, pravdivost těch tvrzení nebo těch hráčů.

[85:04] speaker_3: A to by šlo fakt optimalizovat, no, jako skrz. Myslíš, že zlepšíš prompt tak, aby to byla menší šance, že to bude halucinovat?

[85:12] speaker_1: To ale zase je to hrozně fuzzy, jako hrozně hledat potom ty příklady a říkat jako-

[85:17] speaker_3: Jo.

[85:17] speaker_1: Jo, to, to, to-

[85:17] speaker_3: Mně to přijde jako krásný use case vlastně. Ale tím, že neoptimalizuješ na formát a tak, ale fakt jako truthfulness.

[85:24] speaker_1: Hele, tak já spouštím pět casů, jo, tady.

[85:30] speaker_0: Ok, to by mi asi pomohlo, kdyby pak někdo jako zrekapituloval ty kritéria, na základě kterejch mám jako vyhodnotit, jo, tohleto je příklad pro, pro eval, no. Pořád jsem v tom zmatenej. Ten můj mentální model není uptajtovanej na to. Eh, co jsou ty casy v m-v mých případech, no.

[86:02] speaker_1: Tak k tomu rychlejš, v tý kvalitě transkripce píše mi, že to není, eh, že to není pro smyčku, protože neiteruješ. Ty vlastně jenom jednorázově srovnáváš modely, ale nestavíš žádnej jako algoritmus, nestavíš žádnou optimalizaci. Kubo.

[86:19] speaker_3: No, nestavíš.

[86:21] speaker_1: Proč že to není vhodný pro smyčku? Protože neiteruješ. Prostě je to jako srovnání. Máš, máš nějakou sadu jako transkriptů nebo že jo nahrávek a transkriptů. A ty srovnáváš jak jako jednotlivý modely, jak performují oproti tomuhletomu.

[86:39] speaker_3: Ale nevylepšují, nemůžeš-

[86:40] speaker_1: Ale nemůžeš-

[86:41] speaker_0: Nemůžeš, jako že by nemůže-

[86:43] speaker_3: No jakoby ta tvoje vylepšení je, že si vybereš jeden model.

[86:46] speaker_1: No jasně, ale to, to vidíš na tý prostý statistice, že jo. Jakoby připravil jsem testovací sady, nechal jsem si vygenerovat nějakej kód, kterej to projede a vlastně a, a dá mi, musím si napsat eval, ten si musím napsat tak nebo tak, že jo. Jo, jakoby jak vlastně, jak vlastně ohodnotit tu přesnost v podstatě.

[87:05] speaker_3: No.

[87:05] speaker_1: Jo?

[87:06] speaker_0: A není tam ten eval máš?

[87:09] speaker_1: No to jo, ale ten je jenom jako, není to ten trénovací, není to ten, pomocí kterýho se snažíme najít toto řešení.

[87:16] speaker_3: Jasně, to jo.

[87:16] speaker_0: Hele, to je zajímavý, že já to právě vnímám jakoby to je jenom test, že jo. To je vlastně jenom jako green, green, green light, red light, že jo? Něco jako test driven development. Ten nepotřebuješ jakoby nějak iterovat.

[87:27] speaker_1: No ale není binární, není binární dobře, špatně. Je tam jako nějaká, jako precision toho překladu-

[87:33] speaker_0: No jasně.

[87:33] speaker_1: -si jako nějak vyhodnotíš.

[87:35] speaker_0: No jasně, ale vlastně ty můžeš cokoliv nebinárního překlopit na binární tím, že tam dáš nějakej threshold a ten pak řekneš jakoby green.

[87:41] speaker_3: Potřebuješ devadesát těch pěti procent.

[87:43] speaker_1: No jasně, ale jako-

[87:44] speaker_3: Má to víc míň.

[87:45] speaker_1: Tenhleten, tohleto je black box, nad kterým se musíš zamyslet. Co je to score?

[87:48] speaker_0: Není to iterativní.

[87:49] speaker_1: Co to vlastně, je to kreativní práce vy-jako vymyslet to anebo podle nějaký best practice vymyslet, jak to scorovat, jo?

[87:55] speaker_0: A není tohleto právě že to, co dělají, jakoby jak scorujou ty nový modely, není to vlastně něco podobnýho? Že jo, máš novej model, scoruješ ho v různejch jako věcech a ty to vlastně chceš scorovat v kvalitě transkripce.

[88:09] speaker_3: No.

[88:09] speaker_0: Že jo?

[88:11] speaker_3: Jo. To si počkáme.

[88:11] speaker_0: Jenom se snažím jako zmapovat, co je rozdíl mezi těma benchmarkama, tím scoringem modelů versus evaly. Jo a-

[88:18] speaker_3: Tak jako eval je evaluation od slova, jako že vyhodnocuješ.

[88:21] speaker_0: No jasně, ale tady tohle je ta machine learning smyčka. Tady nemáš co učit, nemáš co, co měnit.

[88:29] speaker_3: Že bych to zpřesnil, že se nebavíme o evalech, ale konkrétním typu evalů, který jsou-

[88:32] speaker_0: Na smyčku.

[88:34] speaker_3: Na smyčku.

[88:34] speaker_0: Jo jasně.

[88:35] speaker_1: Který jsou o hledání toho řešení. Ty neznáš to správný řešení, ty znáš ty výsledky. A ta smyčka, ta smyčka se k nim snaží dobrat. A celý to závisí na kvalitě toho evalu. Shit eval znamená shit prostě jakoby ten, to řešení.

[88:49] speaker_0: Tohle je víc podobný tomu, jako když si napíšu tu vlastní user story a řeknu tomu evalu, jak si to, jak to nascoruješ vlastně, že jo, to je podobnější. To není o tom, že já budu iterovat s různejma věcma, on mě to bude jako evaluovat, ale to jako one shot vlastně, že ne?

[89:08] speaker_1: Proč by to, to tvoje není one shot.

[89:11] speaker_3: To tvoje, to si zlepšuje ten prompt, že jo.

[89:13] speaker_1: Tam si ten prompt měníš, ty tam měníš ten prompt.

[89:17] speaker_0: Rozumím. Já jsem myslel o tý, o tý, o tom, o tý meta evaluaci, že napíšu prostě vlastně nějakou jako svoji ideální story a pak nechám ten eval vyhodnotit, jak mi ho scoreuje ten scorovací. Tak to mně připadá podobný tomuhle tomu. One shot vlastně. No.

[89:33] speaker_1: Ano, jo jo, jakoby ten postup stavění toho evalu je stejnej. Ty si musíš vymyslet, jaký kritéria budeš a jakou váhu třeba budou mít při hodnocení toho výstupu. Jo, a v tom je to podobný. Takže bod dva optimalizace promptu pro Radkovy user stories. Smyčka je dobrej, dobrej, jakoby jako, je to vhodný pro ten nástroj. Artefaktem je prompt, ne kód, že není to deterministický. Je to jako optimalizace toho promptu.

[90:00] speaker_3: Jo.

[90:01] speaker_1: Jo? Ground truth pět až deset dvojic zadání kontextu user story tak, jak by ji Radek napsal, musí je napsat Radek sám ručně. Tohle celé už ke klonu nebo podle něho jako ve, jako approbovat nějakou, kterou, kterou si zvolíš. Podle něho nemusí být jako čistě napsaná od nuly ručně, jo.

[90:17] speaker_0: Jaký říká ty čísla? Pět až deset čeho?

[90:20] speaker_1: Dvojic, párů.

[90:21] speaker_0: Párů jako zadání a výsledek.

[90:23] speaker_1: Kontextu a výsledek.

[90:24] speaker_0: Jo.

[90:25] speaker_1: Hmm, eval, tady to bolí. Píše to jako Radek je subjektivní. Dvě cesty. Rozbij Rad-Radkova kritéria na kontrolovatelné body, jo. Má akceptační kritéria jako nějaký bla bla bla bla bla.

[90:39] speaker_3: Jo.

[90:40] speaker_1: A nějakej checklist score vlastně jako aby z toho vypadlo to číslo.

[90:44] speaker_3: Jo.

[90:45] speaker_1: Anebo LM as a judge s Radkovými pravidly.

[90:48] speaker_0: Judge, to jsem viděl to slovo. No jasně.

[90:51] speaker_3: Tomáš má ten skill v sobě za-zahrnutý, že mu pomůžeme designovat ten, ten eval. Podobně jako ty jsi třeba-

[90:57] speaker_1: To je jeho jako hlavní jako use case pro tohle vlastně. Ty přicházíš s problémem, jo, a lidi pomůže se v tom zorientovat a připravit ten eval.

[91:06] speaker_3: Dají ti otázky podobně třeba jako ten prompt, co jsi nám dal, ty zadání a to všechno. To je dobrý.

[91:12] speaker_1: Meta eval je kriticky důležitý. Dej evalu jednu Radkem schválenou story a jednu schválenou user, musí je rozlišit. Když je nerozliší, celé kritérium je null and void.

[91:21] speaker_0: Hmm, jasný.

[91:25] speaker_1: Může to spadnout, eh, riziko je, že to může spadnout do subje-do subjektivní metriky. Radek to ustojí, jen když svoje, to svoje správně umí rozsekat na nějaký body, umí to nějak charakterizovat.

[91:35] speaker_0: Jako dokáže to rozdělat na nějaký konkrétnější věci, ale spousta z nich je takovejch opravdu spíš vaj-vaj-vajejících, no. A ty musí rozlímit, no.

[91:44] speaker_1: Já bych se možná zeptal, jestli by to nedokázal postavit sám s tím, že kdybych to neuměl postavit sám, tady ten eval, jako ani nad tím přemýšlet, jak to vlastně rozříznout, jak bych ještě postupoval. Tak že bych si v těch stovkách bych si highlightoval věci, který mi ceny nejí vlastně. Nebo naopak-

[91:58] speaker_0: To dělám, no, to dělám. Já mu říkám občas prodi minulý sešny a prodi, co jsem tam nejvíc kritizoval jakoby.

[92:04] speaker_1: No vlastně a postavit z toho ten eval, že jo. Říct hele, takhle já hodnotím, co je dobře a špatně. Pomoz mi postavit pomocí toho eval. Trojka, query z výstupů z coding agentů. Honzova nespokojenost s kódem. Nejtěžší úloha ze všech a nejspíš past. Kvalitní kód je fuzzy, subjektivní, mnohorozměrný. Honzova nespokojenost je za tuhle pocitová metrika. Jo, takže tady to je jako asi-

[92:28] speaker_7: Ale já si myslím, že stejně jako já by tam Honza mohl identifikovat konkrétnější jako věci, který by chtěl zlepšit.

[92:35] speaker_1: Jo, přesně.

[92:36] speaker_7: Jakoby mě třeba štve, jak kód píše prostě verbose komentáře v kódu a to se dá jakoby zpřesnit jo a aspoň potom v těch pull requestech prostě tohle to bude lítat poměrně.

[92:47] speaker_1: Ale je fakt, že ten lín by se mohl zaměřovat jenom na konkrétní aspekty.

[92:51] speaker_7: Jo, jo, jo.

[92:51] speaker_1: Že bys mohl nechat jako standardní prompt a jenom říct třeba: „Nejsem spokojenej s testama, měl by bejt takový, takový, takový, takový, já nevím, něco.

[92:59] speaker_7: Ano, ano.

[93:00] speaker_1: A vlastně zkoušet, jestli jenom jestli-- ale je to zase hrozně těžký v tom, že budeš umět hodnotit jako případný negativní impact do jiných oblastí. Jo, chápeš? Jako že ty můžeš ten prompt optimalizovat nějakým způsobem a ono ti to může klidně potichu kurvit jako ty ostatní.

[93:14] speaker_7: Jo.

[93:14] speaker_1: A nebudeš to vědět, jo.

[93:16] speaker_7: Jo, ale aktuálně u tý absolutní věci, že tam mám vykřičník, nikdy prostě nedělej tohle a on to furt někdy ignoruje, jo, tak prostě třeba je to na špatným místě nebo něco tohle, tak to je o tom, že to spíš pro mě, že nebo to tam napíšu třikrát do toho jednoho agent MD, protože mám pocit, že vždycky na to zapomene. Tak tohle třeba vyoptimalizovat, kam to teda napsat nebo jak to psát, aby to fakt slyšel.

[93:39] speaker_3: Ale tohle přece taky není na smyčku, ne? Tam je to prostě-- nebo nevím.

[93:43] speaker_7: Ale tak není to tisíc iterací, jo, tak jako může to bejt pár iterací, kdy to vyzkouší různý věci, ale možná to nepotřebuje tenhle robustní framework, jako.

[93:52] speaker_3: Já v tom nevidím tu možnost, jako že, že se na základě nějaký iterace přibližuješ k tomu optimu, že pokud to je jako nechci tam mít tohle.

[94:01] speaker_7: A tak jako je to v nějakým procentu případů, že jo. Tak jako pokud je to třeba nechci mít verbose komentáře, tak pořád, co to je verbose komentář? To prostě můžeš to tak. Vždycky mi ohodnoť na nule do jedničky, nevím, jak moc ukecaný komentáře jsou a já to chci mít na těch, těch sto příkladech co nejoptimálnější prostě.

[94:24] speaker_1: Hele, můžu, můžu dál?

[94:26] speaker_7: Jo, pojďme dál, pojďme dál.

[94:28] speaker_1: Ladění inference serveru. BIOS GPU model. Legální jako smyčka je super, ale je to jako jiná kategorie vlastně, že jo. Ten artefakt je ne kód, ale sada nastavení. A tak ground truth, zvláštní případ. Tady správný výstup nejsou labely, ale naměřené metriky ze daného nastavení. Ground truth je spíš měřicí protokol než dataset. Eval. Máš to hezky rozmyšlené. Latence do prvního tokenu, throughput, success rate, tool calling a podobně. Háček je, že to je vícekriteriální. Musíš tři čísla složit do jednoho skóre nebo jedno optimalizovat a zbytek dát jako constraint. Jo, že jako bude to mít prostě, jako budeš optimalizovat tokeny za sekundu a ten rate, ten success rate nebude menší toho tool callingu než x třeba. Jo. A pozor na stabilitu metriky, throughput a latence kolísají podle zátěže, teploty, cache. Každé měření z průměru třeznic běhu, jinak smyčka bude vnit šum. Meta Eval-

[95:29] speaker_3: Nastavil bys to potom.

[95:31] speaker_1: Jo jo, Meta Eval ověř, že značně horší konfigurace dostane znatelně horší skóre a rozdíl předběžný. Poznámka iterace je drahá a pomalá. Restart serveru ne v mikrosekundě, míň iterací, každá dražší, jiný režim než RFC. Mně to teda nepřijde jako, jo, vlastně, že, že když to není jako, to tě nebude stát LL time tohle, tohle klidně můžeš nechat hodinu běžet. A když jedna smyčka bude trvat prostě deset minut, jo, tak ti to vůbec nevadí.

[96:00] speaker_7: A tam to je asi o tom množství, že jo. I při tom tréninku jde právě, že když-- proč u některých tréninků je důležitý to, aby běžely opravdu mnoho, mnoho, mnohokrát a tady ti to nevadí a vlastně ti nevadí ta latence.

[96:13] speaker_1: Podle mě to není fuzzy, podle mě se soustředíš na tři jasný kritéria, jo. A prostě on má padesát parametrů, který, který může ladit. Dělá si na ty nějaký strategie, který chce jako, jako o které se chce pokoušet. A ty prostě nyní změní to, projede tu sadu, protože ty to potom ty děláš tu inferenci proti tomu modelu, že jo. Takže on vlastně bude pouštět Python kód, kterej vezme nějakou sadu nějakejch instrukcí, nějakejch promptů, jo, a vlastně pustí je proti tomu lokálnímu serveru, že jo. To je zadarmo tohleto. Ten Python kód běží zadarmo, že server je tvůj, ty ho jako už ho máš koupenej, prostě-

[96:47] speaker_7: Ale trvá to. A nevadí ti, že to trvá, protože on nepotřebuje tolik iterací.

[96:52] speaker_1: To nevíme, že jo. Jako samozřejmě, že kdyby se ukázalo, že těch iterací je tisíc, tak pak můžeš narazit na to, že ta optimalizace bude trvat tejden a to je pro tebe nepřijatelný. Ale to já nevím.

[97:00] speaker_7: To úplně může být běž si měsíc a pak mi řekni, ne?

[97:03] speaker_3: No já s-se myslím, že on by třeba kdyby měl prostě vyplivnout padesát konfigurací, který chce vyzkoušet, který mu připadaj jako top a ty se vyzkoušej a pak se všechny oskórujou.

[97:14] speaker_1: To bych takhle nedělal, protože už mu vlastně dopředu zabíráš cesty, protože používáš jako, eh, nepoužíváš tu statistiku k tomu, abys to ladil, ale používáš vlastně jako názor LLM na to, jak by ta konfigurace měla bejt postavená. Takže já bych mu nechal úplně volnou, volnej výběr prostě v tom. Nechal bych ho, třeba bych tu strategii řešil tak, aby jako zkusil se zaměřit na parametry, který se daj eliminovat z toho, abys neladil padesát parametrů, ale zjistil: hele, tady těch deset, jako ovlivňuje výsledek tak hrozně málo, že s nima nemusíme jako, že tu kombinatoriku s nima nemusíme dělat a tím si jakoby zrychlíš.

[97:49] speaker_3: Kombinatorika s nima nemusíme dělat.

[97:51] speaker_1: Jo, tím si vlastně zrychlíš jakoby průběh tou smyčkou. Nebo ne průběh, ale z-z-zmenšíš si počet kombinací, který máš projít.

[97:57] speaker_3: A možná, když já mu předem dám padesát konfigurací, tak, tak to je moc deterministický, aby v průběhu vymejšlel, že vlastně dostane výsledek jedný konfigurace a pak se rozhodne, jestli zkusí úplně jinou, nebo jestli ještě mikroladit, doladit tohle.

[98:10] speaker_1: Jo, jo. A v tom je pak dobrej ten fenom, ta fenom strategie, že, že vlastně každé to silo, že vlastně tady máš nějakýho mastera a ten, a ten jede jednotlivý jako celý tyhlety unity, že jo. Takže ten unit říká prostě: hele, jako jo, zaměřujeme se na nějaký řešení. Nebo ani nemusíš, prostě může to nechat ladit jako samotnýho. A tam právě řešíš, že tam-

[98:34] speaker_3: Necháš běžet den a-

[98:36] speaker_1: Ty to nemusíš právě nechat běžet den. Ty, ty to necháš běžet pět iterací. Jestli ti jedna trvá deset minut, tak to je padesát minut a pak uvidíš ten climb, jak to jako leze směrem k tomu, k tý stovce. A buď, buď, buď vidíš, že to opravdu jako ukrajuje a má to jako z čeho brát tu kombinaci a zkoušet ty výsledky, jo, anebo, anebo tu cestu třeba zaříznout a bude zkoušet něco jiného, jakoby jo. Takže jo, tady nemusíš to nechat běžet tejden, abys zjistil, jestli, jestli dokáže jako lézt po tom gradientu, po tom, jo.

[99:08] speaker_3: Čtrnáct dní, než to, ty vole, tys to měl-

[99:11] speaker_1: Jdeš na to, co? Let's go!

[99:13] speaker_3: No, já tohle vyhodnotit chtěl tady přesně v těhle-

[99:17] speaker_1: Tak a potom teda pátej bod je optimalizace SQL dotazu na rychlost. Hm, on, on říká, že to je jako podle toho pří-, tý přílohy C, co jsem tam dal, že to je, že to je past, protože, ehm, protože je tam právě to, že když ten běh spustíš několikrát to SQL, tak to tam může mít zkešovaný prostě a tak dále jakoby jo. Ale, ehm, podle mě eval, tady to padá, rychlost běhu kolísá podle cache zátěže plánovače, metrika není stabilní, meta eval neprojde čistě, jo. A já bych to rozhodně zkusil. Ale on tady říká, že máš stabilní proxy, že tady máš jako místo wall clock času měř stabilní proxy, počet čtených bufferů, řádků s explain analyze a cost plánovače. Je to deterministické, cache nezávislé. Tím se z pasti třista, ale jakoby správná smyčka. Jo, jestli si rozumíme, že vlastně nebudeš spoléhat na to, že změříš procesorovej čas nebo jakoby jenom čas toho doběhu jakoby request, request, response time, ale že budeš měřit jako reálnou práci, která se tam uvnitř jako bude dít vlastně, jo.

[100:18] speaker_3: Ale když si dal úkol, co říkal ten příklad, tak je třicet vteřin a když ten dotaz vždycky běží třicet vteřin.

[100:24] speaker_1: Takže já si taky myslím, já bych to taky vyzkoušel určitě. Mě by samotnýho zajímalo, i když mě tady od toho odrazuje, jako jak si poradí s tím SQL dotazem, aby měl stejný výsledky, jo, a, a třeba to změří, stáhne na pět vteřin a pak ty vole, jako to je tak jasně měřitelný. Tady se nebavím o tom, jestli to je pět celých pět nebo pět celých dva. Tady se bavíme o jako řádovém zlepšení toho dotazu, jo. A pokud je tohleto jako zadání vlastně, tak mi to přijde úplně v pohodě a já bych to zkusil, jo. Pokud ladíš jako z milisekundy, tak pak opravdu chápu, že, že to je přesnost, kterou nemůžeš tím clockem jako změřit, nebo bude tam, jako bude tam šum.

[101:02] speaker_3: A můžu tě prosit ještě jedno? Exaktně nazvat ten jsem druh evalu, iterativní eval jako i loop, jak jsme to řekli.

[101:08] speaker_1: Je to-

[101:09] speaker_3: Pro vývoj softwaru ještě to jako nazvat.

[101:12] speaker_1: Já se tady zeptám, jo?

[101:13] speaker_3: Ono je zase hodně-

[101:14] speaker_1: Ptají se mě, jak přesně se jmenuje tento druh smyčky. Jak bys to pojmenoval, aby to spadalo do standardní terminologie v machine learningu?

[101:28] speaker_3: Obrat handle na věci, jasně pojmenovaný, aby to hezky zapadlo do- Word gaps.

[101:40] speaker_1: Cože?

[101:40] speaker_3: Word gaps.

[101:41] speaker_1: Jak?

[101:42] speaker_3: Word gaps. Prostě na, na, na pracionalistickym eval tam dosud slyšel, ne?

[101:50] speaker_1: Ne, nebyl.

[101:52] speaker_3: Jo aha.

[101:52] speaker_1: Nebo počkej, ano, byl. A co je word gaps, připomeň mi.

[101:56] speaker_3: Cícha.

[101:57] speaker_1: Cícha.

[101:57] speaker_3: No, to je když potřebuješ prostě na nějakou, nějakej pojem si dát jasný pojmenování-

[102:02] speaker_1: Exactly.

[102:02] speaker_3: Aby byl dobrej handle.

[102:03] speaker_1: Exactly.

[102:04] speaker_3: A po něm jít, jinak se vždy- se vždy to slovo je úplně jinak, když to máš-

[102:08] speaker_1: Proto já tady chytám ty terminologie, eval-

[102:10] speaker_3: Jo, dáš to do-

[102:11] speaker_1: Binární fuzzy, jakoby snažím se pojmenovat jednotlivý koncepty, protože bez nich sem odcházím prázdnej, no. To je přesně ono, word gaps, dík, že jste připomněli. Můžu teda tady to poslední vám tady říct, jako nemá to jedno klarovinské jméno. Hm, je to jako několik věcí dohromady. Mechanika smyčky, co se děje, je hill climbing, iterativní optimalizace, jo, lezení do kopce na skóre, prostě. A obecněji je to optimalizace přes černou skříňku, black box derivative free optimization. Nemáš, jo. A ten eval, co to je? Je to v optimalizaci, je to objektivní funkce. Je to prostě funkce, která dokud jí, když já řeknu nějakej vstup, tak z ní vyleze nějakej výstup. A v evolutionary optimization je to fitness funkce, to já netuším, nejsem školenej a v reinforcement learning by to byla reward function. Jo, ta funkce, co jako vlastně poskytuje tu reward tomu, tomu, tomu.

[103:08] speaker_3: A to se jmenuje objec-objective.

[103:11] speaker_1: Objective function, jo. Objektivní funkce.

[103:15] speaker_3: Jo, okej, mně dnes padla-

[103:16] speaker_1: Moderní literatura tomu říká LLM guided evolutionary program search nebo eval driven code generation. Konkrétní referenci, kterou můžeš pojmenovat, je Deep Mind Fun Search a Alpha Evo, LLM evolutionary smyčce řízení evaluátorem, přesně tím pattern.

[103:39] speaker_3: Ehm.

[103:39] speaker_1: Není to učení v machine learning smyslu. Váhy modelu se nemění, nic se netrénuje. Je to hledání optimalizace v prostoru artefaktů, kódu, promptu, konfigurace, ne parametrické učení.

[103:49] speaker_3: Ehm. S tím, že my ovšem potom budem taky dělat nějakej, nějakej fine tuning modelu, takže ten to asi potřebuje taky. Tak jo.

[104:02] speaker_1: Hele, tak teďko bych potřeboval s váma jako poradu, jak teďko uchopíme ten zbytek toho času. Eh, kolik, že jo, máme ten poslední půlhodinu máme určenou na prezentaci, která ale předpokládá, že jsou různý skupiny, jo, protože je vlastně otázka, jestli my bysme byli jedna skupina, jestli máme si co prezentovat, protože jsme to tady všichni jako nějak předávali, možná zesumarizovat, ale to není úplně prezentace. Ty ostatní, co nedělaj eval, budete mít něco k prezentaci? Budete chtít něco jako předávat skupině? Nebo si prostě jedete svoji věc a, hm, a ne-nemá to jakoby přesah na tý skupině?

[104:36] speaker_3: Rozpište.

[104:38] speaker_1: Okej, je to čistě kvůli tomu, jestli ten prostor je jakoby pro tu eval skupinu a anebo, nebo chcete mít, mít svůj prostor na prezentaci.

[104:46] speaker_0: Jako on se aktivně sdílel, ale jsou to asi drobnosti, no. Nic, nic takhle opravdu důležitýho ten prostor nevzdám.

[104:52] speaker_1: Okej.

[104:52] speaker_0: Ale já bych to rád viděl.

[104:53] speaker_1: Já to můžu ukázat.

[104:54] speaker_0: Mě to taky zajímá.

[104:56] speaker_1: Okej. Dobře, tak potom bych navrhoval, že bysme si třeba dvacet minut z toho prezentačního času ještě ukousli pro ten eval. A, eh, ti, kdo z vás, kdo mají vlastně, jako, ehm, myslím si, že všichni, kdo jste přišli s nějakýma příkladama, určitě toho SP, SQLka, tak by stálo za to si nainstalovat ten Skill, dropnout ho prostě jenom do clouda a začít s nim pracovat. To znamená předhodit to, předhodit mu to svoje téma a zeptat se ho, jak budete jako pracovat. On je prostě chytrej, jo, jak jako může tím se projet, tím, tím, tím postupem a začít s ním vlastně formovat tu úvahu nad tím evalem. To znamená, jak třeba by měl vypadat ten tvůj s tím, s tou, s tou GP optimalizací nebo s tou optimalizací konfigurace, jak, jak bude fungovat ten svůj s těma promptama. A když tomu věnuješ prostě půl hodiny čistýho času, že s nim budeš diskutovat o tom, o tom eval vlastně, jak ho jako postavit, jak postavit ty data, tak se někam posuneš. A mě by pak zajímalo, jako kam jste se dostali prostě. A jestli to jako jde, nebo jestli vlastně přišel ready to spustit nebo potřebuješ data, abys to spustil. Nebo víš jako jak, jak to bude vlastně, jo? A jakmile tomu dodáš ty data a s-shodnete se na tom evalu, tak zmáčkneš jenom Enter a všechno ostatní se děje samo.

[106:09] speaker_3: Já to teďka nemám vyloženě na čem pustit úplně tuhle, takže bych se do toho nepouštěl a vyzkoušel.

[106:14] speaker_1: Jasný.

[106:15] speaker_3: Ale mohu si nad tím zabrainstormovat. Případně nabízím, že bych se přidal k Radkovi, kdyby chtěl do toho jít parťáka, protože tohle je obecně užitečný tok pro všechny, že jo.

[106:24] speaker_0: Já to, já to vyzkouším na tý svý věci, určitě by to dávalo smysl.

[106:28] speaker_3: A pokud budeš potřebovat pomoc nebo to-

[106:30] speaker_1: Obojí je v pohodě. Obojí je v pohodě, no.

[106:33] speaker_0: Myslím, že budu mít spoustu dotazů. Myslím, že budu mít spoustu ujasňování si těch konceptů a uvidím, když to budu mít na někoho.

[106:42] speaker_1: Hele, do čeho bych měl dávat, m-mám pro to eval založit jako novej kanál ve Slacku nebo kam to mám jako dát, aby to ne, ne-nespamovalo kanály, třeba kam to nepatří? Máš nějakej jako tip nebo tip?

[106:54] speaker_3: Založ jako konverzaci s náma jako-

[106:57] speaker_1: Mně by to přišli škoda, že kdyby někdo se do toho chtěl podívat potom, tak vlastně by mohl jako, no.

[107:01] speaker_0: Hm.

[107:03] speaker_1: Já-

[107:05] speaker_3: Nemáš preference?

[107:06] speaker_0: Já i-

[107:06] speaker_3: Nebo Fred?

[107:07] speaker_0: Mně je, mně je to jedno, pokud to nebude zaplavovat tady ty kanály. Já jenom jsem skeptickej k tomu, někdo bude chtít přijít a koukat se na to, co jsme probrali já. Ale to je možná moje jenom nějaký ten-

[107:17] speaker_1: Okej.

[107:17] speaker_0: Ale klidně založ, jestli, jestli to potřebuješ, tak založ kanál.

[107:20] speaker_3: Ano, v Slacku, kde se to všechno bude míchat.

[107:22] speaker_0: Jo, ale kanál, kanály jsou taky zadarmo, že jo?

[107:27] speaker_3: A pak kolikrát se taky bude tohle přehazování někam do svým kanálu, nebo že se nebudeme.

[107:33] speaker_1: Já bych tomu dal nějakou expiry tomuhle prostě a-

[107:36] speaker_0: No jasně, jo. Teďka se taky nějak deaktivovalo, že jo.

[107:39] speaker_1: No, no, no.

[107:39] speaker_0: Pojďme dělat kanály, ale tak jenom jako dnes.

[107:44] speaker_1: Tak jo. Já potřebuju jenom pauzu na pět minut, takže integrovat. Radku, víš kolik ti songů je vlastně za den?

[107:55] speaker_0: Počkej, nech mě.

[107:56] speaker_1: Ani hádám, protože mě skrtíš.

[107:57] speaker_0: Počkej, nech mě, nech mě. A řekl bych-

[108:01] speaker_1: Kolik je jich vytvořenejch?

[108:02] speaker_0: A jako specifikací songů nebo i variací různejch takovejch?

[108:06] speaker_1: Jsou i variace, já neznám ty mashupy a tak, ale songy taky byly alternativní verzi, extreme verzi pro jako pro hardcore players a taky občas jsou kids verze. A taky to jsou lokální regionální jako nějaký čínský hity, že jo a takovýhle věci.

[108:18] speaker_0: Sedm, ne. Šest tisíc tři sta.

[108:22] speaker_1: Míň.

[108:24] speaker_0: To pak tisíce.

[108:26] speaker_1: Tisíc tři sta až tisíc čtyři sta zhruba, no.

[108:28] speaker_0: To není tak moc.

[108:29] speaker_1: Ty jo, já jsem překvapenej naopak, že když když seš v tom interface na YouTube, tak mám pocit, že vybírá vždycky ze stejných třiceti prostě. Jako vím, že když tam měl jako kolegy, byly stovky, ale čekal jsem, že to bude jako tři a čtvrt.

[108:38] speaker_0: Já jsem myslel, že jich bude hodně, protože tam na YouTube nikdy nevyskočil ty, který jsme z těch dvou sérií dvou roků jako v rád-- vlastně hráli s holkama. Ani jeden.

[108:49] speaker_1: Okej.

[108:49] speaker_0: Takže jsem z toho měl představu, ok, tohle je fakt big, no.

[108:53] speaker_1: Jasně. No a když si to takhle napíšeš, tak prostě jako první se naučí hrát Firework. Pak ti to začne hrát, nevím, něco. To je strašně-

[109:03] speaker_0: Takovej potenciál.

[109:05] speaker_1: Potenciál. Naučíme se nějaký čínský.

[109:11] speaker_0: Existuje nějakej eval na dance moves? Tam je podle mě problém délky smyčky a množství zvolené energie.

[109:23] speaker_1: No takhle, jako co chceš měřit tou energií?

[109:25] speaker_3: Kdybys tam měl robota, kterej by tam, by tam něco asi mohl ty integrovat roboty.

[109:31] speaker_0: Ne, to jsme zkoušeli taky. Eh, no. Hm.

[109:46] speaker_3: Končíme ve dvanáct?

[109:47] speaker_0: Hm. Nebo půjdete na oběd?

[109:52] speaker_1: Jo. Chcete kávu někdo ještě, když tady stojím u kávovaru?

[109:58] speaker_0: Už není.

[109:58] speaker_1: Už není, jo? Aha, tak chcete kávu vy. Tak už nedojdete.

[110:38] speaker_0: No tak jsem si zas jakože potřebuju APIčko pro YouTube, abych si tam naházel linky a najednou ten interface není chatovací okno a já jsem úplně ztracenej.

[110:46] speaker_5: Ty vole, vždycky přesně už, už jak to mám tohlety uvolit a pak zaseknu, jak se dostanu k APIčku. Fakt tři hodiny tam-

[110:54] speaker_0: Já s tím jako Google tady tím hrozně bojuju vždycky. Ach. Nerád mluvím.

[111:01] speaker_5: Víte, že se točil video na, na v budoucnosti UI, kam to směřuje Generative UI a tak. Slyšel, slyšel jsi, slyšel jsi něco o tom?

[111:09] speaker_0: Já jsem zavřenej ve svý kopce.

[111:12] speaker_5: Tam právě pro nás je to jak jako by, máš tady ty specializovaný interfejsy na hodně složitý věci, který hodně, hodně mají submeníus, jakoby nevím kolikrát šest, sedm úrovní submeníus. A pak máš tu druhou stranu, máš to chatovací okno, kde máš jenom jednu bublinu a teď do něj zkoušej zavést takový Starbucks najednou, že možný je prostě, že máš chatovací okno, aby sis objednal kafe, ale má jsi jako zhruba třeba desetkrát, dvacetkrát víc věcí v tom interface. Teď jako je jiný ten zadek step mezi tím, že potřebuješ ty fyzický tlačítka tam, kde fungujou, ale to, co bude tady tobě, to nefunguje. A co je mezi tím? A to video mluvilo právě o tom, že to tak rychlý není, ale že by to mohlo bejt právě to, že ty máš nějaký konkrétní věc, co s tím potřebuješ udělat a oni ti to na, na míru v tu chvíli na místě vygenerují interface, ve kterým to můžeš udělat. A to fyzicky-

[111:56] speaker_0: To teď jakoby vlastně který dialog dál jedeš.

[111:58] speaker_5: Tak tady máš.

[112:00] speaker_0: To byla, to byla užitečný slova, jakoby akorát jsem je zapomněl, že ti vygenerujou vlastně ty nějaký hejblátka.

[112:10] speaker_5: Jo jo jo jo, přesně. Když skutečně používáš, chceš něco od modelu vizualizovat, jak funguje skládačka, nebo když vygeneroval nový plán, tak to je přesně ono.

[112:17] speaker_0: Jo.

[112:18] speaker_5: A vlastně to je to, co dělám já, že asi jako teď prostě teďkon rád dělám interface na míru na konkrétní jako věc.

[112:23] speaker_0: Jasně.

[112:26] speaker_5: Ale to by jako byly ještě rychlejší, že buďto můžu takhle teleportovat do toho, ne?

[112:33] speaker_0: Já nevím.

[112:33] speaker_5: Už jsi někdy zkoušel Sonnet pět?

[112:35] speaker_0: Já jsem ho zkoušel včera no. A nebylo to špatný. Chvilku jsem dokonce zapomínal, že nemám nic s okusem, ale dělal nějaký, nějak jako víš co, to je nějakej můj fuzzy eval. Ale udělalo to, co jsem potřeboval. Pak jsem měl vedle Fable a taky jsem jako vlastně neviděl rozdíl ani moc. Co to je? Tak jo. Poradil by mi někdo, jak tam dostanu tu eval, ten eval skill?

[113:35] speaker_5: Tak jak to teď řeším, no. Stáhnete si ho- Stáhnu si ho, rozzipujete ho a mělo by to bejt snad tady. Má, máte to už někdo rozzipovaný?

[113:43] speaker_0: Já tady mám, zdali se teď na to, kam jsem to stáhnul. Show in Finder. Ale spíš počkej, počkej. Jo no, přesně. Zaseknu se ale na tom, že nemůžu najít file, ty vole. V čem to je? Toto je, není to tady to téma. To jste posílal už někdy včera, viď?

[114:00] speaker_5: Jo jo, to bylo včera, no. Jo, ono to je ve vlákně, je to ve vlákně v těch tématech. Když si rozklikneš vlákno toho-

[114:06] speaker_0: Témata AI, jo jo, už to vidím, už to vidím. Já jsem to i lajkoval, ale-

[114:11] speaker_5: Okej.

[114:13] speaker_0: To je takový nepřehledný.

[114:14] speaker_5: Skill. A tohle celý, tady to, ne, nahoru, nahoru, nahoru, ještě nahoru. Tak tady ten celej training loop dropneš do skillu.

[114:24] speaker_0: Tohlecto stáhnu.

[114:27] speaker_5: Pak musíš vzít adresář, kterej se jmenuje training loop a ten švihnout do skillu. Codevi.

[114:36] speaker_0: To nevím kde je. Tečka code.

[114:40] speaker_5: Do Codevi.

[114:41] speaker_0: Lomeno skills.

[114:42] speaker_5: Řekni mu instal mě skill tady máš.

[114:45] speaker_0: Jakože tady normálně do toho-

[114:46] speaker_5: Do tady přijdeš. Ty nepoužíváš Cloud Code?

[114:49] speaker_0: Používám.

[114:50] speaker_5: Tak, tak potom do Cloud Code.

[114:52] speaker_0: Když to dám tady a dám-

[114:53] speaker_5: Aha, ty nepoužíváš CLIčko, jo? Ok, tak-

[114:56] speaker_0: Jakože používám, no.

[114:57] speaker_5: Zkus to, hele, zkus to-

[114:58] speaker_0: Ale, ale vždycky nad nějakým projektem jako konkrétním nebo tak.

[115:02] speaker_5: To nevadí, tak ono má přístup i do celýho disku, že jo. Takže hele, zkus to klidně v tom chatu, zkus, jestli umí instalovat.

[115:07] speaker_0: Tady byste zkusil dát prostě přidám-

[115:08] speaker_5: Jenom já, já jsem, já, já nevím, jestli ten skill tady, jako rozhodně ho tady nemůžeš pustit, že to potřebuje rovnou Python a ten, ten jako podle mýho tady ten, tady ta apka to s tím nebude pracovat. Potřebuješ do toho Cloud Code. Udělal bych to tam. Otevřel bych si Cloud Code.

[115:24] speaker_0: Tam nikde najdu ten skill. Já tady vidím jenom-

[115:26] speaker_5: Půjdeš do těch AI témat, do toho kanálu, najdeš si to moje téma a je to ve vlákně.

[115:32] speaker_0: A ono se to sama rozpadalo asi, ne?

[115:35] speaker_5: Já nevím.

[115:35] speaker_0: Ok, asi tady je. To můžu nad tím rovnou se-

[115:44] speaker_5: Pak asi nej, nejjednodušší instalace bude pomocí Cloda.

[115:47] speaker_0: Hele, a když, když-

[115:49] speaker_5: Když ho pointneš jenom na ten zip, tak.

[115:51] speaker_0: No já můžu nad tím přímo spustit nad tou složkou, ne? Tadyhle, když, když mám ten training loop, tady, když tady znova počkám, teda spustím Cloud, ne?

[116:00] speaker_5: Můžeš no, klidně. Tady mu řekneš, že tato složka obsahuje skill a training loop.

[116:13] speaker_0: Co chci, nechci. Okey. V této složce jo?

[116:29] speaker_5: No, v této složce je skill trainingu, nainstalujeme ho do globálního skillu. Zeptá se tě na pár permissions a hodí ti to tam.

[116:48] speaker_7: Domain skillů jsi říkal? Ne.

[116:50] speaker_1: No, no do globálních skillů. Nebo nemusíš do nich logovat, že jo. Můžeš to globální skilly, ty jsou k dispozici ve všech projektech. Anebo můžeš chtít ho mít jenom třeba někde. To už je na tobě.

[117:01] speaker_7: Jo, dík.

[117:06] speaker_1: Tak já už jsem zase skoro připravený. Jakoby jestli k tomu chceš.

[117:11] speaker_7: Jakoby?

[117:12] speaker_1: Ne Kuba. Ale jakoby jestli chceš, tak-

[117:14] speaker_7: To nedělej, já jsem-

[117:15] speaker_1: Pojď, když to chceš třeba. Kuba si to měj dobře, já to-

[117:20] speaker_7: Už myslím si, že tady mám

[117:21] speaker_1: Pojďme a neberu vedle. Je tam, je tam místo. Máš vedle, že?

[117:27] speaker_7: Jo jo, je tam. Jenom tam nejsou židle, musíš si tam-

[117:30] speaker_1: Co to je?

[117:30] speaker_7: Musíte sedět. Tak co, tak už to mám. Nemám. Login. Co mám udělat?

[118:47] speaker_1: Ty jsi vyhodil do toho počítače nebo co?

[118:48] speaker_7: Ne, já jsem, eh, jakože, že já jsem vyhodil, že eval přesně budu chtít dělat kdyžtak na ten kód, ale že to je mega task a že to tady během těch dvaceti minut nezvládnu. Tak jsem si říkal, že si tady ještě navenkoudím nějakou blb-blbost a-

[119:02] speaker_1: Co záložku si děláš sendiri?

[119:04] speaker_7: Dělám sám.

[119:05] speaker_1: A co tam děláš na záložku?

[119:06] speaker_7: Jako jaký?

[119:08] speaker_1: Na kterou tam-

[119:10] speaker_7: No. Prostě naskenuješ. Pozná to, že to je rajec. Kofola, ne? Jo, Kofola ne, sice nám promítali, tak jakoby, hm.

[119:21] speaker_1: Olmo.

[119:22] speaker_7: A pak mlík. Eh, z Olmo. Tak.

[119:26] speaker_1: A co jsme se pak? Jakože-

[119:27] speaker_7: No tak jako já ať zadávám nebo kupuju, tak když kupuju, když kupuju, tak prostě tam jako namarkuju, co jsem koupil a když prostě odebírám, tak zase načtu a kupuju.

[119:39] speaker_1: Ehm.

[119:39] speaker_7: Tak jako tohle je ten skill.

[119:41] speaker_1: A jenom teda když to nakupoval, můžeš si dotahat ceny, jo?

[119:44] speaker_7: No tak to vlastně ani není podstatný, že jo. Tak my můžem, nebo jo, může to bejt takhle, že to natahuju někde z grafu nebo tak. Hm. Nebo to může bejt tak, zadat celej nákup, viď? A ty tam potom jenom zadáš třeba celkovou cenu za nákup. To asi jsou různý způsoby. Teď jsem to teda dělal tak, že prostě jednotlivě děláš ty položky, jo. Takže prostě tam naskenuješ, že teď jsi koupil deset mlík, prostě načteš jeden čárový kód, napíšeš deset mlík a ještě musíš napsat cenu za položku. Ale asi tohle by vyšlo nějak ještě lepší no, ale.

[120:17] speaker_1: Hm.

[120:17] speaker_7: Já si už myslím, ale si musím znovu zapnout.

[120:26] speaker_1: Ok.

[120:37] speaker_7: Výborně. Já posledních sedm procent.

[120:47] speaker_1: Doplněj. Vezmi okno.

[120:49] speaker_7: To je taková sračka, to není co. Si dám si jedno, teď ještě zas. Je tady totiž Kofola jako výrobce totiž bude. A, ok, tak to je správně. Jenom je to výrobce Kofola.

[123:26] speaker_4: Jay?

[123:27] speaker_8: No, co ty děláš? Bojuješ tam s tím-

[123:29] speaker_4: No teď bojuju s WhatsAppem, teď na teď, no.

[123:33] speaker_8: Kdybys chtěl, můžeme debatovat. Ale nechci to tady, eh, jestli chceš provozovat WhatsApp.

[123:42] speaker_4: Ne, to, to. Jaký?

[123:54] speaker_8: Hm, asi, asi se budu věnovat spíš tomu, tomu skillu.

[124:00] speaker_4: Zase jsem se nechal unést otevřeným oknem.

[124:45] speaker_8: Se ti podařilo dneska najít slovo?

[124:47] speaker_4: Eh, v task, jo jo. Bylo to poměrně restart a takže to udělám. Dělám si proto novej projekt, abych to měl jasný. To teď nemůžu sníst. Můžu to zas dát do terminálu, proč? Teď mám jsem se na chvilku.

--- Part 2 (09:44, 21m) ---

[00:00] speaker_0: Jako jo, ale jestli není lepší tam mít prostě tři zatýnka a jedno skoku, pět skoků a jedna devítka. Víš, že, že prostě dvakrát sedmnáct do desítky je, je horší než tam někde rozplazit to.

[00:11] speaker_1: To je pravda, no. Ale nevím, co tady je dvacet skoků jako, jaký jsou to sáňkaře.

[00:15] speaker_0: No to asi Rejza. Ne. Jo.

[00:19] speaker_1: To je sprostý, viď?

[00:20] speaker_0: Rejže ne. No já bych udělal-

[00:22] speaker_2: Rejže je kontroverzní.

[00:23] speaker_0: Budeme tady programovat. Bože, Rejže je kontroverzní.

[00:28] speaker_2: Jako jo, ještě.

[00:30] speaker_1: Hele, je čas na prezentaci a chci vám teda nabídnout, eh, nechal jsem tady vlastně udělat p-prezentaci, kterou tady Jarek hodně zkritizoval.

[00:40] speaker_0: Jo, protože je to zas klasika.

[00:43] speaker_2: Ale to je spíš ohledně vizuálu než-

[00:44] speaker_1: No jasně, tak to nebudu-

[00:47] speaker_0: Tak teď.

[00:48] speaker_1: Optimalizovaný. Takže vám nabízím, že, že tady shrnem ten celej, vlastně to celý, jako co jsme si tady, o čem jsme si tady dneska říkali. Jsou tam zpřesněný ty výběrový kritéria, ty filtry a je tam slovník pojmů, takže se v tom jako kdypak člověk může později jako z-zorientovat. A takže tomuhle můžeme dát tady deset minut třeba a pak se můžem mrknout na ty vaše výklady, jo? Tak jo, to je vlastně Čka. Takže kód nepíšeš ty, generuje ho AI, to je jasný. A tady je vlastně ten jakoby to schéma. M-mám nějakýho kandidáta, buď teda svýho, nebo mi ho vytvoří on, z-změří to tím pomocí toho eval, kterej si nadefinuju a hodnotí se nějaký skóre a na základě toho skóre on vlastně rozvíjí novýho kandidáta. A todle, todle opakuje a vlastně jako je to ten-

[01:40] speaker_0: Co je kandidát? To je strašně pro mě.

[01:42] speaker_1: Kandidát je nějaký to řešení, konkrétní řešení, které smyčka právě zkouší. Může to být kód, prompt, systémová konfigurace nebo natrénovaný model.

[01:50] speaker_0: To byly ty, těch tři věci, který jsme na začátku vygenerovali. To byli kandidáti.

[01:53] speaker_2: Ne, kandidát je to tvoje řešení. Takže ten tvůj prompt, vypumpenej prompt na to, jak ti má psát ten-

[01:59] speaker_1: Nebo tvůj základní prompt, ten kandidát má nějakej-

[02:01] speaker_0: Ale i to, co on pak iteruje, ne?

[02:04] speaker_1: No přesně no, on to změní, udělá novýho kandidáta, to řešení a měří jeho výsledek vlastně a podle toho, eh-

[02:10] speaker_0: Tímhle teď tohle chceš ohodnotit nebo zhodnotit.

[02:14] speaker_1: Tak. Takže jediný, co k tomu potřebuješ, je, eh, jako definovat, vlastně potřebuješ dvě věci. Potřebuješ definovat metr a potřebuješ mít tu testovací sadu, která patří do těch filtrovacích kritérií, vlastně jestli jakoby to, jestli máš, takže bla bla bla. Eh, smyčka vnímá jen to číslo. Smyčka hodnotí, vlastně s-smyčka se na kvalitu toho výstupu dívá pouze tím evalem, ničím jiným. Jo a je tady ještě jeden jakoby jeden pojem, což je holdout. A to je to, že ta, ta trén, ta sada těch dat, který ty jako vyrobíš, se rozdělí na ty trénovací a na ty testovací. A ta, ten, ten, kdo trénuje, ten kdo vlastně z, vylepšuje toho kandidáta, tak se nikdy nesmí dívat na ty holdout data, protože by se jakoby tím spolnul. Vlastně jemu musíš něco skrýt a ten, ten skill tohleto jakoby umí, vlastně ten to rozděluje a dělá, dělá tohleto, dělá tohleto za tebe.

[03:12] speaker_0: A co, co říkáš teďka za slovo hoda nebo co?

[03:14] speaker_1: Holdout, holdout.

[03:15] speaker_0: Holdout. Ok, jasný.

[03:17] speaker_2: Má to rozdělený na tři tam, nejsou tam ještě training data. To byly dvě.

[03:22] speaker_1: Potom je asi ten-

[03:24] speaker_0: Ne, ale-

[03:25] speaker_1: No a-

[03:26] speaker_2: A ještě něco, co jsem-

[03:26] speaker_1: Jo jo.

[03:28] speaker_0: No va-validace, jako používá se testovací a validační sada.

[03:31] speaker_2: No, tam by byly tři a ne-

[03:33] speaker_0: No jako trénovací, testovací, validační.

[03:35] speaker_1: No ve velkým ML se používá tyhlety tři, tady se používají dvě.

[03:39] speaker_2: Jo. Co ke rozdílu znáš?

[03:42] speaker_0: Že trénovací je to opravdu, na čem to děláš. Potom je to validační, který ti jako dává ty průběžný skóre a potom je to finální, jako aby se zase ještě nepřefitoval, tak ještě úplně taková finální.

[03:54] speaker_2: Já vím, vím, vím, rozdíl ještě.

[03:57] speaker_1: Tak, eh, takže tady jsou, tady jsou jednostupňová brána, čtyři kritéria. Gate nula je vůbec, jestli ti to v kontextu dává smysl, jestli si prostě nechceš pustit jenom jako prompt, jo. Filtr jedna, mám dostatečně headroom. To znamená, očekávám, jako na co optimalizuju. Chci optimalizovat SQL z třiceti vteřin na, na deset, tak je to velkej, velkej jakoby headroom toho, toho růstu, jo. Taky ty asi Radku očekáváš, že, že ta tvoje kvalita to roste nějak signifikantně, že to nebude prostě o procento nebo o dvě, jo.

[04:34] speaker_0: Já jsem jenom z matec těch novejch pojmů. Vlastně jestli chápete headroom, jestli mi to dokáže někdo, kdo na ten handle jako vysvětlit dostatečně.

[04:40] speaker_1: Headroom je to, kde seš dneska. Takže když vlastně, když pustíš ten eval na těch svejch promptech nebo ne, svůj, svůj prompt na těch výstzcích, tak se dostaneš někam. A jaký očekáváš, že je to jako to maximum. Jo, to je ten headroom, to je to místo, kam můžeš, kde můžeš růst.

[04:58] speaker_0: Že mám kam růst, jo nebo-

[04:59] speaker_1: No jestli máš kam růst. No jestli ten, jestli ta změna, kterou, která se jako děje, jestli čekáš, že dojde k podstatný změně.

[05:07] speaker_0: Okej.

[05:10] speaker_1: A jestli exaktně dokážeš kvalitu ověřit levně, jednoznačně a stabilně. Jasně, to znamená, jestli ten bloop tě nestojí prostě tisíc dolarů, když optimalizuješ na dolary třeba někde, jo. A jestli máš dostatek trénovacích dat, jestli dokážeš jako získat kvalitní datový dvojice za rozumnou cenu, jo, aby ten tvůj a, a jestli jich máš dosta, jako dostatek, což v podstatě je tohleto jakoby dohromady, tohle kritérium.

[05:40] speaker_0: Co by byly ty datový dvojice?

[05:41] speaker_1: Datová dvojice je, je vstup, výstup.

[05:44] speaker_0: Jo jo, a to, co říkal, říkal binární, tak to myslel tohle. Binární znamená dvojice vstup, výstup, protože tam-

[05:50] speaker_1: Já myslím, že jo. Kde bylo binární?

[05:52] speaker_0: No na mě mluvil o binárním něčem.

[05:55] speaker_1: Ne, binární je nula nebo jedna, že ten výstup je dobrej nebo špatnej.

[05:58] speaker_0: No ale já mám-

[05:58] speaker_1: A ten gradient, ten, to, co je mezitím, jako nula celá dva, nula celá dvacet pět, to je, pokud seš schopnej to rozší, to, toho dosít-

[06:07] speaker_0: Tohle chápu, jenom on tady na nás mluvil binárně. Já jsem nevěděl, co tím myslí.

[06:11] speaker_2: To strašný lístkování.

[06:12] speaker_0: No ale dobrý, takže jo.

[06:15] speaker_1: Dvojce. A potom tady je jak drahá je chyba, ale to nevím, jestli jako patří do filtru, no. A zbýš je prosím pak. Jo určitě, určitě. No a pak on tady jako rozvádí vlastně, já jsem mu říkal, že chci, aby to bylo obecný pro různý artefakty, který můžeš stavět nebo ty, ty, ty kandidáty, jo, jestli to je code, jestli to je prompt, jestli to je konfigurace systému nebo třeba i nějakej vlastní model. A on tady pak rozvíjí jako nějaký jako do detailu pro, pro ten danej to artefakt to jako nějaký, nějaký detailíčky, no. A tady je to vlastně rozvedený, jo, ty jednotlivý, hm, ty jednotlivý filtry, jo. Takže jestli máš velkej headroom, smyčka má svou podstatnou režii, příprava evalů, propálené tokeny na iterace, vyplatí se ti jen v momentě, kdy je propast mezi současným stavem a maximem dostatečně široká. Jo a když nevíš, jestli, jaký je to maximum, tak nevím, tak se musíš zeptat, jako nejsem si jistej, jaký je maximum a jak to můžu zjistit. Jo. A třeba u toho SQL to předpokládalo nějakou znalost domény, že jo, jako tušíš, že když S-SQL běží minutu, tak tušíš, že je možný, že bude běžet třeba půlku třeba, jo. Nebo možná taky ne, jo, ale jako máš z toho nějakej dojem, no. Tak, ehm, dokážeš kvalitu měřit levně, striktně a stabilně. Jednoznačně a tak. No hele, nevím, asi, asi bych to tady víc četl, než, než, než jako vás nějak dobře informoval. Ta prezka je udělaná tak, že ty pojmy jsou tady vysvětlený, že si na něj můžete kliknout a je to tam nějak vysvětlený. A co tady ještě? No, to je asi všechno. Takže pokud se do toho pak budete chtít pustit, tak tady máme připravený pro vás. Tady je jenom ukázaný to lokální maximum a to globální maximum, jo, že vlastně když ten problém má více řešení, tak se ti může stát, že ta smyčka doiteruje do toho lokálního maxima. To znamená v rámci toho svýho přístupu najde tady to nejlepší, ale neví, že vedle je takovejhle kopec, kam může jako nastoupat do toho globálního maxima. A ten- On to řeší- Ta moje smyčka to neřeší, ten skill to neřeší a já jsem ho teďko updatnul, aby právě tohle bylo v tom readme jako napsaný, že, že, že to neřeší, že si musíš prostě pustit víc těch kandidátů jakoby různejch, ale ten jeden sám to neumí řešit. Hele, už se nezlepšuju, zkusím něco jinýho. Skill mohl mít jako že, že má pustit si pár variant- No určitě, určitě. No. Tak jo. Tak to je asi všechno. Tak. Nebo máte k tomu někdo něco ještě? Když bude chtít, tak. No mě zajímá, jak jste pokračili, protože já jsem si dal tu last call-

[08:57] speaker_3: Já jsem to někam pohrnul asi.

[08:58] speaker_1: No, můžu se podívat, co se tady stalo teďka za poslední chvíli, protože já jsem upřímně zmatenej, jo. Mně připadá jakoby, eh, analogie ze světa magie. Někdo mi dal nějaký nový kouzlo a já vlastně vůbec jako nevím, co dělá a nevím, jak ho mám aplikovat. A teďka prostě střílím v podstatě na všechny možný strany a jsem zmatenej a připadá mi, že mám velkej deficit v tom vůbec pochopit jakoby ten koncept, jo. Takže jako a ten, ten samotnej Tomášův skill mě tím neprovedl tak, aby mně to jako přesně řekl, co je v tu chvíli potřeba a proč. Ale co jsem udělal teďka a hele, moje se výsledky, jakoby něco nějak proběhlo a nevím, v jaký fázi to je, ale hodil jsem tomu tři stories, který jsem potom našel, že vlastně jsem neměl, že je neměl při tom tréninku, který jsem jako považoval za docela dobrý a nechal jsem je oskórovat těm nějakým judgem podle nějakejch kritérií, který on dal Romanino. Takže tady mám tři stories, tady je nějaký skóre, eh, jejich. A to jsou stories, který jsem sám napsal, ale ve skutečnosti jsem je napsal v minulosti s, s agentem, no. A ty jsou dobrý teda, jo?

[10:04] speaker_3: Ty jsou dobrý, ale takhle-

[10:06] speaker_1: Já jsem myslel, že Radek ne, ne, nevyhodnotil detailně to, ten eval. On si ho nechal navrhnout na základě nějakejch svejch předchozích jako, eh, promptů nebo tak, bez- Ne, ne, já už jsem měl eval. Já už jsem měl svůj vlastní eval Anthropica, tím Anthropicovým skillem vytvořenej a on ho jenom vlastně z toho- Přepoužel jako. Zdestyloval vlastně nějakým způsobem. Okej, okej. Jo, takže proto jsem i, a i proto, protože jsem neměl čas na to pročíst prostě- Já jen povím, že když, když ty čísla vlastně úplně přesně nevíme, co znamenají, protože neznáme tu strukturu toho evalu, tak jak ji převzal, to je asi to, co říkám. No. Jo, takže z toho ten run můj check vlastně toho evalu, dá se říct, že jo, protože je to tak, že? Protože ma-- dal jsem mu tři stories, který on předtím neviděl, který jsem vytvořil já. Už jedno jak, jestli s AI nebo bez AI, jsem s nima spokojenej a on mi je oskóroval.

[10:53] speaker_3: Tak teď tam ještě určitě chceš hodit nějaký špatný a vidět, jestli to oddělí zrno od plev.

[10:57] speaker_1: Jasně, tam hodím něco, co psal někdo jinej a doufám, že to půjde. Jo jasně, takže to je ten meta eval, to je to vlastně testování toho evalu jako takovýho, že jo. Jestli, jestli to, co mu dáš, to dobrý a to špatný, jestli to dokáže rozpoznat, než ho pustíš do toho loopu, do toho tréninku jako takovýho.

[11:12] speaker_3: Jo. A taky přesně se podívat, jestli ty věci, který si stěžuje, jestli-

[11:17] speaker_1: No a to je přesně ono, jakoby od toho to jsem upustil sám, jo, protože můj, moje představa o tom, jak vypadají danej napsanej user stories, se taky mění v čase a teďka do toho nedávám prostě německý překlady, protože fuck that jako. Jo a tady on to flagnul vlastně, že tam není červený copy a kvůli tomu snížil skóre. Takže já bych na teďka co, eh, někde to tam upravit v těch asi v těch kritériích, že jo, protože už mně nezáleží na něm, německejch překladech. No. No. A nebo mu to říct jako, nebo mu to říct, hele, prostě potřebuju upravit eval. Všiml jsem si toho a toho, tak to jako uprav, aby tam nebyly německý věci. Jasně, no. Hele a teda s čím jako pojmově bojuješ? Protože si říkám, jestli to není jako nějaká společná věc, který tady lidi můžou jako kolem toho mít, že vlastně- Já mám, já mám pocit, že tady se furt jakoby hází nový pojmy, jo, headroom. Eh, mám pocit, že chybí mi jasnost pro mě. Možná, že ostatní to nepotřebují a chápou to nějak intuitivně, ale já vždycky, když mám nějakej novej koncept, já tam musím mít přesně vyplněný ty board gaps, jo.

[12:16] speaker_4: Prostě potřebuju vědět, týhle věci se říká takhle. Tohleto je lokální maximum, tohleto znamená, tohleto je loop na základě těchhletěch, kterej jakoby mám nějaký teďka lepší intuice o tom jo, třeba jak vyhodnotit, vyhodnotit tu to, jestli je to worth it, jo.

[12:31] speaker_5: A dokázal bys mi říct teda v čem-- já chápu, co říkáš. Říkáš, že potřebuješ mít jako lepší. A dokázal bys teda říct, co tam teda teďko není, nad čím třeba jako v čem tápeš konkrétně?

[12:41] speaker_4: Pořád tápu v tom, na který use case to mám použít. Jo, pořád jakoby nevím, já bych, já, já bych strašně chtěl vědět, teďka tady dělám něco, co by bylo daleko efektivnější. Eh, vymyslet si, najít si tu testovací sadu. Jo, vlastně nějak mít jako zavajrovanej v mým mozku nějakej event, kterej se mi rozsvítí not this way, eval.

[13:06] speaker_5: Hele, tak, tak si to tam instaluj ten skill, let it run normálně, jako nech, nech je to prostě-

[13:10] speaker_4: Jo, rozumím, rozumím, ale, ale tak já půjdu a nebudu tě tímat tím skillem, jo? Já půjdu prostě hele, potřebuju identifikovat, potřebuju se zorientovat tady v tomhletom a potřebuju si tadytenhleten hook do mě nainstalovat. Potřebuju, aby firovalo ve správný chvíle. Co jsou ty kritéria, který mám zhodnotit v to, kdy jako mám použít tady tenhleten jakoby training, training set, no.

[13:31] speaker_5: A když mu to řekneš, on bude mít kontext toho skillu, tak ti podle mě dokáže vysvětlit.

[13:36] speaker_4: Jo, rozumím. Já, já jako ne-nestěžuju si, že nevím, jak dál, jenom si stěžuju z toho, že vlastně neodcházím, eh, odcházím s velmi mlhavým mentálním modelem tady týhletý celý problematiky. Eh, a, a čeká mě ještě hodně práce pro to, abych se dostal k, eh, k tomu, že budu v tom cíli a budu vědět, kdy tohle použiju a jak.

[14:01] speaker_5: Okej.

[14:02] speaker_4: That's it, I guess. Ale je to v pohodě, jakoby chtěl jsem se v tom posunout, jenom, aby to bylo o dva míň.

[14:12] speaker_5: Tak třeba ses tam posunul, že jo. Takže pokud za hodinu a půl, tak si to vlastně dostřel.

[14:21] speaker_4: No, tak to bylo všechno nějaký to shrnutí za tebe. A když už takhle si říkáme zpětnou vazbu, tak co, co ostatní? Jestli jste si z toho něco odnesli.

[14:31] speaker_5: Hele, já hlavně z tý diskuse, co jsme měli, že vlastně jsem se přesvědčil, že to můžem použít tady na ten náš mozek, dost z vás, co přednášels, se tam dolů lží a nějak jsme už o tom přemýšleli, jak bysme to b-balkou udělali, prostě nějaký řešení. A vlastně já jsem, já jsem nad tím přemýšlel, že bych to mohl udělat obráceně, že vlastně řekneme, co chceme a necháme AI jít iterativně k tomu řešení, místo aby my jsme to s ní nápadně myšeli. Takže mě, mě to daleko posunulo v myšlení prostě nad budoucím projektem. Takže děkuju.

[15:09] speaker_6: A mně ten váš use case přijde ještě dobrej v tom, že, že si myslím, že tam je spoustu věcí, který jsou jako nějak lineárně nebo jako rostoucí nebo klesající, že to může docela dobře jako najít ten svý spot, že, že si myslím, že to je dobrá úloha.

[15:22] speaker_5: Můžeš kvantifikovat to, že takhle.

[15:24] speaker_6: Dobře hodnotitelný jako kvalitativní stupněm.

[15:35] speaker_7: Mně přijde, a to jsem jaksi potom upřesnil, ale že jako osmdesát procent toho, co mi to dalo, mi to dalo ještě v tu chvíli, jak jsi to uvedl, že vůbec jako koncepčně ok, tohle je možný. A pak jsem nějak trochu poslouchal, když jste, jak se o tom bavíte, tak prostě ta diskuze pak třeba dala dalších jako deset nebo osm procent toho. Jo a jako takový jako přijde mi fajn, že je, že to je možný, že se takový problém zaštička existuje, i když vlastně si neodnáším nic konkrétního, tak jenom vědět, že je možná, že je to řešení, po kterým možná jdu.

[16:03] speaker_4: Jasný. Takže prostě potenciální tool a vlastně vím o něm, že existuje a, eh, můžu pak s klientem řešit, jestli ten můj problém na něj je vhodnej. Třeba jsem o ten-

[16:13] speaker_5: Tak je-

[16:16] speaker_6: Já jsem trošku podobný, že rozhodně teď nemám z těch věcí žádnej use case, kterej by na to krásně seděl, takže i v tom jsem vlastně pak necítil takovou motivaci do toho zapřadávat víc. A zára ještě a druhá jízložka, co mám, je nějak víc pracovat s tím Evalem v tom primitivnějším slova smyslu. Takže prostě pár iterací nebo tak, tak jako ještě daleko líp definovat ty cíle, eh, se snažit u různých těch problémů, že to vlastně může mega, mega pomoct. Tak to mám jako nějakou druhou přísložku. A pak, že mě hrozně baví web kódit. Tady dělat.

[16:54] speaker_5: Tomáši, on ti proaktivně jakoby navrhuje třeba i ty kritéria, podle kterejch to hodnotit? Nebo to je spíš na tebe?

[17:02] speaker_4: Já jsem měl nějakou svou představu, jak to hodnotit. Jo, třeba u toho výčtu toho materiálu jsem vlastně říkal: „Nechci jednotlivý kusy toho materiálu, nechci ani jedno číslo. On navrhoval celkovej objem dřeva, kolik v tom je, protože já jsem měl vlastně model a tabulka říkala, v tom je tolik dřeva, jakoby v metru kubík tolik dřeva přesně, jo. A já jsem jako řekl: „Hele, já cejtím, že by bylo lepší jako, eh, si vybrat ty jednotlivý typy profilů, abysme, abysme neměli situaci, kdy to sice typne celej objem dřeva nebo prostě jako nějak to jako teda dá ten objem dřeva, ale bude to třeba úplně mimo v těch, v těch kategoriích třeba. A takže to nějak řeklo: „Ok, tak to může bejt. On má jako mám pocit, že má trošku tendenci jako kejvat, že na něj člověk musí bejt trošku přísnější, aby byl jako, aby byl víc ketičtější. Ale jako jo, je toho, je toho schopen ti tu paletu dát, když víš, že potřebuješ paletu, že potřebuješ. Hele, řekni mi, jakým vůbec způsobem bysme mohli hodnotit tohleto, jo? Taky najde tu ideu a pak si vybereš nějakej styl, kterej ti přijde intuitivní.

[18:06] speaker_5: Jestli můžeš říct, že třeba zapomene na nějaký kritéria něco jako změnit, že si přijde s tím sám. Jo, když s tím už pracuje, tak si prostě řekneš, no jo to-

[18:18] speaker_1: OK, hele, za mě to asi jako splnilo účel. Já jsem vlastně vás chtěl jako nadchnout nebo chtěl jsem jako taky, já nepoužívám to denně vůbec ne, použil jsem to dvakrát, ale vím, že to existuje a vím, na co to asi použít, což je super vlastně. Eh, takže jsem chtěl, abyste měli ten stejnej jako tool ve svém toolboxu a věděli, že tam jako je, jako jste ho normálně vyzkoušeli. A přesně to, co říkal Honza, tak byl taky můj závěr vlastně, aby to jako pomohlo přemejšlet nad tím jako nejenom tady v tom striktním use casu, ale vlastně i jak definovat líp kritéria třeba pro autonomní vývoj, aby to prostě svištělo. A obecně ta motivace byla: nechci dělat ten podělanej babysitting, ten mě prostě strašně unavuje, furt něco jako říkat dokola, jo. Takže víc přemýšlet nad tím, jaký jsou kritéria toho, co od něho chci, hm, a, a potom případně jako buď to, eh, jako použít, no. Já chápu, že když nemáš use case, tak prostě nemáš důvod to použít, no. A ještě bych asi chtěl upravit tu prezentaci, aby, aby líp pojmula ten model, aby tam byl třeba nějakej diagram nebo něco, co jakoby ti pomůže vytvořit si ten mentální model nad tím, kde nebudou všechny ty jakoby buzzwordy, který tam jsou, ale bude to nějak jako omezený a podstatný pro to, co, co jako potřebuješ na, na to, aby jsi pochopil: „Aha, takhle to funguje a tohle je můj job a tohle je job toho LLMka jako, jo.“ Takže tu prezu ještě nebudu postovat, ještě na ní budu, ještě na ní budeme pracovat s kámošema.

[19:49] speaker_5: Jasně, prostě.

[19:50] speaker_1: Kdy. Teď ti můžu poslat teďko as is a-

[19:53] speaker_5: Jo tak jo.

[19:54] speaker_1: Jo.

[19:54] speaker_5: A budeš mě aktualizovat ještě, jo?

[19:56] speaker_1: No, no, no. Jo.

[19:58] speaker_5: Tak. Já to rozdílím se Standou, jenom abych, když tady nebudu, tak-

[20:01] speaker_1: Jo jo jo. Ok, ok.

[20:02] speaker_5: Aby ses neměl jak líbit.

[20:04] speaker_1: Hm. Jako, eh, já odcházím hodně jako rozbitej do všech směrů. Mám pocit, mám potřebu nějaký konvergence, ale odcházím s nějakejma konkrétníma jako věcma, právě těma handlama, který mi připadaj jako užitečný, jo, slova jako judge, eval, loop, hill climbing, jo, a tady tyhle věci. A mám za něma dosazený nějaký koncepty, který mně pomáhají tomu jako líp porozumět. Jo a taky ten ground truth, golden data set, pairs. Jo, takže jakoby tyhlety věci nějak chytám, jenom si je potřebuju všechny nějak pospojovat a, a, a porozumět tomu modelu, tý věci a porozumět těm decision pointům, který mám kde udělat a jaký considerations mám mít, eh, když se rozhoduju, jestli tohle použít. A mám pocit, že právě míjím jako celej svět možností, kde to můžu použít, jenom je nevidím. Jo, to je prostě můj pain, že si myslím, že s-, že je spousta příkladů, kde bych to mohl použít.

[20:59] speaker_5: Ano.

[21:02] speaker_1: A neidentifikuju je. A místo toho trávím svůj čas-

[21:06] speaker_5: Babysittingem.

[21:06] speaker_1: Sledogeny prostě tady s nějakým tím-

[21:09] speaker_5: Testem.

[21:09] speaker_1: -jakým fort. Hm.

[21:18] speaker_5: To míst.

[21:18] speaker_1: Dvanáct nula tři. Paráda, dneska to bylo pichtlich.

[21:22] speaker_5: Tak jo, díky.
