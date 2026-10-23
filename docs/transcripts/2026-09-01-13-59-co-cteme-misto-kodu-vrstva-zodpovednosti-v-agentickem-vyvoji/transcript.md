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

# Transcript: Co čteme místo kódu: vrstva zodpovědnosti v agentickém vývoji

[06:11] Tomáš Landovský: Čau, Peťo. Sorry, omlouvám se.

[06:15] Petr Černý: Slyšíš mě?

[06:16] Tomáš Landovský: Slyším tě dobře.

[06:17] Petr Černý: Super.

[06:18] Tomáš Landovský: Vypadáš strašně mlaďák, jsi ostříhaný takhle nakrátko.

[06:21] Petr Černý: Jo, ty taky.

[06:22] Tomáš Landovský: Jo.

[06:24] Petr Černý: Tak kdyžtak se omlouvám. Možná že tady budou vrtat, nad námi je rekonstrukce a teďka to bylo teda v klidu asi půl hodiny, ale s klukama vrtaj, tak pak kdyžtak zkusím switchnout na AirPody normálně. Třeba to bude lepší, kdyžtak.

[06:37] Tomáš Landovský: V pohodě.

[06:40] Tomáš Landovský: Tak co, jak se máš? Kam se chystáte na dovču?

[06:43] Petr Černý: Eh, já se chystám do Amsterdamu na 3 dny. Jdeme s bráchou na Stinga, na.

[06:52] Tomáš Landovský: Na Stinga, hustý.

[06:53] Petr Černý: The Last Ship, ten muzikál, co on napsal a hraje tam. Tak teďka je asi poslední, jak se tomu říká, prostě tour toho muzikálu, nebo že to hrajou, prostě takhle.

[07:05] Tomáš Landovský: Hm.

[07:06] Petr Černý: V Amsterdamu. Tak tam budeme na 2 noci.

[07:12] Tomáš Landovský: A plánujete ještě něco jiného dělat v Amsterdamu?

[07:16] Petr Černý: Plánujeme jít do zoo, tam je velká zoo v nějakém parku a má to asi 3 jakoby kategorie, nebo 3 místa, 3 areály oddělené, že tam je jako muzeum nějaké, prostě přírody, asi tak. Normální zoo a ještě nějaký jako mikrosvět, takže prostě zoo, ale na mikro úrovni. Tam bude asi něco zajímavého, co jsme ještě neviděli.

[07:45] Petr Černý: No a nejspíš na tenhle den, ten druhý po tom muzikálu, tak až půjdeme do toho, do zoo, do té zoo, tak si možná dáme nějaký edibles předtím. To by mohla být sranda.

[07:59] Petr Černý: Ale zkusíme být opatrní.

[08:01] Tomáš Landovský: To jo, no.

[08:02] Petr Černý: A nevlezeme do nějakého terárka třeba.

[08:07] Petr Černý: Jo, jo. No a Janča je v Itálii teďka, ta už je pryč od pátku, tak já odletím a ona se vrátí další den.

[08:16] Tomáš Landovský: Mhm, mhm.

[08:17] Petr Černý: Nebo po 2 dnech. Nebo další den asi. Jo.

[08:21] Tomáš Landovský: Jo, to jsi nějak říkal, že tam, že se tam budete střídat u vás.

[08:24] Petr Černý: Jo, jo.

[08:27] Petr Černý: No, tak teďka doháním věci, co jsem chtěl dokončit. Ještě nějak jako poklidit, sbalit se, připravit tady kočku, ať to tady přežije ten den.

[08:38] Tomáš Landovský: A když letíš?

[08:40] Petr Černý: Ve čtvrtek ráno.

[08:41] Tomáš Landovský: Jo, jo, jo. OK. Hm, to je príma.

[08:46] Tomáš Landovský: To já nemám nic takového před sebou. Něco, co mám před sebou, na co se těším, je kurz stříhání ovcí, na ten se těším.

[08:54] Petr Černý: Jo, to jsi říkal.

[08:55] Tomáš Landovský: Hm, tak to bude fajn. No a jinak samá práce a tak.

[09:07] Petr Černý: Hm.

[09:09] Tomáš Landovský: Skončila.

[09:10] Petr Černý: Dost na hřištích, nebo máš ještě další projekty teďka nové rozjeté?

[09:14] Tomáš Landovský: Hm, na hřištích, no. Ne, teď se soustředím na hřiště teďka. A mám tam toho kluka zapojeného, s kterým jsem hodně spokojený.

[09:22] Tomáš Landovský: To je dobrý, dobrý týpek to je. Zatím se osvědčuje, jako, a nemá rezistenci vůči zpětné vazbě a dělá docela hezkou práci.

[09:38] Petr Černý: Super.

[09:39] Tomáš Landovský: Takže to je dobré, to mně hodně pomáhá. A no, a tak.

[09:50] Petr Černý: No.

[09:50] Tomáš Landovský: Trošku nůž na krku v hřištích, takže musím máknout, abych teďko dodal věci, které jsem slíbil už v létě a.

[09:59] Petr Černý: Tak nůž na krku, jo. Jakože hrozí ti, že když nebudeš dodávat teďka, tak že.

[10:04] Tomáš Landovský: To ne.

[10:05] Petr Černý: Nahradí třeba, nebo?

[10:06] Tomáš Landovský: To mi ne. To by muselo být jako nějaké fakt ultra špatné, ale prostě to ne. Nůž na krku v tom, abych si nějak zachránil ještě reputaci, no.

[10:17] Tomáš Landovský: Jinak bych tam vypadal jako úplný idiota.

[10:20] Petr Černý: Hm.

[10:23] Tomáš Landovský: No.

[10:23] Petr Černý: No jo, tak ono to občas přichází ve vlnách, ty jako vlny energie na něčem dělat, ať už to je motivace, nebo ze stresu. Myslím, že to určitě dotáhneš a zase zazáříš. Ono to pomůže.

[10:39] Petr Černý: Ono to je, tomu se říká nějaký ten, už znám z nějaké knížky hrozně dlouho, intermittent reinforcement.

[10:47] Tomáš Landovský: A to je co?

[10:47] Petr Černý: Když chceš někoho jako zmanipulovat k tomu, aby tě chtěl, aby tě měl rád, abys s tebou byl spokojený, tak musíš jako to dobré dávat jenom občas a nechat je občas se topit v tom pocitu, že jako to nedostávají to, co chtějí od tebe.

[11:03] Tomáš Landovský: Jo, protože když se dostaneš, když jsi furt dobrý, tak se z toho stane nějaká norma, ne?

[11:07] Petr Černý: No, no, no. Něco takového asi, no. Ono to funguje jako i hlavně v těch jednodušších věcech, kde jde prostě o to, jak rádi třeba lidi se s tebou baví, nebo jak jsou k tobě nějak attached.

[11:25] Tomáš Landovský: Hm, hm.

[11:26] Petr Černý: Tak tam to určitě funguje. Tady zase oni asi trošku počítají třeba finance, čas, nebo nějakou timeline, jako aby něco stíhali, tak nevím. Tam jsou i další aspekty, ale asi to do nějaké míry taky může platit.

[11:39] Tomáš Landovský: Hm, hm. No a co ty? Co tvoje projektíky?

[11:47] Petr Černý: Projektíky asi v pohodě. Na tom Make Me je v tuhle chvíli dost co dělat, protože jsem dostal tu integraci toho Medavia. Vlastně ty jsi dělal to review, tak já v tom teďka jsem pokračoval po tom, co jsem dostal feedback od nich na to, jak přesně funguje ten jejich systém interně, jak funguje, co mají v plánu s tím APIčkem, co nemají v plánu zatím, a tak dále.

[12:16] Petr Černý: Takže jsem podle toho trošku přeplánoval nějaké věci a prostě jsem to začal implementovat, nebo nechal jsem to implementovat podle toho docela detailního plánu, co jsem už za tu dobu dal dohromady. A nakonec jsem udělal ještě asi další dvě kolečka, kdy jsem podle toho výstupu přišel na nějaké další věci, co je potřeba udělat trošku jinak, nebo může to UX být mnohem lepší, když se něco převrátí, nějaké pořadí toho onboardingu toho uživatele z Medavia.

[12:50] Petr Černý: A nějaké chyby, nějaké nedostatky, co prostě Claude nedodělal pořádně, udělal jenom nějaké jednoduché zobrazení, které by se dalo sjednotit s něčím, co už jsme měli. A teď je to mnohem hezčí.

[13:05] Petr Černý: No a momentálně teda bojuju s tím, že mám jako hotové tyhle věci, mám hotový nějaký nástřel jakoby nějakých diagramů těch hlavních cest toho uživatele. Z toho jsem už oznámil, že je docela dobrý bod, že třeba Tomáš mohl se na to podívat.

[13:25] Petr Černý: A ještě jsem se dostal dál, ještě jsem udělal jedno kolečko UX-ové a něco jsem vylepšil do za mě skoro produkční podoby. A co jsem teda se snažil udělat dvě věci.

[13:39] Petr Černý: Za prvé je jako hrozně těžké už jenom o tom přemýšlet, ale jako představit si, že Tomáš teďka se musí jako dostat do téhle té featury, do toho tématu a představit si, co a proč ten uživatel teda může všechno dělat v rámci té integrace. Tak jsem zkusil nechat vytvořit trošku detailnější popis těch uživatelských cest, včetně screenshotů přímo z toho implementovaného UIka.

[14:09] Petr Černý: To ukážu, já vlastně to mám shareovatelné, nejspíš.

[14:16] Petr Černý: Takže jsem od Claudea nechal vytvořit artefakt. Zatím je to v téhle formě, protože tomu jde nejlíp.

[14:22] Petr Černý: Má tam zatím asi nejvíc možností, které hned fungují.

[14:27] Petr Černý: Uvidíš, jestli to, jestli to otevřeš.

[14:37] Petr Černý: Funguje ti to?

[14:38] Tomáš Landovský: Jo, počkej, já.

[14:39] Petr Černý: Na Telegramu jsem ti to poslal.

[14:40] Tomáš Landovský: Aha, aha.

[14:41] Petr Černý: Jo, chceš to tady do chatu?

[14:43] Tomáš Landovský: Ne, ne, už to otvírám.

[14:46] Petr Černý: A zatím je to jako trošku blbě podle mě seřazené, co ti prezentuje dřív a co později, ale prostě si myslím, že by tohle mohlo stačit, než abych se snažil co nejlíp jednoduše, stručně, ale dost detailně jako popsat, jak si má Tomáš nastavit věci v hlavě, jak se dostane do tohohle stavu, aby tohle otestoval. Protože přece jenom tady nemáme od nich nějaké testovací prostředí, kde by se dalo něco namockovat, ale prostě máme jednu testovací kliniku ve skoro produkčním stavu, takže si říkám, že nevím, schválně mi řekni, co

[15:21] Petr Černý: si jako myslíš. Nemusíš to číst všechno, jo?

[15:24] Tomáš Landovský: Ne, je to super.

[15:25] Petr Černý: A jenom se podívej, jestli by ti tohle stačilo jako prostě PM, jako projektovému manažerovi, který se má podívat na implementovanou featuru větší, tak jestli by ti to stačilo pochopit všechno dostatečně, abys to mohl okomentovat, tenhle view, že by mohl být trošku jiný, nebo spojit něco s něčím, jestli ti to dává smysl a jestli si myslíš, že to jako stačí.

[15:52] Petr Černý: Já teda jako víc toho asi už nedotáhnu, než odletím, takže já mu budu prezentovat asi tyhle věci.

[15:58] Tomáš Landovský: Ne, je to skvělé.

[15:58] Petr Černý: Dotáhnu nějakou dokumentaci.

[16:01] Tomáš Landovský: Je to naprosto skvělé.

[16:03] Petr Černý: Ale no, s tímhle tím jsem teďka jako bojoval, abych to všechno zabalil do nějakého balíčku, který se dá prezentovat.

[16:10] Tomáš Landovský: Chybí tomu jedna věc. A to je, jak pak dostat komentáře nazpátek.

[16:18] Petr Černý: To jsem si říkal, že by mohlo být vyřešené, protože ty když tady... No, nevím, jestli to půjde.

[16:27] Tomáš Landovský: Ne, tady není.

[16:28] Petr Černý: Když jsem to měl otevřené předtím, tak tam bylo komentování.

[16:31] Tomáš Landovský: Jo.

[16:32] Petr Černý: No.

[16:36] Tomáš Landovský: Hm, já to tady nemám. Refresh. Version history.

[16:42] Tomáš Landovský: Rename. Delete.

[16:43] Tomáš Landovský: To nemůžu. Refresh.

[16:45] Tomáš Landovský: Hm.

[16:47] Petr Černý: A když ti pošlu tady ten link na Telegram a zase ne, tak to je na hovno, sorry, tak to bude úplně stejný problém.

[16:59] Petr Černý: Já jakmile tam dám share a že to může vidět kdokoliv s odkazem, tak mi zmizí tlačítko pro komentování.

[17:05] Tomáš Landovský: Hm, hm.

[17:06] Petr Černý: Tak to je sračka.

[17:08] Tomáš Landovský: To je na hovno, no. A nemohlo by to být v marketingu tohleto?

[17:13] Petr Černý: Asi jo. Já jsem zatím, já jsem třeba nechal původně.

[17:17] Tomáš Landovský: Já ti totiž ukážu tu lunu, na které jsem pracoval teďko.

[17:23] Petr Černý: Já ti řeknu mezitím, že já jsem původně i ten diagram, co tady mám v Notionu, to ukážu taky, pošlu ti odkaz, tak tady ty původní diagramy jsem dělal taky takhle, nebo Claude to původně udělal takhle a pak mi to předělal na Markdown, ten Mermaid.

[17:47] Tomáš Landovský: No právě. A já mám takový.

[17:49] Petr Černý: A pak to nakonec dal takhle docela dobře do Notionu. Tak jsem původně plánoval, že když se nebude dát komentovat tam v tom artefaktu. Sorry, ty jsi už něco říkal?

[17:58] Tomáš Landovský: No a on to pak z toho umí, takže on ti to může dát do Notionu a můžeš si to i číst potom, ty komentáře a tak.

[18:08] Petr Černý: To, no, asi jo. Tak já mám MCPčko na Notionu napojené, takže s tímhle problém není. Ale asi to budou úplně normální komentáře, které nebudou jakoby lokalizované na nějaké místo.

[18:21] Petr Černý: Nebo nevím, co umí přesně Notion. Asi to nejde komentovat, no.

[18:25] Petr Černý: Cringe.

[18:26] Tomáš Landovský: Hele.

[18:27] Petr Černý: Je to škoda, že to nejde v těch artefaktech.

[18:30] Tomáš Landovský: Jo, můžu ti ukázat, co jsem vyrobil.

[18:32] Petr Černý: Hm.

[18:33] Tomáš Landovský: Vidíš můj screen?

[18:34] Petr Černý: Jo, jo.

[18:34] Tomáš Landovský: Jo, jo, vidíš můj screen. A to je vlastně řešení právě tohohle problému, že jsem zjistil, že vlastně komentuju obrovské množství Markdownů a že mě sere, že musím dělat nějaké reference a podobně. Že vlastně tohle je takový jakoby sidecar, který je to, že jo, jakoby je to web server, který se dívá do toho repa, sedí přímo tam, kde je ten kód.

[19:03] Tomáš Landovský: A můžeš si tady otevřít prostě jako Markdowny, případně by to mohl být teoreticky i kód, ale jako to jsem nepotřeboval. A pak vlastně můžeš normálně jako v Google Docs můžeš komentovat, můžeš tady přidávat komentáře k tomu.

[19:22] Tomáš Landovský: A když dáš potom submit review, tak se to zapíše, zapíše se to na disk a potom to Claudovi předáš jako MD Canvas pending, když mu napíšu, tak vlastně se přímo, že jo, on se přímo zavolá ten command, takhle, když to dáš s tím vykřičníkem a vybleje se z toho ten MD Canvas pending. OK, to je tady.

[19:56] Tomáš Landovský: Taky ne. Já nevím, jestli tady mám někde to.

[20:05] Petr Černý: Pořád tady jde přes TMAX tyhle ty, tenhle picker z těch projektů.

[20:09] Tomáš Landovský: Jo, jo, jo. Já jsem s tím spokojený, no. Teď jsem ještě vylepšil messaging trošku, ale je to super.

[20:16] Tomáš Landovský: MD Canvas pending. Nic.

[20:19] Tomáš Landovský: Ani tady? Ne.

[20:22] Tomáš Landovský: Tak prostě ono mu to vyjede jako komentáře přímo s těmi referencemi na, můžeš jako i třeba buňku tabulky, jo, komentovat, prostě úplně cokoliv. A on se k tomu vyjádří, případně zapracuje změny a ty si to tady pak můžeš vlastně, víš co, uděláme to takhle.

[20:41] Tomáš Landovský: To jsme tady.

[20:42] Petr Černý: Super.

[20:44] Tomáš Landovský: Lokálně test comment.

[20:46] Petr Černý: Já jsem přesně přemýšlel, že možná zkusím taky nechat vyplivnout něco takového jako přesnější, jako tool než ty artefakty, že se tím budu inspirovat, ale že to bude užitečnější pro mě a že by se to možná dalo i shareovat třeba a okomentovat ostatní. To tam máš?

[21:12] Tomáš Landovský: Hm, hm, počkej, to je lokálně. No, ne, nemám, nemám. Mám to jako předpřipravené na tom, proč to, ty vole, fucking píčo, není, ty jo, někde to, kde to je, ty jo, kde je Docs Pro Post Changes?

[21:26] Tomáš Landovský: To bude totiž v nějaké větvi.

[21:31] Tomáš Landovský: Jo, tady. Test.

[21:35] Tomáš Landovský: Takhle to pak vypadá a ono to prostě odpoví. Je tam nějaké APIčko na to, kterým jako pomocí kterého to můžeš pak jako udělat.

[21:46] Tomáš Landovský: Reply, resolve, reopen, apply field a tak. A umí to i, co je super, takže to umí, to jsem do toho teďko dodělával, že když třeba máš nějaké, nevím, máš nějaký jako specový dokument a máš tam třeba nějaké tabulky, s kterými chceš jako pracovat, tak si to v tom můžeš i editovat.

[22:09] Tomáš Landovský: A je to založené na tom, že akorát se musí najít jako tabulka, která se sama předvyplní.

[22:19] Tomáš Landovský: Je to teda nějaké pomalé, jo, ale umí to samozřejmě, umí to samozřejmě renderovat ten Mermaid, takže to můžeš do toho všechno nakombinovat. A právě jsem si představoval, že kdyby se tohleto zpracovalo, jakoby to, co jsi mi ukázal v tom HTML do toho Markdownu, tak by sice nebylo tak hezké, ale za to by se to dalo jako komentovat a tak, no.

[22:42] Tomáš Landovský: Takže já nevím, jestli ti tady někde budu moct ukázat. Ještě mi dej chviličku.

[22:47] Petr Černý: Ale je to super, no. Tohle je přesně, co jsem chtěl zkusit vytvořit, ale fakt je pro mě jako užitečné to s těmi artefakty, že se dají shareovat a že to vidí ostatní. Ale fakt jsem teda čekal, že se to bude dát komentovat a.

[23:04] Tomáš Landovský: A to by se jako dalo zařídit, no. Ta idea je taková, že vlastně možná bych ti mohl spíš nasdílet než jakoby to řešení, tak ty invariants, které k tomu mám, jo.

[23:19] Tomáš Landovský: Což je docela zajímavé, protože se můžeš podívat, jestli nad tím chceš přemýšlet stejně, anebo třeba jinak.

[23:34] Tomáš Landovský: Já jsem nějaký ztracený. 4300, to je tady. A dot files, to je ještě furt dot files.

[23:42] Tomáš Landovský: A invariants, MD Canvas, to je asi ono.

[23:54] Tomáš Landovský: Taky není, taky není.

[24:01] Tomáš Landovský: Invariant je nějaké jako základní pravidlo, prostě, které v tom kódu žije a není to jako, nezávisí na implementaci, jo. Je to prostě nějaká jako filozofie, řekněme, toho řešení.

[24:11] Tomáš Landovský: A vlastně nechtěl jsem, aby se to mutovalo vlastně na místě, takže proto je to jakoby sidecar, že se zapíše nějaký JSONL vlastně jako file tam, kde běží ten server a ten v sobě obsahuje ty komenty, jo. Takže vlastně ty přímo nemodifikuješ ten.

[24:31] Petr Černý: Jo, jo, jo. Když ukládáš, když předáváš komentáře, tak že se nevkládají do toho souboru, který komentuješ.

[24:38] Tomáš Landovský: Přesně tak, přesně tak.

[24:39] Petr Černý: To je super.

[24:41] Tomáš Landovský: A kéž bych ti tady mohl jako demonstrovat.

[24:49] Tomáš Landovský: Tady, tady to.

[24:49] Petr Černý: Ale to je fakt dobré.

[24:51] Tomáš Landovský: Tady je, že jo, jakoby content stable ještě udělaný a tak. Je to proklikávací, takže jakoby followuje to linky v tom repozitáři, což je taky fajn, že prostě pokud ten dokument má nějaké předpoklady prostě nebo něco, tak se můžeš jako pohybovat jako v tom všude a tak, no. To je dobré.

[25:11] Tomáš Landovský: No a tím, že to je ten sidecar, tak by se to asi nějak jako dalo řešit, to sharování, no, aby se na tom dalo nějak kolaborovat.

[25:19] Petr Černý: Já jako rozhodně nemám pocit.

[25:20] Tomáš Landovský: Jako muselo by se právě dořešit to vlastně, protože ten, kdo na to bude reagovat, že jo, jako buď to je teda mezi lidmi, OK, ale potom stejně ve finále to chceš vzít a dát to Claudovi a říct jako zapracuj změny, že jo. Jo, takže on to potřebuje dostat v nějakém teda formátu, potřebuje se k tomu jako dostat, potřebuje moct říct, potřebuje umět použít to APIčko, kterým teda řekne: "Hele, tady na to, tady to resolvuji, tady na to odpovídám" a tak.

[25:51] Petr Černý: Já bych, já si to představuji tak. Zaprvé, já si myslím, že to jako je možné, samozřejmě, ale ne zítra. Takže v tomhle tom mi to jako nepomůže asi, i kdybych se tomu rád pověnoval, takovému projektíku.

[26:05] Petr Černý: A zadruhé si myslím, že kdybych to dělal pro sebe, tak bych udělal, tak bych měl jakoby dvě verze, co by běžely. Jedna by byl nějaký server, který by běžel u mě lokálně a byl by hezky napojený třeba i na ten terminál, na TMAX, nebo já teďka používám Kitty, tak prostě na nějaké featury, co už mám v terminálu, které mi zobrazují, ať už ten picker těch sessions a tak, tak prostě může to být nějak napojené.

[26:29] Petr Černý: Ale tohle by běželo lokálně a když bych chtěl něco, aby mi úplně stejně s podobným výstupem pro mého Clauda komentovali lidi, tak bych prostě měl nějaké prostředí oddělené asi, kde bych jakoby měl taky třeba složky na projekty nebo nějak bych to měl oddělené, ale prostě bych to takhle publishnul a tam by se komentovalo úplně stejně, mohlo by to fungovat úplně stejně, taky JSONL na stejném filesystemu. A jenom by to nebylo napojené na ten můj lokál, třeba by tam mohla být nějaká možnost merge-nout ty, když je

[27:12] Petr Černý: to JSONL, tak vlastně proč ne, přidat ty komentáře na lokál, ulnout si to.

[27:19] Petr Černý: Ale asi bych, asi by to mohlo být jedno řešení na oba problémy, protože jsou, protože ten publishnutý je vlastně subset toho lokálního, bych řekl. Že ti podle mě stačí, pokud chceš jakoby jednoduché řešení, jak se k tomu dostat rychle, tak mít to samé, ať to běží někde na serveru a mít možnost generovat ten odkaz na to, nějak to zabezpečit, ať se tam teda dostane jenom ten, kdo má.

[27:48] Petr Černý: Já bych to asi nechal běžet u sebe a zase bych použil ten Cloudflare s tím Cloudflare Access, kde si nastavím, jaké e-mailové adresy tam můžou.

[28:00] Petr Černý: A no, takhle bych to možná řešil. Ale není to na jeden den, no.

[28:05] Petr Černý: A teďka bych to nestih.

[28:07] Tomáš Landovský: A myslím si, že i ten tooling vlastně, že k tomu postupně bude asi jako iterovat k tomuhle, jo, k takovému způsobu práce. Že prostě jako revidovat jako v Claude Code to nejde vůbec, že jo, nebo prostě tam jako, často je mi to nepříjemné se orientovat ve velkém množství textu v tom Claude Codu, když to tam není formátované, že jo. Jakoby vlastně ten důvod to mít bokem bylo, aby to bylo renderované, abys viděl ten Markdown jako renderovaný.

[28:36] Tomáš Landovský: Tady to ani není hezky jako vizuálně zpracované, jo, ono by to mohlo být samozřejmě ještě jako hezčí. Aby jsi v tom viděl diagramy, obrázky, obrázky jsem nepotřeboval, ale jako třeba v tvém případě jo.

[28:47] Tomáš Landovský: Že abys to mohl komentovat renderované, abys to mohl komentovat jako cokoliv v té tabulce. A co ještě bude takové jakoby to, no.

[28:58] Tomáš Landovský: A aby na to ten, aby vlastně, protože ty de facto toho Clauda používáš jako takového parťáka, že jo. Takže to je vlastně to, to je to samé, jako bys pracoval v Google Docs a Claude by ti jako řekl: "Jo, tohle jsem zapracoval," nebo "Tady mám k tobě takovouhle otázku nebo takovouhle připomínku."

[29:14] Tomáš Landovský: Takže máš vlastně vlákno nějakého problému, že jo, prostě okolo kterého diskutuješ a zároveň to máš verzované. Možná, že to je nějaká jako budoucnost, no, tohleto.

[29:28] Petr Černý: Tím verzováním nevím, ale zkoušel jsi ty artefakty? Protože ono to takhle v podstatě funguje.

[29:34] Tomáš Landovský: Třeba, třeba pro moji mámu jsem dělal srovnání dodavatelů elektřiny a úplně skvěle jako to vyplivlo prostě fantastický artefakt, kde to bylo jako shrnuté, kolik ušetří, když půjde touhle cestou, kolik ušetří, když půjde touhle cestou.

[29:47] Petr Černý: Jo, jo, jo. Ale zkoušel jsi ty vlákna? Protože ty, když to používáš, že to je napojené, že to ještě není teda sharované, očividně, když to shareuju, tak to zmizí, ale tam můžeš přidávat komentáře přesně na.

[29:57] Tomáš Landovský: Ale to nejsou komentáře, to nejsou komentáře, to jsou.

[30:01] Petr Černý: A on odpoví přímo v tom vláknu, on to vidí sám.

[30:05] Tomáš Landovský: To jo, ale.

[30:05] Petr Černý: Ty to pošleš a řekneš, ať to přečte rovnou Claude a ať na tom pracuje.

[30:10] Tomáš Landovský: A kde to je? V artefaktech? OK.

[30:12] Tomáš Landovský: Já když si otevřu nějaký artefakt, your.

[30:15] Petr Černý: Pokud jsi ho nasharoval, tak tam máš tlačítko na komentování a když někam dáš komentář, tak máš dvě možnosti: buď jenom submitnout komentář, anebo poslat to Claudovi.

[30:28] Petr Černý: A on na tom začne dělat rovnou, pokud je napojená session na to, ale.

[30:32] Tomáš Landovský: No, ale já právě jsem měl tu zkušenost, že když dám teda nějaký Markdown, tady třeba tenhleten, tak je tady: "Tell Claude, what do you want to change?" Jo. Takže jako nevím, jestli nezačne hned něco dělat, no.

[30:53] Tomáš Landovský: Jako jo, bylo by to super, kdyby to takhle fungovalo, ale tady to je vyrenderované, to je asi dobře. Nevím, jestli by to vyrenderovalo třeba i ten, jestli by to vyrenderovalo ten Marmaid diagram a tak, no.

[31:10] Tomáš Landovský: Jo, já věřím tomu, že ty nástroje k tomu budou konvergovat, k tomuhle, jo.

[31:16] Petr Černý: Ale já ani neříkám, že to je perfektní. Já právě si myslím, že by bylo super se tím inspirovat, nebo to jsem se snažil, nebo to jsem plánoval udělat. A mimochodem, já ještě předtím, než jsem zkusil ten artefakt, tak právě jsem si už začínal nechávat během té práce na tom Medeview, přesně, když bylo nějaké hotové kolečko implementace, tak jsem po něm chtěl HTML stránku místo Markdownu a místo toho, aby mi to napsal do chatu, abych nemusel scrollovat zpátky furt, tak prostě seznam kroků, co mám dělat, abych viděl

[31:49] Petr Černý: všechny obrazovky a s bodama uprostřed, kde mám říct Claudovi: "Tak jsem dodělal tohle, teď mi resetni state na tohle, ať můžu zkusit jiný scénář."

[32:06] Petr Černý: Takže já jsem si právě nechával udělat takovéhle seznamy, takovéhle to-do listy v podstatě. A pak mi snad on nabídl, že to může udělat ještě líp v tom artefaktu, že to bude interaktivnější, že to je nativní.

[32:24] Petr Černý: Takže pro tyhle účely to bylo už docela pokrok za mě, ale chybí tam nějaké věci a hlavně to sharování mě teda teďka naštvalo, že to nejde.

[32:32] Tomáš Landovský: No a ještě navíc, hlavně totiž já nechci, aby on něco začal zpracovávat, jo. Tam je důvod, proč já to mám jako submit, review, protože já si to chci procházet, pracovat na tom, a ne, že se mi to pokaždé změní, když já mu tam něco napíšu, jo. To já nepotřebuju.

[32:46] Tomáš Landovský: Takže já to chci jako batchovat, udělat si review, poslat mu to a znova se na to jako podívat, no. Co tomu ještě chybí, tak je, aby to ukazovalo dobře div, jo.

[32:57] Tomáš Landovský: Jakože vlastně mně by se líbilo, kdyby se to pokaždé, kdyby se ta moje verze stage-la, vlastně, kterou jsem poslal, a když udělá nějakou změnu, tak aby v tom byl vidět ten div jenom toho jakoby toho round, toho, jak se tomu říká?

[33:13] Petr Černý: Toho okolí.

[33:15] Tomáš Landovský: Round turns.

[33:16] Petr Černý: Jo, takhle.

[33:17] Tomáš Landovský: Těch jako, toho kolečka, jo. To znamená, já si to přečtu, to je můj aktuální stav, okomentuju to, submitnu to a on udělá změny a já je vidím jako změny, ty aktuální. A takovýchhle koleček můžeme otočit víc a ty změny se nebudou akumulovat.

[33:32] Tomáš Landovský: Já vždycky uvidím, jasně, tohle jsem si už čet, vidím, jaké změny tady byly, a teď chci vidět změny, které udělá po tom mém novém jakoby submitu, jo.

[33:41] Petr Černý: Ale když tak v Claude Code v CLIčku, v tom chatu, je příkaz div, nebo skill div, a nevím, jestli jsi to zkoušel.

[33:49] Tomáš Landovský: Ne.

[33:49] Petr Černý: Je to prostě jenom div, ale je to přesně po těch krocích. Takže ty, když máš čistý state v Gitu, tak on dělá jednu změnu, pak druhou, pak třetí, tak v Gitu samozřejmě uvidíš prostě změny všechny dohromady nakomitnuté. A tady to je po krocích.

[34:06] Petr Černý: Tak buď to zkus, anebo třeba z toho, třeba tyhle informace z toho dostaneš a můžeš je mít tady v nějakém sidebaru v tom tvém toolu, ať tam můžeš prostě komentovat a on ti řekne: "Tak, teď je to hotové," a pingne tě tam, nebo prostě si to otevřeš znova a budeš tam mít další krok těch změn. Bylo by se to dalo spojit.

[34:30] Tomáš Landovský: No.

[34:31] Petr Černý: Hustý. No, tak to zní dobře. Každopádně já už jsem byl docela překvapený, docela spokojený s tím, co jsem z toho jako, co mi to vyplivlo.

[34:43] Petr Černý: A můj cíl teďka je teda být, dostat se do bodu, kdy jsem spokojený s tím, to už jsem asi spokojený, co je na stagingu, jak funguje ta první verze té integrace, co jsem dělal, a abych byl spokojený s tím balíčkem pro Tomáše Ferrana, aby to mohl, aby mohl udělat review, když na to bude mít už čas. A prostě už to chci mít z krku.

[35:09] Petr Černý: No a druhá věc je, že samozřejmě, i kdyby byl rovnou spokojený se vším, že jenom upravíme nějaké copy, co jsem se tomu nevěnoval zatím, protože chci, už chci feedback, než to budu ještě zlepšovat, tak před deployem, před releasem na produkci bych chtěl udělat aspoň nějaký kód, nebo jsem to aspoň plánoval. Já jsem ten kód, já samozřejmě tuším ještě teďka z hlavy, jako jak je to navržené, ty změny v těch modelech, v databázi a tak dále, jaké jsou tam různé flow, jak je to rozdělené do service, přibližně.

[35:52] Petr Černý: Ale ten samotný kód jsem prostě nečet. A těch review bylo dost, včetně nějakého mého testování z pohledu uživatele, ale zatím jsem to nečetl jako kód, prostě.

[36:07] Petr Černý: No a přišlo mi, že to samotné code review, když budu chtít dělat nějak tradičněji, nebo tak, jak bych to dělal doteď, tak že mi to prostě zabere celý jeden další den minimálně, a že to je strašně moc. Tak jsem se zkusil inspirovat nějakými dalšími podklady, zase jsem poslouchal nějaký podcast a tak dále.

[36:27] Petr Černý: No a že bych se jako mohl dostat k tomu, kdy skoro nic z toho kódu číst nemusím, že fakt si jenom ověřím, jestli tam není nějaký jakoby fuck-up, který je spíš jako design té featury, té v rámci databáze a prostě nějaké závislosti, co má vliv na nějakou jinou, třeba jinou featuru, která by se neměla rozbít kvůli tomu a tak dále. No a nechal jsem to, nechal jsem vytvořit nějaký quality proces, který využívá nějaké věci, které třeba já jsem původně ani nikdy nepoužil, což je třeba mutation

[37:07] Petr Černý: testing, kdy ti to zaprvé jakoby zaručí coverage, což já jsem neměl rád zbytečné testy, ale v tomhle případě si myslím, že se fakt hodí, když máš teda všechno otestované, na všechno máš testy. A ten mutation testing, který ti, jestli to znáš, tak ti to asi nemusím vysvětlovat, ale prostě to flipuje podmínky a tak dále, a ty testy se pak musí rozbít. A pokud se nerozbijí, tak to znamená, že něco nemáš pořádně otestované a něco ti může prostě, nemusí fungovat.

[37:43] Petr Černý: Takže takovéhle věci, plus trošku mi to doplnilo Rubocop a tak dále, aby to prostě zaručilo kvalitu. A ještě mi na tom Claude udělal asi další dvě kola review celé branche, po tom, co, po těch všech kolech separátních, co jsem dělal, té implementace.

[38:03] Petr Černý: No a možná, že se dostanu teda k tomu, že to jako nemusím dělat to code review. A já právě teďka jsem tak na hraně toho, jestli teda si na to mám vyhradit ten čas, mám říct Tomášovi: "Hele, fakt bych asi měl udělat code review, než to půjde do produkce, ale bude to stát x hodin navíc, protože je to prostě náročné, je to hodně, je to velké."

[38:28] Petr Černý: A vzhledem k tomu, že jsem nedělal code review v každém kole, protože mi to trvalo hrozně dlouho a bylo lepší dostat nejdřív výsledky nebo nějaký feedback, a ještě navíc se ty věci měnily v průběhu, takže to nebylo efektivní, takže tam jsem to využil na maximum, že máme tenhle způsob agentický toho vývoje. No, ale teďka nevím, no, jestli teda budu, nebo nebudu dělat code review.

[38:51] Tomáš Landovský: Tady je vlastně otázka, jako kde by měla žít ta naše znalost, jo. Protože dřív ta naše znalost žila v kódu, že jo. Ty jsi jako věděl, co to řešení dělá, protože jsi psal ten kód, takže jsi přesně věděl, kde jsou podmínky, jaké, věděl jsi jako, jak ty věci fungují, co to umí, co to neumí.

[39:11] Tomáš Landovský: A když jsi potřeboval něco dohledat, tak jsi šel do kódu a podíval ses na nějaký detail, který sis třeba přesně úplně nepamatoval. A vlastně tohle evidentně odchází, tady to, tady ta doba, jo, nebo už odešla v podstatě.

[39:29] Tomáš Landovský: Ale nevím, jestli by neměla být jiná vrstva teda, jo, jestliže jsme teda věnovali jako psaní kódu AIku, tak jestli by nad tím neměla být vrstva, která, v které budeme dělat to samé, které budeme rozumět, budeme ji psát, budeme ji revidovat, budeme přesně vědět, co v ní je, jo. Bude to o nějakou ještě úroveň abstrakce jako výš vlastně.

[39:54] Tomáš Landovský: A protože pokud se vzdáš, jako pokud se vzdáš čtení kódu a nemáš tuhle vrstvu, tak vlastně nemáš ownership toho řešení de facto. Tak vlastně nevíš, co to dělá.

[40:09] Tomáš Landovský: A musíš se zeptat Clauda, co to dělá.

[40:11] Petr Černý: No, a já jsem o tom přemýšlel taky. A já si myslím, že ten problém je, že když je kód ten zdroj, nebo to médium, kde jsou zapsané ty znalosti a to chování, a je tak, je to doslova prostě, tam už nemůže být žádná výchylka, tam nemůžeš prostě zapomenout aktualizovat tu svoji dokumentaci.

[40:42] Petr Černý: Pokud ten kód je tvoje dokumentace, tak to je nejlepší, protože se to nevychýlí. Pokud víš, co dělá ten, nebo pokud znáš ten kód, tak znáš jeho nedostatky, znáš, jestli prostě všechno funguje a tak dále.

[40:56] Petr Černý: Zatímco když to budeš chtít abstrahovat výš, tak zatím jediné možnosti, co máš, tak jsou všechny jako duplikace těch znalostí. A to se může vychýlit.

[41:11] Petr Černý: A z mojí zkušenosti se to s agenty pořád vychyluje, protože agenti zapomínají něco pokrýt. Prostě oni něco třeba neaktualizují, oni to třeba zduplikují, protože si nevšimli, že to tam už je a že už to je vyřešené, jenom se to jmenovalo jinak, protože v tomhle kontextu to chování pojmenovali jinak.

[41:33] Tomáš Landovský: Ty to říkáš, proč to nedělat, ale neříkáš jako buď jak to, jaké udělat opatření, aby si tomu mohl věřit, tomu, té abstrakci, anebo jako jak to teda vlastně udělat. Jako kde teda leží ten ownership v tom případě? Leží v neustálém dotazování se, prostě, jo.

[41:54] Tomáš Landovský: Prostě jako za mě ta vrstva musí existovat, jinak nemáš co vlastně revidovat, jakoby, jo. A nebo bych to chtěl jako nechat vlastně generovat on the fly vždycky, v podstatě.

[42:08] Tomáš Landovský: Mít jakoby pravdu v kódu, ale pravda v kódu taky není pravda v kódu, že jo. Protože prostě, já nevím, no.

[42:16] Tomáš Landovský: Jakoby ta je, já nevím, jestli ti někdo z kódu může dát ten příběh tak, jak ho ty píšeš, jako seshora, že jo. Prostě ty přijdeš a řekneš: "Chci tady prostě, nevím, popíšeš něco, co je ve zdravokartě, jak se to má chovat," jakoby, jo.

[42:33] Tomáš Landovský: A teďko muselo by to být napsané tak dobře, aby, muselo by to být napsané tak dobře, aby to z toho šlo zrekonstruovat, protože i ta rekonstrukce může mít svoje vady, že jo. Že zapomene na nějaký file, prostě nějaký file neobjeví, jo.

[42:53] Tomáš Landovský: Že ho má vlastně jako brát v potaz, jo. A tak, no.

[42:58] Tomáš Landovský: Takže.

[42:59] Petr Černý: Jako za mě, za mě, pokud nebudeš mít z kódu komentáře, a to je podle mě jedno z řešení, jo, to pak okomentuju ještě, ale pokud nemáš komentáře v kódu, tak ten kód je jenom seznam možností, co se můžou stát. To je, to jsou prostě seznam featur, co třeba, pokud je to webová appka, tak z toho kódu pro to UIko je třeba vidět, co všechno je možné udělat, když tu appku používáš. A ze zbytku kódu vidíš i nějaké další věci, třeba co se může pokazit, co se stane,

[43:37] Petr Černý: když se stane tohle, i když se k tomu ten uživatel sám třeba nedostane. Je to nějaký interní proces, nějaké joby, a tak dále. Tak tohle ti podle mě popisuje, co ta appka může dělat, ale nepopisuje ti třeba, proč ta appka existuje.

[43:53] Petr Černý: Tam z toho není poznat, co je třeba ta hlavní flow, co ten uživatel bude dělat. To, že může dělat deset dalších věcí, je něco jiného, ale co to vlastně má dělat, to tam není.

[44:04] Petr Černý: A proto.

[44:05] Tomáš Landovský: Proto to má ten shape, jaký to má, že jo.

[44:07] Petr Černý: No, no, no. A když budeš mít hodně dobrý kód, což za mě je prostě modularizace na něco podobného té Unixové filozofii, kdy prostě máš malé balíčky, které dělají malou věc, a to prostě jeden důvod, nebo jedno využití, tak máš spoustu modulů, které prostě teda každý pokrývá nějakou featuru třeba, a ty se nějak skládají dohromady, tak tady z toho už vůbec, jako to je podle mě dobrý kód, ale vůbec z toho nebudeš vědět, proč to tak je, proč to existuje všechno třeba.

[44:42] Petr Černý: Takže když teďka si jako představuju, že by stačilo tam mít v kódu komentáře a ten kód bude teda pokrývat úplně všechno, a třeba bys na to mohl mít napojený nějaký tooling, který automaticky zaručí, že to AIko, že ten model se prostě musí podívat, jestli to sedí s nějakým externím zdrojem té dokumentace, který je namapovaný jedna ku jedné, ale je to high-level abstrakce, high-level popis toho. Ale nikdy to nebude napojené jako přímo v kódu, nebude to, nebude se to prostě volat nějak navzájem automaticky, musí to

[45:27] Petr Černý: zpracovat AIko. A furt tam za mě je teda ten problém, že AIko není dokonalé, stejně jako člověk, prostě na něco zapomene, zdokumentuje to trošku blbě, a tak. Ještě mě teda napadlo jedna věc, a to je možná blbost, ale napadlo mě, že by třeba mohl časem existovat nějaký víc high-level programovací jazyk, který by ale fungoval tak, že máš prostě hezký high-level, asi ani ne scripting language, prostě něco jako Ruby, bude to vypadat jako Ruby, ale umí to, má to málo featur, umí to hlavně podmínky a

[46:09] Petr Černý: všechno spojené s tím, a definice funkce, a těch, té komplexity těch podmínek a tak dále, je jediné, co to bude dělat, a uvnitř bude implementace třeba v Rustu, ale ty ji nečteš. Ty jednotlivé implementace, nebo jak se tomu říká, no, prostě implementace té funkce, to čte jenom agent.

[46:41] Petr Černý: Tak třeba něco takového. A to mě napadlo včera, když jsem poslouchal, když jsem poslouchal ten dlouhý podcast s DHH a, jak se jmenuje, Lex Friedman.

[46:52] Petr Černý: Doporučuju.

[46:55] Tomáš Landovský: Já jsem si udělal takový jako governance systém na dokumentaci, protože mně vlastně vadilo, že mám různé dokumenty v různém stavu, markdowny prostě v repu, nevíš, co v nich je pořádně, Claude si je může libovolně vlastně načíst a neptá se tě na to, a sám to neumí jako vyhodnotit, jestli ten dokument je dobrý, nebo ne, jestli mu může věřit, nebo ne.

[47:24] Tomáš Landovský: Takže mám takový jako governance systém, a jedna jeho featura je, že pokud je to jako živoucí dokument, jo, vlastně dělí se to jako na třídy, já tady možná mám někde guides, někde HTML, tady, kde je tady to HTML, tady learn HTML, a jo, takže vlastně máš jakoby, máš třídy, které ti jako definují, co to je za dokument, jo.

[48:21] Tomáš Landovský: Buď je to jako immutable document, něco jako že je jakoby, že je vlastně pravdivý v nějakém čase. Třeba záznam ze schůzky je prostě pravdivý v čase, v tom daném bodě, jo.

[48:35] Tomáš Landovský: Nebo dokument, který právě jako trackuje nějakým způsobem kód, v podstatě, jo. Nebo, že jo, ty jako dokumentuješ něco a typicky dokumentuješ nějaký kód, nebo něco takového, jo.

[48:47] Tomáš Landovský: A nemusí to být ani kód. Tak vlastně tady je povinný atribut, co to coveruje, vlastně.

[48:52] Tomáš Landovský: A teďko třeba ten living dokument je zajímavý tím, že má teda, ten framework vyžaduje, aby living třída dokumentů měla pole toho, co coveruje, to znamená jakoby, tady to je někde vidět, jo, že máš tady tohle, jo, máš README a to má cover, to coveruje model.md. A když se v modelu md něco změní, tak ty musíš verifikovat to, že tenhle ten dokument je furt dobrý, prostě.

[49:23] Tomáš Landovský: Dá se to, dá se to vynutit CIčkem třeba.

[49:27] Petr Černý: Jo, jo, mě to napadlo teďko.

[49:29] Tomáš Landovský: Hele, tohle se změnilo, je potřeba něco změnit v tom dokumentu? A ty si to klidně můžeš jako AI navrhnout, že jo, nechat jako AI navrhnout ty změny v tom dokumentu, ale vlastně to je právě ta vrstva, kam se jako posouvá najednou ta tvoje pozornost a ta tvoje vlastně jako odpovědnost, že už, nebo odpovědnost, máš odpovědnost za všechno, ale nečteš sice kód třeba, ale měl by sis přečíst tenhle ten dokument, který popisuje nějakou věc, jakoukoliv prostě, a vlastně vědět, jestli za něj můžeš dát ruku do ohně, že

[49:57] Tomáš Landovský: to je jako správné, jo. A potom se z toho počítá automatické skóre, jo, jakoby, jakoby nějaké, jestli to je trustworthy, jo. A to pak právě může posloužit Claudovi, že bude vědět, hele, tady ten dokument je jenom jako advisory, já si z něho jako, můžu se na něj podívat, ale vím, že mu nemůžu věřit, že to není jako nějaká pravda, jaká teďko je, prostě, jo.

[50:23] Tomáš Landovský: Jo, a to je strašně důležité. Takže vlastně má to, má to jakoby, má to front meter, to znamená, je to queryovatelné, jo, prostě.

[50:33] Tomáš Landovský: Takže vlastně Claude může jako vyslat nějaký scan v podstatě toho, jako o čem se tady bavíme, že jo, tak co, jaké dokumenty tohle můžou pokrývat třeba, podívat se, mají tady description, takže se můžeš vlastně podívat jako na to, jako high-levelově, že jo, můžeš si z toho vygenerovat prostě index těch dokumentů a podobně. A je v tom právě embedované to, aby si tomu jako mohl, aby se tam právě počítalo to skóre, to, jak moc tomu jako věřit, no.

[51:03] Petr Černý: To zní dobře, no.

[51:04] Tomáš Landovský: Postupně to jako nějak adoptuju, ale no, no. A má to i migrace třeba, jo, jako že když uděláš nějakou změnu prostě v tom frameworku, tak vlastně se k tomu vygeneruje migrace, která říká, hele, tady ty věci by se měly stát na těch dokumentech, jo. A má to jako postupnou adopci, takže máš tady, máš tady takové něco, jako je ten Rubocop to-dos, jo, vlastně co se jako ignoruje, tak to má, to má stejný systém, aby si to mohl jako začít adoptovat pro nějaké repo, jako postupně a

[51:36] Tomáš Landovský: nemusel to jakoby vlastně všechno invalidovat a tak, no.

[51:44] Petr Černý: Jo, to jsem přesně přidával taky, nebo Claude mi to přidal, a to samé používáme na druhém projektu v ESLintu, nebo ještě v něčem dalším. To je super. A jak se počítá jako to skóre toho, to bylo trustworthiness skóre?

[51:59] Tomáš Landovský: Load a scenario, fresh reference, stale living document.

[52:06] Petr Černý: Jo, takže pár kritérií, které.

[52:08] Tomáš Landovský: No, no, no. Je tady jakoby ta třída, jo. Immutable je, není citable nikdy, jo.

[52:14] Tomáš Landovský: Agent may not cite this. Living může citovat jenom, když je, když vlastně sedí to, že když, když ty, když to datum, tady last verified, je starší než datum, kdy byly upravené ty cover, ty cover věci, jakoby ty fily, a type reference, to už je jedno, ten typ už na něm nezávisí, a transient, ten transient je dokument třeba z pecka.

[52:55] Tomáš Landovský: Máš z pecku, napíšeš z pecku, pracuješ na ní, ale v určité chvíli ta implementace ji přeroste, v podstatě tu z pecku, a už jí nemůžeš věřit, jo. Takže tam je potom jakoby na tobě, aby si ji označil jako killed třeba, nebo jako draft, jo, a nebo jako shipped, a už prostě se to bere, že to není citable, v podstatě nemůžeš tomu jakoby věřit, jo.

[53:21] Petr Černý: Jo, jo, s některými věcmi souhlasím v tom smyslu, že je používám, tyhle ty patterny, jako že třeba všechny moje z pecky v podstatě jsou, jsou zahoditelné. A jenom na některých projektech, kde jsou ukládané na GitHubu, tak tam ještě zůstanou ty GitHub issues, nebo ty, nevím, jak se to tam přesně ukládá.

[53:47] Tomáš Landovský: Vlastně ta repo je v tom, že máš z pecku, ta je transient, a pak ty z ní uděláš living document, jo. To znamená, řekneš, jasně, já teďko vědomě transformuju z pecky, kterou jsem psal, v nějaký living document, dám jí vlastně ty atributy, které má mít, to znamená vlastně jaké soubory, na jakých souborech je to závislé, a kdy jsem to verifikoval, a pak už v pohodě, pak už můžu to nechat žít, že jo.

[54:13] Petr Černý: No a pro koho to je? To je i pro tebe, i pro agenty?

[54:17] Tomáš Landovský: No, no, pro oba dva, no, jasně. Je to moje vrstva, je to to, co bych já, je to, co já chci číst. Takže já nechci číst kód, já chci číst tyhle ty z pecky.

[54:26] Tomáš Landovský: A je to pro agenty, aby věděli, když tady připravuju nějakou práci, tak na co se můžu a nemůžu dívat, nebo jako můžu se dívat na všechno, samozřejmě, ale musím, ale vím najednou, že prostě u tohohle toho dokumentu, u tohohle toho dokumentu, tady ještě jedna věc je, tady u immutable dokumentů může být superseded by, takže když máš třeba nějaké ADRko třeba, jo, které bys jako nahradil něčím jiným, tak když bude superseded by, tady by měla být cesta, teda ne jako číslo, ale cesta, tak víš, že to není

[55:04] Tomáš Landovský: citable najednou pro tebe, jakoby, jo.

[55:07] Petr Černý: Jo, jo, jo. No, tak to souhlasím, jako já bych to právě oddělil. Já bych jakoby to nechal jako zdroje, které čteš ty, jako prostě driver, jako ten uživatel, a agent to čte jenom, nebo používá tohle hodnocení jenom pro to, aby věděl, co ty čteš, a nebo co můžeš, nebo nemůžeš číst, jak moc je to pro tebe aktuální informace třeba, ale on by to podle mě neměl používat jako informace pro něj, protože on by měl vždycky číst ten source code, a pro něj by to vždycky měl být

[55:51] Petr Černý: source of truth, prostě ten kód by, ten kód je source of truth, prostě to je, a ať už je v stavu, ať už je to hezký nebo nehezký kód, tak to je prostě source of truth, který by měl ten agent prozkoumávat vždycky aktuální. A tohle to bych jako oddělil. Tohle to jsou informace pro tebe, které si můžeš přečíst, aby jsi nemusel se vždycky ptát Clauda, ale stejně se ho většinou budeš ptát.

[56:20] Petr Černý: Já si myslím, že není nic špatného na tomhle tom procesu. Jediný problém za mě je mít ty informace kdykoliv prezentovatelné, jako tu dokumentaci prezentovatelnou vlastně nejenom pro sebe, ale když to chceš pro někoho jiného třeba, tak jak to jako udržovat i na téhle té úrovni.

[56:40] Petr Černý: Protože já jako nemám problém na svých projektech, i když se k tomu vrátím po dlouhé době, tak jako vždyť mně stačí kód a Git a komentáře v kódu, které už mi nakonec nevadí, že jich je tolik, občas jsou trošku moc dlouhé od Clauda, ale prostě tam jsou, jsou tam, aby bylo vidět, proč ten kód tam je, pokud to není jasné. Občas to i je jasné, tak aspoň se můžu podívat já a vím, co a proč to dělá.

[57:09] Petr Černý: A ten kód, když si trošku přečtu, tak vím i jak, ale většinou to řešit nemusím, že jo. A když se vrátím na svůj projekt později, tak z Gitu vím, co se kdy stalo, respektive to ví Claude, který mi to řekne, že jo.

[57:24] Petr Černý: Takže jako pro mě, já asi nemám problém, jako že bych potřeboval mít ještě nějakou separátní dokumentaci, možná nějaké diagramy a tak, to jako je hezké, a to by bylo vlastně taky dobré napojit, to by s tím jako mohlo souviset, že tam toho máš jako víc než jenom, no vlastně, ale stejně se prostě zeptáš Clauda, asi by ti neměl každý den prostě generovat ten stejný diagram s jednou malou změnou, to je trošku divné, ale nevím, no.

[57:57] Petr Černý: Za mě teda hlavní díra je prostě to code review teda vyřešit, abych měl jistotu, že ho nemusím dělat, že nemusím číst kód. A druhý je teda, podle mě to s tím souvisí, to, co jsem řešil na začátku callu, že to potřebuju prezentovat i někomu jinému a být schopný udělat.

[58:19] Tomáš Landovský: Tam je ten, tam je ten.

[58:20] Petr Černý: High-level verzi prostě těch informací.

[58:23] Tomáš Landovský: Jasně, no, ale vlastně to znamená, že ty říkáš vlastně, že ty nepotřebuješ žádnou vrstvu, kterou čteš, v podstatě. Ty děláš jenom změny, ty děláš jenom změny, vlastně. Takže, takže no, mně tohle nesedí, mně ta filozofie prostě nesedí, protože vlastně najednou, najednou děláš, ty jo, já nevím, jak to jako popsat, jak to jako zformulovat vůbec.

[58:55] Tomáš Landovský: Protože vlastně netušíš, co tam v tom je, protože děláš vždycky jenom nějaký diff, jenom řekneš, hele, tady to asi funguje takhle, a teď to jako chci změnit takovýmhle způsobem, jo. A ten kód si ani nepřečteš, víš, takže vlastně tohle mi na tom hrozně nesedí, neumím to, neumím to jako líp pojmenovat, no.

[59:18] Petr Černý: Jako já možná, možná chápu.

[59:21] Tomáš Landovský: Protože dřív, tam je právě jako, jaký, kam je ten posun teda. Dřív jsme četli kód, věděli jsme, co v něm je, uměli jsme to dohledat, dneska to v něm nedohledáváš, ptáš se Clauda, jo. Nečteš ho, to znamená, nevíš, co v něm je, takže jsi vlastně úplně ztratil jakoby kontakt s tím řešením, v podstatě.

[59:41] Tomáš Landovský: A na každou věc, pokud si ji nebudeš pamatovat, tak se budeš muset zeptat, protože nemáš žádnou věc, která je jakoby tvoje, kterou ty si spravuješ, a u které říkáš, jo, já vím, že to, co je tady napsané, je správně, prostě.

[59:55] Petr Černý: Jo, jako ber to, co jsem teďka, na čem jsem to jako zakončil, to je trošku jako takový nápad, jak, nebo jak to říct, to je jako alternativní řešení, které asi není vhodné na každý projekt, ale zároveň jako chápu, že ty, když se vrátím jako k tomu, že jsme si představovali třeba ten jeden programovací jazyk a o level výš, tak vlastně to by bylo nejlepší, když ten tvůj, ta tvoje dokumentace, jak to máš jako napojené přímo na ty soubory a tak dále, tak ona by vlastně mohla být

[60:36] Petr Černý: ta úroveň výš, že ty vlastně místo toho, aby si otevřel source code, tak ty si otevřeš dokumentaci aplikace a jako kdyby si připsal sám nějakou další sekci, nebo změnil nějakou větu v nějaké části nějaké featury, jako kdyby to byl kód, a najednou se to bude chovat tak, jak jsi to napsal třeba, tak to mi přijde víc jako, co.

[61:03] Tomáš Landovský: Je to vlastně hezká myšlenka, ale nikdy se to nestane, protože by ses musel učit nějakou novou syntax. A cesta, veškerá cesta přes AI je neučit se novou syntax. Veškerá cesta přes AI je mluvit přirozeným jazykem.

[61:18] Petr Černý: Ale já jsem myslel jazyk přirozený. Já si myslím, že tohle je něco, kam směřuješ teďka.

[61:23] Tomáš Landovský: Že jo, programovací, nový programovací jazyk, když řekneš programovací jazyk, tak je to pro mě otázka determinismu. Programovací jazyk je parsovatelná, má syntax, je deterministický, nedá se využít jakoby jiným způsobem, a podobně, jo. Takže, takže když řekneš programovací jazyk, tak mi to evokuje všechny tyhle ty věci.

[61:41] Tomáš Landovský: Pokud to něco z toho nemá, pokud to nemá pevnou syntax, jo, tak to není programovací jazyk a může to být jenom jako přirozený jazyk.

[61:50] Petr Černý: Jo, a já jsem to tak myslel právě, jako že by to fungovalo jako ta vyšší, ten vyšší level toho programovacího jazyka, ale jenom v tom, že by to bylo programaticky napojené na ten soubor, ve kterém je source code. To znamená, že by bylo jistější, že se nic neztratí, když se změní něco v source codu, tak budeš přesně vědět, že tady k tomu máš tuhle část dokumentace, která je potřeba teďka, aby se aktualizovala, nebo ověřila, že to funguje pořád podle toho stejně, nebo ji aktualizovat podle toho, jak

[62:30] Petr Černý: to teda nově má fungovat, a tak dále. A ty v podstatě jsi to chtěl místo toho, aby jsi četl kód, že jo, takže Claude by ti měl vygenerovat tuhle dokumentaci a ty se podíváš, jestli ti to dává smysl, jestli to řeší ten problém, co to má řešit, a jestli ho to řeší správně, podle toho, jaký level čteš, jestli tam třeba rozklikneš, že chceš k tomu ty technické detaily, nebo čteš jenom ten user journey nějaký. A když se ti to nelíbí, tak mu řekneš, hele, tohle bych asi

[63:01] Petr Černý: udělal jinak, a v kódu bych to dal někam jinam třeba, nebo patří to prostě do nějakého jiného modulu, nebo tohle nebude fungovat, protože to neřeší tuhle tu, tenhle edge case. A to už bys to mohl jakoby psát rovnou do toho. A já neříkám, že bys měl psát, dělat ty změny jako ručně, že bys otevřel dokumentaci, takže bys přepsal tu větu a si to pak přečte Claude, ale taky vlastně může klidně.

[63:32] Petr Černý: No, takže to, co myslím, že by mohlo nahradit ten programovací jazyk, o kterém jsem mluvil, tak místo toho budeš mít takovouhle dokumentaci, a ta může být normálně anglicky, budeš to prostě psát jako věty, nebo co se bude hodit zrovna pro toho kontextu, a máš tím vyřešené, že zaprvé se kdykoliv můžeš podívat na tuhle tu verzi v té dokumentaci, což by mělo, mělo by to být správně, to jako jistotu asi nebudeš mít nikdy, ale tu jsi neměl často ani v kódu třeba, ale měl bys mít jistotu, že

[64:12] Petr Černý: to je pokryté všechno, že je to namapované na soubory, na source code, takže víš, že na to Claude nezapomněl. Jestli to napsal správně, to už je jako trošku loterie, a nevíš, jestli napsal správně i ten kód samotný, tak, ale něco by to mohlo vyřešit tohleto.

[64:35] Tomáš Landovský: Jestli by to nemělo být něco jako ten Gerkin, pamatuješ si Gerkin? Gerkin, to je.

[64:40] Petr Černý: Ne, ale bylo to zmíněné v tom podcastu, co jsem poslouchal, a to je taky něco s diagramama, ne?

[64:50] Tomáš Landovský: Gerkin, jestli si to správně pamatuju, tak je právě.

[64:53] Petr Černý: Jo, to je jazyk dokonce.

[64:54] Tomáš Landovský: Byznysový text, jsou to, je to vlastně byznysové rules jako testy, jo, takže jsi tam měl nějakou, myslím, že tam byla nějaká interpolace, že to byly nějaké šablony, kde jsi jako popisoval něco, co se má stát, nebo jak se to má stát, a to se mapovalo teprve do RSpec testu, podle mého. Podle mého to takhle nějak jako fungovalo. A tak je otázka, jestli tohle to jakoby neoživit vlastně, protože najednou, co na tom bylo pracné, pracné to bylo to jako udržovat všechno, jo.

[65:29] Tomáš Landovský: Protože jsi musel udržovat ty Gerkin testy a k tomu ty RSpecy na to navázané, takže dneska vlastně tohle by to jako řešilo kompletně, protože tu vazbu by pak udělal Claude, nebo by to prostě ověřila jakoby AI, že to funguje, a právě by ti to mohlo, když jsi mluvil o tom, že bys mohl jít do různé úrovně vlastně jakoby podrobnosti, tak mě napadlo, že by bylo vlastně hezké to mapovat na RSpec testy, jo, kde oni testují jak nějakou běžnou byznys logiku, tak nějaké edge casy, které v té

[66:05] Tomáš Landovský: dokumentaci nemáš, jo, a není potřeba, aby tam byly ty edge casy, pokud to není jako něco, co je pro byznys důležité, ale pokud to jsou jenom jakoby běžné edge casy, které si prostě jenom testuješ pro to, aby jsi věděl, že to řešení něco neopomíná, něco základního, jako že tam nesmíš napsat mínus jedna nebo něco prostě, jo, tak vlastně to by k tomu mohlo sloužit, že kdyby, a proto jsem si vzpomněl na Gerkin, kdyby, kdyby Claude provázel RSpec testy buď nějakými tagy, nebo něčím, co je zase programaticky

[66:37] Tomáš Landovský: dohledatelné, validovatelné a tak, jakoby s tou smyčkou, tak ty by už bys v ní mohl jako říct prostě, ukaž mi edge casy, a ono by ti to vyčetlo rovnou ty testy, takže by to bylo propojené s tím kódem, chápeš, jakoby, jo. Nějakým způsobem, do nějaké míry, ne úplně jakoby přímo třeba na ty třídy, možná taky, ale bylo by to napojené, třeba já chci od Clauda, aby psal testy způsobem, který, který popisují tu byznys logiku, právě. A tohle by k tomu krásně sedělo, že by sis to hnedko

[67:11] Tomáš Landovský: mohl vlastně rozkliknout a viděl bys, jasně, tady jsou tyhle ty jakoby věci, a já můžu jít tady do detailu, a když to tady to změním prostě a řeknu mu přes ten komentář, tady jsou moje změny, tak on to vezme, zapracuje to, aktualizuje kód, aktualizuje testy, podívá se, že jsou green, prováže to na tu dokumentaci, a ty si to jako odsouhlasíš, no. Takhle. No, jako, jako tímhle tím směrem, a pak vlastně, když si na to, když se na to podíváš jako nějaký systém prostě o několik let později,

[67:44] Tomáš Landovský: který ti někdo takhle jako naservíruje, jo, tak vlastně, tak vlastně to je způsob programování de facto, jo, že začneš popisovat nějaké use casy, nějaké věci, generovat nějaké obrazovky, a tyhle ty všechny věci se budou dít nějak na pozadí, a ty na ten kód už ani nebudeš vidět prostě, samozřejmě, budeš si ho moct nějak jako se na něj podívat, jo, kdyby jsi jako hodně potřeboval, ale prostě budeš to celé managovat a verzovat, a vlastně jakoby ten, ty tvoje merche questy už nebudou na ten kód v podstatě, ale

[68:13] Tomáš Landovský: ty tvoje merche questy budou na ty featury, co to má dělat, že jo. Pokud se to bude pořád týkat nějakého jako user facing, samozřejmě věci, že jo, když to bude nějaká deep level utilitka, no, tak nevím, jestli ji budeš umět namapovat jako do takovýchhle jako věcí, že jo, jestli tam nebudeš potřebovat, nevím, jestli by tady ta úroveň abstrakce seděla na všechny druhy jako programování, nebo všechny druhy jako softwaru, které jsou, jo.

[68:42] Petr Černý: Hm, to by asi, ty by asi byly testované odděleně, jenom jako ty detaily prostě, ty by nemusely být vůbec součástí těch hlavních testovaných, testovaných scénářů jakoby, a v tom scénáři by to mohlo odkazovat, hele, používá to tady nějaké utility, nebo shared moduly, nebo něco, a ty by měly svoje vlastní testy a pokrývaly by jenom ty jejich detaily, prostě jejich edge casy a tak dále.

[69:22] Tomáš Landovský: To je určitě budoucnost, tohle.

[69:25] Petr Černý: No, asi jo. A já si myslím, že to určitě někdo dělá, ale nevím, jestli už existuje nějaký dobrý tool, který by se dal přepoužít.

[69:35] Tomáš Landovský: Samozřejmě, aby to nebylo vázané na konkrétní agentský systém, že jo, protože to s tím nemá jako vůbec nic společného, s agentským systémem, tudíž potřebuješ, aby to bylo jako vlastně čitelné v lidském jazyce, případně aby v tom byly jako CLI nástroje, které si to AIko může využít, že jo, v tom jakoby, no.

[69:56] Tomáš Landovský: Hustý, hustý. No, někdo na tom určitě pracuje.

[69:59] Tomáš Landovský: A já jsem předtím měl ideu, vlastně, jo, já jsem předtím, já jsem si říkal, že právě nemám žádné téma na, a říkal jsem si, tady to mě jakoby drnklo, tady to mě drnklo, že by to mohlo být zajímavé téma, a to právě bavit se o tom, co je, jestli, a co je ta vrstva, a ono to bylo možná ještě něco jiného, ty jo, ty jsi ještě, ještě jsme se bavili o něčem jiném, ale asi jo, jako no, co je ta vrstva, za kterou teda budeme mít zodpovědnost,

[70:36] Tomáš Landovský: když to není kód. Ne, zodpovědnost, zodpovědnost jo, ale co budeš číst a co číst nebudeš, no.

[70:45] Tomáš Landovský: Tam jde o to, že ten, že tam je problém, že když by to byl nový jazyk programovací, tak, který by byl deterministický, tak bys tam neměl ten problém, který máš dneska, že ty se posouváš do vrstvy abstraktní, nebo ty se, ty posouváš tu abstrakci, ale ne díky determinismu, ale díky, díky AI a přirozenému jazyku, jo. Že ten, že ten step není jako větší úroveň abstrakce, ale s determinismem, jako máš vlastně, nevím, céčko, prostě, chápeš, jo, a nad tím máš navrstvené různé věci, po railsy a takovéhle věci,

[71:26] Tomáš Landovský: a vlastně programuješ jakoby anglicky, de facto by se dalo říct, že jo, ale syntaxem, syntaxí je to deterministické a tak dále, ale vrstva dokumentace, jakoby tam, tam ten determinismus jakoby není, no. Takže to je možná jako ten, ten problém, který to má, že se to nedá přirovnávat k vyšší vrstvě abstrakce v programování, protože tam máš tu nejistotu, jak ty instrukce budou interpretované, které tam dáváš, no.

[71:54] Petr Černý: No, no, a možná, že v tomhle bych se vrátil k tomu, že současné řešení je prostě se o tom bavit s Claudem, protože ty v každé části kódu, kterou řešíš, tak když budeš chtít řešit detaily té implementace, a v nějakých situacích to chceš, prostě pokud programuješ, nevím, operační systém, nebo něco v operačním systému, tak ty prostě občas nemusíš řešit, jak přesně vypadá ta funkce, která to implementuje, ale občas asi jo, občas ti nestačí jenom tady databázový model, ale potřebuješ vědět víc, a to zdokumentované asi nebude, nebo

[72:38] Petr Černý: jako kolik toho má být v té dokumentaci.

[72:40] Tomáš Landovský: Ale jako otázka.

[72:41] Petr Černý: To má být všechno.

[72:42] Tomáš Landovský: Takovéhle věci nemůžou být v abstrakci, jo, když si vezmeš, nevím, já nerozumím low-level věcem, tak budu jenom takhle nějak jako, jako jenom.

[72:51] Petr Černý: No, já taky ne, tak.

[72:52] Tomáš Landovský: Mimikovat, jo, ale že máš nějaký registr, který něco dělá, máš prostě nějaký modul, který, nevím, prostě hlídá, který, přes který protékají prostě připojení síťové třeba, jo, něco dělá, nějaké klasifikuje, nevím, máš prostě různé jako věci, a taky je dokážeš jako popsat, když bys jim rozuměl, tak bys je taky dokázal popsat lidským jazykem, co dělají, že jo, jo. Když to není matematická funkce, kterou nemůžeš popsat lidským jazykem, vlastně, protože, jo, ta nemá význam, že jo, ta jako do ní dáváš nějaké vstupy a ona ti dává nějaké výstupy,

[73:28] Tomáš Landovský: ta funkce, tak ta je napsaná matematickým zápisem, a ty rozumíš tomu, ty se učíš rozumět tomu matematickému zápisu, ale jako všechno ostatní je prostě, nevím, no, podle mě všechno ostatní se dá abstrahovat jazykem, jinak by to nemohlo být napsané programovacím jazykem, podle mě.

[73:52] Petr Černý: No, já to chápu, ale co, co všechno chceš popsat, jakože ty chceš popisovat.

[73:58] Tomáš Landovský: Ne, to ne, počkej, počkej, nebavíme se, já si myslím, že ta diskuze pořád je maličko jako, je tam takové malinké jako zrnka písku v ní, dře pro to, protože ty říkáš vlastně, jako každý se bavíme trošku o něčem jiném, ty říkáš, já budu vždycky se ptát Clauda, a dává to smysl, chceš mít jistotu, že se díváš na tu zdroj pravdy, což je kód, protože ten je exekuovaný, ne ta dokumentace, takže to chápu, takže ty jakoby, prostě cítím, že vyjadřuješ pochybnost, nemůžu věřit dokumentaci, nebo nemůžu pracovat s

[74:32] Tomáš Landovský: dokumentací, protože ta není jako, ta nemusí odrážet jako pravdu, pravdu odráží kód, proto chci pracovat s kódem, já tomu rozumím, ale já k tomu dodávám to B, ale kód nečteš, tak jak chceš spravovat nějaké řešení, když nemáš vrstvu, kterou máš ingestovanou v sobě, kterou vlastně, kterou si dáváš jakoby do kontextu, v podstatě, jo, ty si vytváříš kontext dynamicky, takže se zeptáš Claude, jak je tady to udělané, jak to funguje, a tak dále, prostě, jo, místo toho, abys měl jako, hele, tak potřebuju se tady zorientovat, jak funguje

[75:05] Tomáš Landovský: tohle, tak se podívám a řeknu, jasně, tady jsou entity, tady jsou nějaké procesy, tady jsou nějaké výjimky, nějaké věci, prostě, a tak dále, jo, takže, takže vlastně já, každý si asi klademe jako jinou otázku, já si kladem, já si kladu otázku, jako pokud už nečtu kód, ono je možná blbé, že tam je to sloveso čtu kód, jo, ale pokud vlastně neinteraguju se s tím softwarem skrze kód, de facto, jo, tak skrze co interaguju s tím softwarem, a skrze co zajišťuju nějakou kohezi, nějakou jako strukturovatelnost dobrou, prostě

[75:42] Tomáš Landovský: nějakou, že to má jako nějaký řád vlastně, jo, že když to budeš lepit jenom z jednotlivých požadavků a vůbec nebudeš vědět, do čeho jako spadají vlastně, tak podle mého nezajistíš jako dobrý kód. Možná ta teze je, jako pokud chci dobrou architekturu toho řešení a nechci věnovat času toho kódu, tak musím mít dobrou architekturu toho, té dokumentace, jo, vlastně, jako strukturování toho problému, ne skrz kód, ale skrz dokumentaci, a nad ní mám kontrolu, a tam si udržuju ten řád v tom, a pak jakoby doufám, a to je

[76:19] Tomáš Landovský: ta hypotéza, že se to převede do dobrého kódu jako, jako tou transformací potom pomocí toho jako LLM, jako, jako kódování, no.

[76:32] Petr Černý: Jo, já s tebou ve výsledku jakoby souhlasím, že tohle je, víceméně to je dobře popsané, jako dobře popsaný cíl, jaký bych rád třeba používal taky, místo toho, abych psal nebo četl přímo ten kód, ale co jsem jako, co mě napadalo za problémy, co jsem se snažil jako už skoro popsat předtím, teď mě to napadlo trošku hlouběji, je to, že ty, já třeba si představím, že teďka budu dělat code review a budu to dělat v chatu, protože lepší způsob teďka nemám, a ať už z toho budu mít

[77:14] Petr Černý: výstup jenom nějaký, který mi zůstane, který najednou začne nahrazovat ten source code, tak to je teďka vlastně jedno, a já budu řešit třeba problém, že ta featura má dělat něco a měla by fungovat víceméně takhle, tak musím se jako doptat, nebo, nebo číst, číst ten kód, abych zjistil, jak je to rozdělené prostě do tabulek v databázi, abych věděl, jestli to prostě dává smysl do budoucna, a tak dále, a jakýma classama, kde se to řeší, a jak přibližně se to řeší, ale já budu potřebovat najít nějaký, nějakou

[78:00] Petr Černý: mez, za kterou už nejdu hlouběji a nečtu přímo tu implementaci, a budu chtít popis na přesně té mezi, abych byl spokojený s tím, že teda jsem jako sebevědomý v tom, že to bude fungovat a že to není implementované nějak hnusně, nebo nějak riskantně, nebo že to je neoptimizované, ale zároveň abych nešel moc hluboko, abych nemusel číst úplně všechno, protože pak čtu prostě ten kód a je to neefektivní v nějakou chvíli, a ty když budeš chtít mít takhle postavenou tu dokumentaci, jako ten, ten source of truth, který

[78:43] Petr Černý: čteš ty místo kódu, tak ty musíš si vybrat nějakou, nějaký level, jak moc je to detailní, v podstatě, to je vlastně všechno, a musíš třeba case by case si vybrat, jestli tady chceš mít popsanou i ten způsob té implementace, a někde chceš prostě jenom high-level popis toho procesu, ale někdy budeš řešit třeba performance tohohle modulu, nebo téhleté, tohohle procesu.

[79:16] Tomáš Landovský: No, to nemůžeš.

[79:17] Petr Černý: A budeš toho potřebovat víc.

[79:18] Tomáš Landovský: To, no, právě jakoby.

[79:21] Petr Černý: Protože budeš chtít mít i svůj vlastní vstup do toho, jak by se to mělo implementovat. Občas to nechceš, občas to nepotřebuješ, my to často nepotřebujeme, protože tohle to moc neřešíme třeba, my chceme jenom vědět, že ano, opravdu tam není N plus jedna, třeba.

[79:37] Tomáš Landovský: No, a to potřebuješ. Tadyhle v tom případě si to představuju spíš tak, že máš nějaké jako standardní metriky a že vlastně ty taky od programátora, já bych se na to díval jako že to deleguješ vlastně, a chceš mít, chceš, ty potřebuješ vědět, že je to, ty potřebuješ mít jako kontrolní mechanismus nějaký, jo, který vlastně ti říká, jestli je to napsané dobře, jo, a myslím si, že by se daly určitě najít metriky, které, které můžeš jako použít, typu jako page load time třeba, jo, jakoby počet dotazů na

[80:23] Tomáš Landovský: průměrný počet dotazů třeba, N plus jedničkové dotazy, jestli tam nejsou, a takovéhle věci, a to jsou podle mě všechny věci, které by se daly jako zadefinovat na nějaké obecné úrovni, že je nemusíš definovat pro každou featuru zvlášť, ale že budeš mít obecné, obecně platné kvalitativní metriky, které chceš, aby to dodržovalo, a prostě bude, budou se sbírat takovým způsobem, aby ti to někde mohlo vyjet, že to vyjíždí z toho, ale, hele, když ti zčervenají testy, tak Claude na to taky bude reagovat a řekne, hele, tady mi zčervenaly

[80:56] Tomáš Landovský: testy, co se tady děje, takže když součástí těch testů, ne těch testů, a součástí toho celého procesu toho vývoje, bude vlastně i jakoby ten operations vrstva, která ti bude tady ty věci dávat, tak najednou to nebude v souladu s, stejně jako když přepíšeš kus procesu, tak on zjistí, že to není v souladu s tím, co má v tom kódu, tak když nebudou plnit tyhle metriky, tak on zjistí, že tady má něco, co musí jako debordelizovat a vyřešit, že jo, jo, takže, takže jako neříkám, že jako manažer

[81:29] Tomáš Landovský: vývoje, nebo manažer, manažer nějaké aplikace, představ si jako manažer nějaké aplikace, jo, v nějakém korporátu, tak na ni dáváš nějaké požadavky, chceš mít nastavené nějaké SLA, že jo, prostě, jo, ty lidi budou vědět, když se neplní ty SLA, tak to něco znamená pro ně, má to nějaké důsledky pro ně, a vlastně když ti, když ti zčervená ten board, tak se budeš chtít ptát, jako co se děje, že jo, jo, takže ideálně tam budeš chtít u té metriky vědět jako, ano, incident jako zaregistrovaný, řešíme to, incident vyřešený,

[82:01] Tomáš Landovský: že jo, prostě třeba, něco takového, jo, a tady to mně přijde, že to není jako o tolik jiné, prostě, no, jenom tam nemůžeš mít tu lidskou zodpovědnost, že toho člověka znáš a věříš mu, že je důsledný a že to vyřeší, ale musíš ji mít jakoby programaticky checkovatelnou, tu věc, prostě, no.

[82:22] Petr Černý: Jo, já s tebou souhlasím, akorát si myslím, že to je zase jako dobrý cíl, i proto, že ty dnešní modely jsou nějak dobré, jsou vlastně jako mnohem lepší, mnohem inteligentnější, než jak jsou rychlé a jakou mají jakoby výpočetní kapacitu, nebo jakou máme výpočetní kapacitu my k dispozici, tudíž ty by sis mohl nasetupovat tyhle věci, které oba se snažíme setupovat vlastně, a to je prostě v CI, anebo lokálně, prostě nějak, i kdyby to byl nějaký hook třeba pro Clauda, tak aby mu to projelo nějaké automatické verifikace toho,

[83:12] Petr Černý: že appka funguje a že je optimální, že kód je čistý, třeba, to je jedna z věcí, co jsem si tady implementoval, což je nějaký CREP, se tomu říká jako CREP, a to měří tu komplexitu funkcí a tak dále, takže to ti pomůže mít čistý kód, což je jedna z věcí, co pomůže agentovi, aby líp performoval, a prostě všechno půjde líp jemu, tudíž všechno vám půjde líp dohromady, no, ale my v tuhle chvíli prostě nemáme ty prostředky na to, abychom měli tohle všechno pokryté, aby to pokrývalo fakt

[83:55] Petr Černý: všechno, co potřebujeme, abychom měli tu kvalitu zajištěnou ze všech prostě možných úhlů, a aby to bylo tak rychlé, že je efektivní to prostě, nebo že máš ten výstup takhle kvalitní i efektivně a rychle, ty to můžeš mít jako v rámci CI, nebo něco, co prostě spustíš na feature branchi, když je ta feature branch v podstatě hotová, nebo v nějakém bodě, kdy je dobré, prostě kdy to je hotové, řekněme, a není to, nevím, prostě, teď jsem si teďka uspořádal myšlenky.

[84:38] Tomáš Landovský: Jakoby že prostě nemáme, já jsem to chápal tak, že je to nějaká aspirace, ale že nemáme prostředky na to, abychom něco takového realizovali v podstatě, takhle jsem to pochopil, že to nejde realizovat.

[84:51] Petr Černý: No, ale, no, a ty jsi ještě mluvil o té dokumentaci, já si totiž myslím, že to pořád neřeší to, že ty když budeš chtít místo kódu číst něco stručnějšího, což je vlastně náš cíl, že my to chceme rychle implementovat, a pak nejlíp jakoby se spolehnout na to, že to je implementované dobře a že to pokrývá úplně všechno, co jsme chtěli, a že my jsme na něco nezapomněli ještě navíc třeba, to by mohl Claude prostě taky nějak jakoby zjistit, a zjistí to i třeba tím, že tady prostě

[85:33] Petr Černý: chybí handlování něčeho, co je teďka nově možné s novým kódem, no, jak jsem to chtěl říct k té dokumentaci, no, a stejně když ty se dostaneš k nějaké stručnější dokumentaci, která bude hrozně dobře namapovaná na ten source code, že máš jistotu, že to sedí k tomu, tak ty potom za pár měsíců budeš chtít ale se dostat ještě blíž k tomu, jak se tomu říká, objective-driven development, kdy ty nechceš číst ani tyhle detaily, ani tyhle stručné, a budeš po něm chtít potom, aby jsi mu řekl jenom:

[86:15] Petr Černý: "Mám problém, který potřebuju vyřešit, chci, aby to bylo víceméně takhle, ale prostě jenom: Mám tenhle problém, vyřeš to," a nebudeš chtít číst ani tohle, takže, nevím, tak si myslím, že to, ten tooling pro to, aby.

[86:32] Tomáš Landovský: Jo, takže vlastně se dostáváš jakoby, dostáváš se k tomu nazpátek, že stačí si povídat s Claudem, vlastně.

[86:40] Petr Černý: No, vlastně jo, to jsem původně chtěl říct, už když jsem mluvil o tom předchozím, že ty budeš mít v dokumentaci popsaný abstraktněji, high-level popis té featury, ať už to bude úplně programatické a bude to volat ten kód, který je napsaný v Rustu, nebo ne, tak ty v nějakou chvíli budeš chtít řešit trošku větší detail, budeš chtít řešit, jestli to uložil do dvou proměnných, nebo do jedné, jestli se v každém cyklu toho loopu vytváří nová array, nebo ne, co v nějakých případech se to řeší, v nějakých

[87:17] Petr Černý: ne, a ty najednou to budeš chtít řešit, chceš řešit performance, a budeš se ho ptát na tyhle detaily, které tam popsané v té dokumentaci nejsou, protože by default prostě ti to neříká, že je použitá proměnná, která má takhle dlouhý název, protože i délka názvu proměnné může v nějakých situacích být důležitá, že jo, tak to je jako blbý příklad, jo, ale proto se vracím k tomu, že já teďka mám takovýhle problém a takovéhle prostředky, jak ho řešit, a vlastně to, že bych měl abstrahovanou úroveň toho source codu,

[87:57] Petr Černý: by mi nepomohlo to vyřešit, protože já potřebuju, aby to fungovalo, a potřebuju být schopný z toho, to je možná jiný vedlejší jakoby quest tady, že z toho potřebuju být schopný dostat nějaký subset high-level informací, který potřebuju prezentovat někomu, nebo mu potřebuju porozumět já v tuhle chvíli, abych se mohl zamyslet nad tím, co dělat dál třeba, a potřebuju mít jistotu, že je to vygenerované kvalitně a že se na nic nezapomnělo, a jak docílit tohle třeba ještě, no, takže ano, já jsem se chtěl vrátit vlastně k tomu,

[88:35] Petr Černý: že na spoustu případů potřebuješ tak specifické informace, nebo tak specifický proces pro to, aby, no, protože potřebuješ se prostě ptát Clauda case by case v chatu.

[88:53] Tomáš Landovský: Hm, OK.

[89:03] Tomáš Landovský: Mě mrzí, že jsem zapomněl to, co bych mohl řešit na tom AI Gemu, jak jsem říkal, že nemám téma, že nemám téma na AI Gem, a že vlastně by bylo zajímavé se právě bavit o tomhle, co já teď nevím, jestli to, co jsem pak říkal, jako bavit se o tom, co je teda za co, to, za co máme zodpovědnost, jakoby to.

[89:24] Petr Černý: To čteme.

[89:24] Tomáš Landovský: To čteme.

[89:25] Petr Černý: To chceme číst, co nechceme číst.

[89:27] Tomáš Landovský: Nechceme číst, tak jestli vlastně je zajímavé jako se o tom bavit, no.

[89:33] Petr Černý: Jako za mě jo, podle mě budou zajímavé názory na to, a je za mě to je něco, co teďka řeším, no, mám pocit, že je prostor a jsou i prostředky prostě na to generovat toho mnohem víc a mnohem líp než kdy dřív, a ale ten, ten, to kontextové okno člověka je tak malé.

[90:00] Tomáš Landovský: No právě, no právě, no, že stejně to tam toho víc nedostaneš, někde se to jako zastavit musí, no.

[90:07] Petr Černý: Musíš toho, musíš delegovat prostě ještě víc, no.

[90:11] Tomáš Landovský: Hm.

[90:12] Petr Černý: Ale zase bych jakoby nešel tak daleko, můžeme delegovat víc a víc věcí, ale budeme muset počkat na nějaký další vývoj a rychlost toho procesování třeba a tak, aby.

[90:25] Tomáš Landovský: Ale to není, to pak přestaneš jako, ty musíš, ty musíš znát na toho tolik, abys byl schopný ohledně toho diskutovat a argumentovat, takže to stejně podmiňuje nějaké penzum znalostí, protože když něco neznáš, tak o tom nemůžeš ani argumentovat, tak prostě řekneš: "No, tak to udělejte bílé," no, já nevím, prostě, jo.

[90:49] Petr Černý: Hm.

[90:50] Tomáš Landovský: Jo, takže a tohle to je základní vlastně jako omezení té jako, to, to, toho člověka vlastně jako, no.

[91:08] Petr Černý: Jakože to, to pak už, já si myslím, že tady se to taky posune, a pak se nebudeš muset zamyslet nad tím, jestli to chceš bílé, ale ty mu prostě řekneš jenom, že to chceš používat ve dne, a on to udělá bílé, protože on má dobrý judgement a udělá to tak, aby ti to dávalo smysl, a i bez tvého feedbacku, protože to na první dobrou trefí docela dobře, a stejně jako by sis na to najmul prostě kontraktora, který ti má něco vytvořit, tak čím lepší kontraktor, tím větší

[91:45] Petr Černý: šance, že to trefí na první dobrou, že to bude dobré, že s tím budeš spokojený, tady ty hranice se taky posunou, budeš prostě říkat, že máš tenhle problém, který chceš vyřešit, a on to prostě vyřeší, pokud jsi mu to popsal dostatečně dobře, a pokud ne, tak třeba časem si to zjistí sám, on nebude mít dost informací o tom, jak, jak, nevím, kolik máš místa na, má udělat appku, kterou budeš zobrazovat na svojí televizi v obýváku, a on se bude muset odvíjet od toho, to řešení se bude

[92:21] Petr Černý: muset odvíjet od toho, jak velká je ta televize, ty mu to neřekneš, tak on to třeba bude schopný zjistit, a on ti to vyřeší, ty mu řekneš, že prostě chceš do obýváku na televizi prostě nový spořič, a on zjistí, jakou máš televizi třeba, to je jako divný příklad, jo, ale tam to asi taky spěje, a co budeš muset mu dát za input, je tvůj, jsou tvoje preference třeba, které ještě neví.

[92:48] Tomáš Landovský: Hm.

[92:51] Tomáš Landovský: Hele, já pofrčím, zajímavý pokec, dík za to.

[92:55] Petr Černý: Hm, taky děkuju, já budu muset něco dělat.

[93:00] Tomáš Landovský: Měj se hezky a užij si dovču, užij si Holandsko, pozdravuj bráchu.

[93:06] Petr Černý: Jo, dneska jsem se s ním viděl, to jsem ti vlastně neřekl, dneska jsme byli ráno s bráchou na Odyssei, Odyssey.

[93:13] Tomáš Landovský: A jaké to bylo?

[93:15] Petr Černý: Bylo to super, nebyl to nejlepší film, ale ten zážitek byl fakt dobrý, v IMAXu, a ale je to dobrý film, jakože je tam hodně skoků v různých časových linkách, dělal to ten Nolan, Christopher Nolan, což se asi dalo čekat, a jo, je to dobré, ani jsem neměl problém s tím obsazením hereckým, jak jsem slyšel, že někdo s tím měl problém, tak mi to přišlo dobré, takže doporučuju, ale na Dunu se těším víc teda, třetí díl, no.

[93:55] Tomáš Landovský: OK, Odyssey.

[93:58] Petr Černý: Tak jo.

[94:00] Tomáš Landovský: Odyssey.

[94:01] Petr Černý: Tak jestli se neuvidíme do té doby, tak ty si užij to stříhání ovcí, jsem zvědavý.

[94:06] Tomáš Landovský: Dík.

[94:06] Petr Černý: Jsem rád, že jsi to řekl.

[94:07] Tomáš Landovský: Určitě, určitě, tak jo, hele, tak čau.

[94:11] Petr Černý: Tak jo, měj se, čau.

[94:12] Tomáš Landovský: Kdybyste měli koule přivézt nějaké edibles.

[94:16] Petr Černý: Hele, asi, asi ne.

[94:17] Tomáš Landovský: Jo, letecky ne, no jasně, ne, ne, vy letíte letadlem, kdybyste jeli autem, tak je to něco jiného, ale letecky ne, no.

[94:23] Petr Černý: Ale máme dobrého kámoše, který má dobrou trávu, tak jako.

[94:28] Tomáš Landovský: Jako.

[94:28] Petr Černý: Bych něco v tomhle ohledu někdy potřeboval, v Praze.

[94:31] Tomáš Landovský: Jo, jo, a můžeš zjistit, za kolik chce za gram?

[94:35] Petr Černý: Můžu zjistit. Já od něj nekupuju, já od něj dostávám vždycky jenom paličku, co mu v podstatě upadne, protože on toho hulí tolik, a já tak málo, že po mně nikdy nic nechtěl.

[94:44] Tomáš Landovský: OK, OK, hele, já když jsem dělal ty edibles, tak vlastně jakoby ta dávka z těch 5 gramů je prostě obrovská, jako jo, že si vezmeš pár kapek a vystřelí tě to jako na měsíc, takže, takže vlastně 5 gramové balení je pro mě na, nevím, půl roku docela intenzivního používání, bych řekl.

[95:07] Petr Černý: No vidíš, tak pro něj to je na týden asi.

[95:11] Tomáš Landovský: No, no, no, ty jo, zajímavé, zajímavé, no tak, tak budu rád za zdroj nějaký, tak kdyžtak dej vědět.

[95:21] Petr Černý: Dobře.

[95:21] Tomáš Landovský: Jo, tak jo.

[95:22] Petr Černý: Píšu si to.

[95:23] Tomáš Landovský: Díky, měj se, čau.

[95:25] Petr Černý: Tak jo, měj se, čau.
