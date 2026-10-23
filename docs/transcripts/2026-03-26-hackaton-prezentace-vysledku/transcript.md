# 03-26 Hackaton: prezentace výsledků

**Date**: 2026-03-26

**Speaker 1** [0:02]:
Je to tam? Je to tam. Tak jdeme tam. Mám vářit si.

**Speaker 2** [0:12]:
Tak, můžu začít vyhodnocený. Tak první statistika, začali jsme 4 projekty a skončili 3. Což je docela příjemný způsobem. Tolik jsme snědli piz. Takže tam je jeden trošku. Hele, tak hezky, hezky. Máš depot, perfekt. Máme tady tři projekty. Chcete někdo začít? Hlásíte se někdo, že začnete prezentovat svůj? Nebo nechci začít. Nebo nechci začít, jo?

[0:42]:
Máte kde prezentovat? Chcete fail first, že jo? Tak jo, ale jako... No jasně, máme kde prezentovat, víš, jo? Ukážu shiny. Takže... Tada! Na to se zatím nemusíte dívat, k tomu dojdeme, já tady dám zatím takhle jako screen. U mě trochu lepší. Nebo black screen ještě lepší. Takže my jsme měli teda, my jsme se dali za úkol porovnat různý tooly na zprávu pamětí.

[1:22]:
A jak to dopadlo, vlastně strašně jsme se nějak prali, bylo tam jako... Komunikační overhead, že já jsem docela zvyklý pracovat sám, takže něco si s někým vysvětlovat a tak pomáhat, prostě je pro mě jako, prostě je to jako jiný, takže asi to chce nastavit možná jiné očekávání, možná zmenšit scope příště nebo něco takového, takže z těch třech toolů, který jsme chtěli porovnat, tak jsme se dostali ke dvou a vlastně ty mohli implementovali jeden, mem0, který je založený na vektorovém porovnávání těch,

[1:58]:
Vlastně těch embedingů a toho, co se do té databázy ukládá. A já jsem použil grafity, což je grafová databáza. Stop. Stačí. To je vlastně hrozně vysoké.

[2:26]:
Co se nám, já řeknu, co se nám asi jako podařilo, spíš jako, ne úplně ty objectives. Ty objectives jsou v podstatě failure, protože se nám nepodařilo, Nepodařilo se nám nahromadit jako dostatečně kvalitní množství dát, S dostatečně jako odladěným ukládáním těch, těch, těch vzpomínek, Aby ty testy byly nějakým způsobem reprezentativní, jo, Abychom mohli říct, ano, tohle je lepší než tohle, protože a proto. Máme tam dílčí výsledky, zvládli jsme ty technický hurdles, jako mám tady tisíc konverzací s kloutkou a chci je dostat prostě do toho grafity, do té databáze, tak to máme nějak zvládnutý na hrubo, prostě umíme tam ty data nahrát a oni se tam nějakým způsobem uloží,

[3:19]:
Ale... Zase je fakt, že jejich kvalita je blbá, protože nemáme dobře definovaný entity, je tam jako spoustu ale, spoustu věcí, který by se dalo jako zoptimalizovat, aby ty data byly uložený kvalitnějši. Podařilo se nám nastavit nějaký test case, takže máme asi, já nevím, třicet test case, který jsou, který vznikly jako LLM based, Že si to LLMko prošlo tu konverzaci a řeklo, hele, mohl bych se asi ptát na tady ty věci, napříč těma různýma jako...

[3:51]:
Představujeme výsledky, které jsme chtěli testovat, jako ty RICO, zhalucinace a tak dále, a máme z toho nějaký testrizac, takže nějaký částečný úspěch tam je. Výsledek je teda to, že se pustí ta testovací pipeline, ta dělá query do té knowledge databáze, ptá se na ty testovací queries. Ví, jaký očekává výsledky, to je to, co to Elonemko připravilo, jaký se očekává výsledky a porovnává to s tím aktuálem a říká, jak moc to uspělo nebo neuspělo.

**Speaker 3** [4:26]:
Ty říkáš, ptá se databáze, ptá se clouda, který kouká do té databáze.

**Speaker 2** [4:31]:
Ptá se té databáze, ale je to jako by se do ní koukal clouda, je to jedno. Testujeme to napřímo, nepotřebujeme k tomuto uprostředníka, nepotřebujeme se ptát přes clouda. Když by se takhle zeptal Clouda, tak on by se stejně zeptal tý databáze, takže to je MCP7.

**Speaker 3** [4:53]:
Ta je teda není chytrá.

**Speaker 2** [4:55]:
Ta databáze je chytrá.

[5:00]:
Je to grafová databáze, ve který jsou uloženy ty data a když jí položíte nějakej dotaz, tak tam je něco, co prostě si složí těch všech vzpomínek, si složí nějaký snippety. A pak vám vrátí jako text, kterej teda má reprezentovat odpověď, nebo kterej je odpovědí na tu vaši otázku.

**Speaker 3** [5:18]:
Ale jako by není mi požát LLM-ko, je to jako prostě nějaký...

**Speaker 2** [5:22]:
No já si myslím, že jo, já si myslím, že ne, vlastně asi ne, protože to má latenci, průměrná latenci třeba toho dotazu je 700 milisekund. Takže je dost možný, že to jako... Běží ti to lokálně. Nepoužívá to. Hele, žádný embeddingy tam asi v tuhle chvíli nejsou, v tuhle chvíli to jsou jako grafová databáze ukládají nějaký entity a vztahy mezi nimi a ty můžeš jako traverzovat, když si to představíš jako veliký graf, kde nějaké věci souvisí s nějakýma jinýma věcmi, jakože máš třeba task, pro koho ho děláš, v rámci jakého je to projektu, to jsou všechno různý entity, tři různý entity, jsou mezi sebou propojeny, task platí k projektu, projekt má nějakýho vlastníka a tak dále.

[6:07]:
A takhle obádat váze je o tom, že tohle můžeš všechno projít, že můžeš vlastně udělat jakoby scan nějakej napříč tady těma vztahama, že to není, jo, něco takový. A jaký jsou z toho takeaways, jsou například ty, že když je to blbě napromptovaný, tak ono to neumí říct I don't know. To je třeba jako první zásadní jako poznání, že tady jsou tři dotazy, který správná odpověď na něj je nevím.

[6:34]:
A to se nestalo, to se nestalo. Prostě vrátilo to tam nějakej jako nonsense, pokusilo se to nějak odpovědět. A já jsem potom vzal teda ten výstup z tohohle, kde to teda říká, máme tady nějakou dimenzi toho testu, Jaký byl ten dotaz, co je správná odpověď, předpokladaná odpověď, vlastní odpověď, nějaký score a latence toho dotazu. Já jsem vzal tady to a nechal jsem to vlastně vyhodnutit Clouda, aby mi řekl, jaký tam jsou deficiencies v tom. A je tady teda špatná hallucination resistance, complete failure, prostě neumí to říct, nevím, z nějakého důvodu.

[7:11]:
A potom špatný temporal reasoning, temporal reasoning je to, když se na něco ptám, tak chci vědět tu nejposlednější informaci, Ne jakoby z této oblasti, to, co bylo před rokem, ale to, co je aktuální, tak tady byly v tom nějaké špatné věci a tak. Ale je samozřejmě otázka, kolik se toho dá doladit nějakou dodatečnou prací. A to je asi všechno. Zvládli. Ještě nějaký, Timo, nechceš něco říct nebo JD?

[7:42]:
Chcete něco doplnit?

**Speaker 4** [7:43]:
Jo. K tomu memo tam teď půjdu je hodně prostě jako model, Jenomže tam má ještě LLM-ko k tomu, že ono bude rozhodovat sám, jestli je to užitečný pak nebo ne. To znamená, dá se tam jakoby nějak nastavit front, že chci pomotovat nějaké technické záležitosti, A tam je to úplně rozhodně. To není jenom, že zpěte nějak tu webtroll databáze a pak z toho uděláte repeavel. Máte tam ještě k tomuto LLM-ku, která vám pomáhá rozhodovat, Které vzpomínky jsou důležité.

[8:15]:
A u výsledku to pak stejně jenom.

**Speaker 2** [8:17]:
Funguje to čtyři, tři cento. Ještě jsem zkoušel tu vlastně využitelnost v tom kódovi. To znamená, je tam dispozicí MSP server, který má nějaký nástroje, Pomocí kterých se můžeme ptát o ty vzpomínky. A instruoval jsem Claudea v ClaudeMD, aby to vždycky používal. Nějak jako... Přišlo mi, že explicitně. Nevyhrožoval jsem mu jako zničením, nebo něco takového. Ale bylo to explicitní. A nefungovalo to. Pokud jsem mu neřek, vlastně, pokud jsem mu neřek, hele, zeptej se grafity,

[8:48]:
Tak on to neudělá. Takže tam je taky otázka vlastně, jak by to fungovalo.

**Speaker 4** [8:53]:
A ještě jedna taková, když to poznáte, to Memo, kdyby prostě někdo šel k tomu, že... Takže ten backfill těch informací zatím trvá hodně dlouho.

**Speaker 2** [9:30]:
Z těch několik set zpráv, asi sedm set zpráv, který jsem chtěl zpracovat z toho jednoho mýho projektu, který je relativně malej, Tak běží asi hodinu a půl, celkově etatá jen asi dvě, dvě a půl hodiny. S cenou neznámou vtud neřešili jsme nic.

[9:48]:
Tak jo, jaké otázky? Někdo?

[9:52]:
Next apps? Počkáte, to udělá Antropik.

**Speaker 4** [9:59]:
Asi ne, asi ne.

**Speaker 2** [10:02]:
Co říkáte? No asi ne, za mě ne. Můj prekursor k tomuhle bylo, že jsem asi před 4-5 dnama, Začal jsem si zase hrát s elektronikou, jako Arduino a tak dále. A našel jsem doma takovou obrovskou krabici jako různých čipů a různých věcí a komponent a tak. A říkám si, hele já si udělám inventář prostě, co tady, já vlastně nevím, co v tom je. Tak jsem to fotil, udělal jsem si jednoduchý mcp server, který je založený jenom na jasonu, že, na disku je jason, jo, a ten mcp server má pár věcí, jako najdi tam komponentu, ulož komponentu, aktualizuj a tak dále, jako jednoduchý tool, jednoduchá věc, lokálně to běží.

[10:42]:
Fotil jsem ty komponenty foťákem a on mi je tam zakládal a říkal, jo, tohle je tady ten čip a ten dělá to a to prostě, jo, to je super, prostě to bylo úplně skvělý. A a. Ten MCP server jsem vzal a napojil jsem ho vlastně do cloud desktop třeba a mohl jsem se ptát, Hele, chtěl bych udělat tohleto, mám na to komponenty prostě a on řekl, jo, jo, to uděláš z tohohle, z tohohle a z tohohle prostě třeba, jo. Nebo měl jsem rozjetej nějakej nakupovací košík na pájeníčko.cz, což je dodavatel tady těch komponent a říkám,

[11:16]:
Hele, vyřem z toho košíku to, co už mám prostě. Takže vlastně jako databáze se to jako strašně osvěnčilo, je to samozřejmě mnohem, Méně sofistikovanější, než nějaká obrovská jako databáze vzpomínek, Který můžou mít spolu nějaký vztahy a podobně. Ale za mě to jako rozhodně má ten potenciál, že si to jako ty věci, Jako může sama pamatovat. Je samozřejmě otázka, jak potom, Jak to jako prakticky využívat, jak je tam ukládat ty věci po té séance, Když jako koduješ třeba něco, ale takže za mě prostě bych určitě chtěl.

[11:47]:
Udělat nějaký krok dva, nějakou iteraci. JSON databáze, komponenty tady, nějaký knowledge graph s automatickým použitím je tady, ale chtěl bych tady udělat nějaký úkrok k tomu, že se tam toho bude třeba ukládat víc, nebo že tam jako, že budu mít třeba nabanilovaný svoje soukromé věci nějakým způsobem, jako mám prostě inventář elektroniky, tak mít třeba, nevím, inventář. Potravin, nebo já nevím, nějaký takovýhle věci nebo možná úkoly a mít prostě grafovou databázi, která tady ty věci v sobě bude mít třeba.

[12:18]:
A možná se posunout blíž k tomu, že by se to dalo použít k tomu kodování. Takže za mě to jako není mrtvý, já jsem jako spíš motivovaný, nejsem úplně jako nadšený, že to skvěle funguje a chci to jako používat, Ale myslím, jako chci zkusit ještě udělat třeba další krok a zaintegrovat to do těch svých nástrojů.

**Speaker 5** [12:44]:
No tak jo, děkuji. Děkuji.

**Speaker 2** [12:54]:
Já dám pět minut na prezentaci. Sobě jsem ji nedal, protože to organizuju. Tak se dá časový limit, ale... Five minute timer. A jenom na tu brezku, pak.

**Speaker 6** [13:05]:
Budeme se bavit jako dál. Ty to nemáš, fotovou prezentaci? Tak já? Má jenom doprovodný program.

**Speaker 7** [13:12]:
No tak kdyby jste dostali doprovodný program. Pokažte, pokažte nejdřív srdce. Když to realudnu, tak to tady bude? Ale je prostě tam, no. A koncertný režim, co ho říkáte, potká se pak i na tohle. Srdce, jo, je tady.

**Speaker 6** [13:27]:
To není tak, že to vždycky povídáme, Ale každý má srdce. Já bych chtěl nechat jako závěr Toho potenciálního srdce. Takže my jsme si podle nějakého konceptu tady vytvořili agentní společnost, která se okamžitě rozjela, jako trvalo to, než jsme nasetupovali server, že jo, než jsme to tam jako dostali, než jsme to zainstalovali a tady máme na tom nahraješ a už to jakoby frčí, tady máme agenti, všechno jako, všechno fakt začalo vypadat takhle dobře, děly se tady věci, je tady spousta splněných úkolů, to teda musíme říct, že...

[14:07]:
Takhle produktivní jsme jako dlouho nebyli, dokonce jsme museli udělat reorganizaci společnosti, Protože se ukázalo, že jsme jako by moc velký, že jsme na to šli moc z vůdca, že jsme se vlastně přerostli, Tak jsme se zase zmenšili, takže tady se vyhodili jsme střední vrstvu managementu, pustili jsme tam rovnou specialisty. Máme spoustu projektů rozjetých, který mají spoustu zelených úkolů, takže v podstatě, co se týče barev, Tak jsme na tom jako velmi dobře, spotřebovali správně, co se tam dá najít, pro asi 130 milionů tokenů. Takže myslím si, že to bylo jako hodně produktivní.

[14:40]:
A asi, jestli bychom se měli jako Lesson Learned jako poučit, tak první věc je, že Vždycky narazíte nějaký úplně nečekaný benefit, takže, nebo nějakou nečekanou prostě věc. A ta nečekaná věc je, že Viktor vyrobil vizualizaci. Kde jenom chodí ty agenti, takže se můžeme jako podívat. Já nevím, jestli tam někdo šoupnul nějaký tiket, Ať to vidí všichni, že oni půjdou pracovat.

**Speaker 3** [15:07]:
Tak tohle je smutný, že máme tam spoustu i tiketů teď, On je tam hromadejch rozdělených, hromada to, Ale nikdo nic nedělá.

**Speaker 6** [15:13]:
Prostě povítej, jsme se hodně věnovaných. Ukázalo se, že jako ta simulace toho opravdu využivět, Ale v přírodě byla docela věrná. CEO seděl, Zpotřeboval asi 100 milionů, nebo 130. Všichni ostatní seděli v kuchynce a říkali, já jsem volkovanej. Takže tohle úplně prostě sedí, všechno to bylo věrný. Já teda bych chtěl oprosit Richtora, jestli by ukázal ještě editor tohoto kanclu, jak připravil tady ten layout a ty místnosti.

**Speaker 7** [15:43]:
Máš tam někde to GitHub, kde to máme?

**Speaker 6** [15:47]:
Ale už je CEO, podívejte. CEO, kde se makáte?

[15:54]:
Sedíte, když se ani najdete.

**Speaker 2** [15:57]:
Ty tokény jsou jako, jo, a je tam někdy kolik zpotřebe tokénů? Necinká to tam někde?

**Speaker 7** [16:02]:
Je tady, když klikneš na tu Activity, Tady máš, to jsou tokény, šest milionů, pět milionů, Nebo to jsou minuty vlastně.

**Speaker 6** [16:10]:
Víš, jako v SimCity. A ty tokény nevím, kde přesně jsou. Tohle je support, jak to se dělá. Jeho support to je, jak kontroloval Slack, no, ale... Jo, každý pět minut stane z kuchyňky, aby se podíval na Slack. Ale do výkazu píše půl hodiny. No tak začátá už tu hodina.

**Speaker 7** [16:32]:
Ono to API je bohatší, takže já jsem to trošku refabrikoval, takže už tady zůstaly jenom tady ty needs attention, ale dá se nám zobrazit, kolik tokenů spotřebovali, nebo nějaký detaily, nad čem pracují. Já jsem pak jí nafotil tady ty naše místnosti, takže ona se snažila jako ho zrubat. Udělat kuchynku, kancel a výrobu. Ty asety kreslila. Tady kde máme ten náš?

**Speaker 6** [17:01]:
Kdy ta prepo chceš, jo?

**Speaker 5** [17:10]:
Ty vole, jak se to dělá takhle vám tady? To chci uvnitř, jo?

**Speaker 7** [17:16]:
Aaaa, počkej, počkej. Kvěrt, kam jsem to dal? Jo, ono je to na prenti. To taky dělá možná trošku problémy.

[17:30]:
Tady mám někde readme. Jo, tady je.

**Speaker 6** [17:37]:
Tak než to Viktor najde, tak bych asi jenom chtěl tady vyjádřit jako posvětej tým, Že vy jste opravdu, jsme si zahráli na skutečný management board. Takhle jsme měli vyložený nějaké věci, rokovali jsme, Bavili jsme se o strategiích, jak tu firmu vylepšit a všechno ve tom horšímu.

[18:00]:
Tokoly jsme vymysleli. V podstatě, myslím, že tady bylo pár highlightů, Než mě nějak ještě nahoníte, ale byl tady třeba highlight, že bylo jako, Tady někdo z kluků poslal prostě instrukci a řekl, jako, schvalí, jo, Přes toho, nevím, teďka přes někoho. A ten odpověď balakonická, schválil jsem a zahřel tiket. A nikdy nic neudělal, prostě schválil ten dokument, nějako nezapracoval. Zony korporátní jsme tady měli celou řadu a asi je z toho nějaký vblí, prostě vypomli jsme to, dá se to.

[18:35]:
A asi by to šlo udělat a orchestrovat, akorát že se budou muset udělat jako kvalitativně. Si ho u sebe implementujeme na počítači, pak si ho tam... Přenese, zkouší ho tam, zkusí ho tam škálovat, když to bude škálovat, vezme si další a půjde dál. Takže tolik asi za mě, asi na ně překvapují, ale zkusili jsme to.

**Speaker 2** [18:59]:
Ale byl to pak prostor, že byste jenom podívali, jak to funguje, jako konceptuálně, co tam je, ty ty borzy a tak.

**Speaker 3** [19:08]:
Jo, jako prostě tak. Možná pár poznámek, co jsem o tom třeba čekal, ať to mě překvapilo nebo zklamalo nebo tak. Nebo co teď mám pocit, že bylo super a tak představit společnosti, kde mám nějaký agenty lidský a nějaký agenty ty vody, že jo. Tady tohle je na to, že celá společnost autonomní od pro až nahoru a jenom teda někde sedí bord, který do toho tak jako šťouchá. Ale vlastně by se mi hodně líbilo, a to ten paper prep na to není ready a nevymyslel jiný nástroj, že by tam prostě byly různý lidi a teď nahradují ty reální lidi těma virtuálníma a tak se to nějak přihazujeme ze sebou.

[19:43]:
Tak to mi přišlo super, kdyby tam takovýhle registrátor byl. A zároveň je to cool v tom, že je hrozně jednoduchý vytvořit tu společnost, když tam uděláte CEO, on si nahajduje lidi k sobě, všechno to tak organicky tak plyné, takže v tomhle tak člověk má pocit, jo, tak to já opravdu jenom vzadám goal společnosti, CEO goal a on si to pak jako dělá, což je super, je to teda jeden lokální prostě subscription kodexu nebo klora, který pak, na kterým to všechno jede a tak se to jako postupně větí. Zároveň když...

[20:14]:
Kdybyste chtěli měst nějaký svoje třeba agenty, různý, a teď je tam chtěli jako napojit, že už máte, já nevím, nějakýho vychytanýho kloutoci, jeho skill má něčím takovým, tak to nám jako šoupnout nejde úplně, jo, musíte to nějak ohybat, že ono tak čeká, že to je to jedno svatkočí na tahle věc, takže, no, takový cool rozjetí, ten pocit, že to takhle rovnou funguje, tak je to vlastně skvělý, ale... Taky blíží cirkul. No, a... Pak vlastně, že jo, my jsme postupně tak velikou straní z toho a i to tam teď je, že ty kartičky se tam nějak zasekávají a něco,

[20:49]:
Tak mi přišel super přístup, že jsme dělali Scrum Master, že jo, tak jsem říkal, jo, to je skvělý, já nebudu každou kartičku šťouchat z boardu, Ale prostě mám Scrum Master, který to bude hrubět, v jednom momentu jsem myslel, že to funguje, ale teď se stejně všechno zaseklo prostě, no, takže. Mně přišel super ten koncept, snaží se mi dostat roli, která to třeba ošéfí a ne teda my jsme v jednom moment všichni. Vlastně mikro-manageovali ty kartičky, tak jako se snažili najít ten princip, jak tam vytvořit tu roli, která to zařídí, ale tady nepovedlo se nám to, protože jsme měli dobrý přístup.

**Speaker 6** [21:19]:
Já bych tomu možná ještě řekl, že ono se to taky nepodržilo z toho důvodu, že my jsme jim nedali všechny zdroje. Aby jsi mohl rozjesílat newslettery, potřebuješ mít napojený newsletter. A newsletter nenapojí, když si nejsi jistý, co to udělá, protože jste tady znamenali, Že nám se jako povedlo, že to nejednou začalo psát jako doslepování, že by to mělo credentials. Pokázalo se, že je má přes cloud code, který je dostal na pomocí MCRTčka U tady na jiném počítači na cloud desktopu a že se to tam propašovalo přes subscription, Takže třeba tudy cesta nevede mimochodem si tam připojovat svoje osobní subscription cloud code.

[21:51]:
Tak to nedělejte, třeba z kodexem to funguje dobře, bude tedy tu Python nic neumí. No a nejde to prostě bez toho end-to-end, to znamená, buď to by tam musela být fakt testovací instance, Úplně každý integrace, která je potřeba, pak by to šlo s testovacíma datama. A kdyby se to vyladilo tak to pustit, anebo jak jsem říkal, odladit to jen tu jednu věc, klidně na produkci, ale jako dokonale a pak to tam pustit, problém asi bude, že takováhle společnost klidně bude někam divergovat k něčemu úplně jinému a pak není jistota, že do těch produčních integrací to nezačne solit úplně jiný výstupy, jenom protože se to usmyslelo, že to tím splní nějaký cíl, který si to samovymyslelo přes noc, když se spali.

[22:30]:
A to se nebavíme o nějaký injection, to se prostě bavíme o to, že se to nebaví. To by vynulo prostě. Pojď ji já.

**Speaker 7** [22:40]:
Já si myslím, že to je mimo jiné daný tím, že když člověk si takhle stáhne nějaký takový velký balík, A chce udělat tu jednu firmu, že jako prostě za hodinu, nebo ten samotný jako to vytvoření za 15 minut, Takže pak se, pak je tam spoustu nějakého cizího materiálu, který a je to prostě rozjímalý.

[23:07]:
Teď je to něco společlivého, co se pobývá dobře. Takhle by ta firma byla udělaná lidmi z té firmy, kteří by tam přispívali nějakým způsobům postupně. A pak by se zautomatizoval nějaký ten perfektor. To by bylo funkční v celé té pipeline. Ale takový magic, že tady se od někoho stáhlo něco, co je udělané na nějaký způsob. Já jsem se chtěl jenom ještě ukázat drobnost, kterou, jak vidíte, že to není správně namapovaný,

[24:00]:
Tak jsem udělal editor. Takže tady jsou nějaký aserty, které jim důleží a tady možný Iris dokonce umí hezky vymizet tady ty většová. Nefunkční firma, ale může přeměstňovat nábytek. Ty vole, jestli tak. Máme tam nějakou podlahu. A.

**Speaker 2** [24:23]:
To je from scratch tohle?

**Speaker 7** [24:28]:
To je from scratch. No a prostě logicky tady budou asi držáky na CD4. Logicky jo. Mám trošku nějaká bezpečnost. No to je super.

**Speaker 2** [24:41]:
To je highlight.

**Speaker 7** [24:43]:
Tak se to uloží, je to jako JSON, Takže s tím můžete si s pracovníkama Třeba tu firmu jako Firmní prostor Vytvnit. A tady jsem udělal jen nějaké, já takhle vždycky pracuju, Že když chci něco o něj generovat, Si to nechávám dělat jako preview stránky. A je docela hezký, jak, Jako on to kresil, ve výsledku jsem nevyužil žádnej nástroj, jeden tam byl a ten to celý jenom zkomplikoval, takže to kresil jako ručně jako po pixelech, to jsou nějaký šestnáct, teda šestnácti jsme, jako velký, a takže tohle si on jako nakresil a pak bych vážil takovýhle jako zvláštní syn, prostě, že jim přijdou jako...

**Speaker 1** [25:27]:
To je ovečké. Takže.

**Speaker 5** [25:29]:
To je. To byla jízda, to byla jízda,

**Speaker 8** [26:01]:
Nenecháme teda, že... Necháme. Tak si pohraju. Necháme, ale až budeme chtít něco ukázat, tak se na to můžeme ukázat všichni přes toho. Tak já to teda.

**Speaker 9** [26:12]:
Nějak docela na podstatnou část rozdělil vlastně na dvě skupinky. Gý s Radkem vlastně se věnovali hlavně tomu, jak vizualizovat...

[26:32]:
Ty odpovědi na ty otázky, jak to udělat prostě víc interaktivní a víc sexy, takže hodně času tam stálo, kdy vytvořili knihovnu vizuálních potrvků, který se dají použít, to si můžeme vlastně všechno ukázat, a já, Krištof a Jára jsme pracovali na tom, že jsme vlastně vyrobili ingest... Vypadá to jako pipeline, protože vychází z nějaký datový sady, ono to zpracuje kompletně tu statistiku, kde to vlastně hledá nějaké typické statistické zpracování, ale pak to tam hledá nějaké demografické insighty, paradoxy, další věci a z toho má za úkol, to se děje čistě automaticky.

[27:30]:
Je to řízení LLM-kovým skillem, takže Cloud podívá se poznat, co tam přišlo za typ toho datasetu. On už zná dva druhy. Na to pak má postavené deterministické Pythonovské pipeliny, kterýma to zpracovává. Takže tam nějakým způsobem pracuje jako LLM a ty offloaduje na Python. Pak tam do toho zasahuje... To znamená, ten stroj když pracuje ten dataset, tak má za dokol navrhnout sedm nějakých zajímavých otázek a je tam nějaká scoring, metodologie, co se považuje jako za zajímavou otázku, na kterou když si vlastně ty odpovíš, tak zjistíš nějaký zajímavý insight na těch datech, takže výsledkem je, že ty teda nakrmíš.

[28:28]:
Ty nakrmíš nějakej dataset, dostaneš návrhy, jaký z toho můžou vypadnout zajímavý otázky, Ty tam to s tím elenkem ještě oddiskutuješ, upravíš, řekneš, tady to je nepřesně položená otázka, je zavádějící třeba atd. No a když ješ spokojený, tak si to s ním odsouhlasíš a on z toho jednak udělá ten deck, To je jedna z věcí, která se může tomat vlastně v tom devi. Je vždycky jeden tady z těchto položek. To je ten deck, který se stává z určitých otázek a jejich vyhodnocení.

[29:04]:
Pak z toho udělá ještě report Mark Downovej, to znamená on ti vlastně udělá report, ze kterého bys mohl postavit jako PDF, Jako naše firma udělala výzkum a tady jsou výsledky okomentovaný. A poslední vyrábí z toho nějakej strukturovaný JSON, který prostě se dá použít, zapojit někam dál. Takže my jsme se věnovali tomu, abychom měli tuto pipeline. A během toho jsme tam přidávali vlastně ty odstupné výzkumy.

[29:34]:
Něco našel vlastně Kryštof z veřejně dostupných zdrojů, Něco nám tam do toho dal Jára. A ten smysl vlastně toho skillu, té ingest pipeliny je v tom, Že on když pozná, že mu přišel nějakej dataset novýho typu, který třeba jako neumí, Tak vlastně začne navrhovat, jakým způsobem by jsme ho mohli taky zpracovat. A ta tabulka toho, co jsem říkal, zatím zná dva, tak by se měla jako rozrůstat, Aby to umělo eventuálně vlastně všechno zpracovat do té podoby toho datadeku,

[30:05]:
Tak jak jsme si ho tady jakoby nadefinovali. Kdyžtak mě doplňte, jestli jsem něco zajímavýho přeskočil.

**Speaker 1** [30:15]:
No možná doplnění k vám, Ravku, z dývy, jak se hodně parkovalo na vizualizacích, tak myslím, že je to super, vlastně o to se pobohatilo to repo, že je tam ta library, kde je vlastně jako dostupnost. Tak tam skromně.

**Speaker 8** [30:29]:
Jo, jo, já vám to ukážu, no. Tak jenom řeknu, my jsme se vlastně rozdělili na ten tým, který řešil to ingestion a to, jak tam vlastně dávat nějaké nové studie a jak z nich dělat tady tyhle dotazníky. A my jsme se soustředili spíš na tu věc, jako jak by lepši ty dotazníky, jak je udělat zajímavější. A řešili jsme vlastně separátně, to ukážu já, Jako různý, zkusili jsme vygenerovat různý vizualizace těch odpovědí, Takže jsme nějak řešili, jak se obvykle vizualizují binary otázky, jak bychom je tam chtěli zobrazit.

[31:00]:
Potom tam máme Likert Scale, A zase jak se jako vizualizuje, jsou tady nějaké optional vizualizace, které nám přišly příliš vědecký, Tak ty jsme pak neřešili. A potom tam jsou samozřejmě nějaký takový distribuce a zase, jak je zobrazovat a z nich jsme vybírali některý... Violin. To jsme právě nevybírali, já jsem ji tam chtěl a ti řekla, že ji tam nechce.

[31:26]:
No, takže to byl jako náš jeden projekt, že vlastně zač... Tak to vybráme. Jo, jo, přišli... Můžeme nějaký štipný... No, nevím, můžeme tady dát domečky...

**Speaker 1** [31:35]:
Pes byl fakt dobrý, nevím, jestli tam už je...

**Speaker 8** [31:37]:
Co tam byl? Pes? My jsme tam měli psa, kterej nebyl pes, kterej bohužel taky neprošel, takže máme ťapku. Počty pavlí doma. Počty pivo. My jsme vlastně koukali, my jsme se potřebovali hrozně doskylit v tom, jaký vůbec existujou vizualizace, jaký jsou appropriate, jaký jsou dobrý pro ty věci, který chceme ukazovat. A prostě když jsme otevřeli jakýkoliv nějaký New York Times nebo nějaký researche, který jsou dobře zpracovaný, tak je vidět, kolik do toho naladili práce pro to, aby to dobře vypadalo. Takže jsme udělali prostě jenom...

[32:07]:
Jsme vlastně rozšířili, původně tam byl jenom tady tenhle ten single bar a my jsme ho rozšířili o nějaký další možnosti, jak můžeme vizualizovat ty odpovědi. Takže potom asi to můžeme ukázat potom na tom. Chceš to ukázat?

[32:25]:
Jo. Můžete jenom. Tak pojď to ukáž. A dáme to všem? A nebo to můžete vyzkoušet všichni.

**Speaker 9** [32:36]:
Než by to vyskoušeli všichni, abych tam ještě zkusil hodit tu prezistenci. Teď? No.

**Speaker 6** [32:43]:
Teď to tam bude. Můžu se zeptat? Zeptej se. Jsou odpovědi prezistentní? Počítají se do těch setů? Ne, ne, ne, počítaj.

**Speaker 9** [32:55]:
My jsme potřebovali omezit scope, abychom k něčemu došli a prezentovali hotovou věc. Takže jsme řekli, že pracujeme na uzavřených datasetech. A ten backend tam není, takže vlastně tohle je čistě frontendová věc, ale já jsem tam teda udělal pro ty účely tady toho dema, akorát jsme to nestihli otestovat, takže podle mě demo efektí by mohl zafungovat, ale mám tady rollback připravený, že bysme teďka, vy byste si to odevřeli vlastně všichni, mohli bysme si to poklikat.

**Speaker 8** [33:32]:
A ne, nepřijdem ještě o to ukázání toho, co jsme tam vytvořili. Jo, jo, jo, tak tím pak skončíme.

**Speaker 9** [33:38]:
Tak jo, takže teď si jenom prohlídíme.

**Speaker 10** [33:45]:
Ještě ne. No tak ukážeme třeba notaritum, je to blízko tomu, jak to někdo požil AI. A je tam několik otázek, které člověk musí odpovědět za sebe. Jak často používáš na jeho nástroje, denně, za sebe. Potom, kolik lidí si myslí, že je to odpověď o denně, takže ten formát je takový, že vždycky odpovídáš za sebe. A pak, jak si myslíš, že to je v těch, pardon, ti společnosti. Jo, ano.

[34:19]:
Jo, takhle. A potom ti ukazuje vlastně, jak se porovnáš. Další nějaká otázka. Ano. Potom chodím k lidi, myslíš, že taky odpověděl, ano, zase to porovnávání vlastně s tebou je procent a takhle mi to pořád porovnává vlastně mezi jako mnou a společností. A když dáš ne,

**Speaker 7** [34:49]:
Tak taky koup takhle. Kolik lidí odpovědělo že ne? Jako tak.

**Speaker 9** [34:59]:
Krásně.

**Speaker 8** [35:01]:
Tohle je to, co vlastně, kdy jste tam vypotili, že ta oči žádná žád, Ono to má dvě rozměry, takže musíš potom ještě jako třetí a.

**Speaker 7** [35:52]:
Cožkoliv. Jakbych měl otázku, jestli piju kafe každý týden třeba a řekl bych, že ne, tak když pak budu hádat, kolik lidí odpovědělo, že nepije kafe každý týden, tak tam zároveň můžou být různý odpovědi, že to vlastně jako není jasný, že na co jsem se neptal, takže já nemůžu to vizualizovat. Je to tak?

**Speaker 10** [36:24]:
My jsme vždycky nechali tu vizualizaci takovou, že když odpovíš ne, tak ono ti ukáže vlastně, jak se jenom to vysvětlí.

**Speaker 8** [36:33]:
My jsme nám strašně chtěli dělat otázku, a kolik lidí to má stejně jako vy. Jenže když jenom 2% lidí pijou kafe, tedy nepijou kafe, a odpověme jako OK, já myslím, že 2%. Tak potom v tom výsledku to chceš ale otočit jako na tu otázku, kolik lidí pije kafe, že jakoby ty otázky jdou proti sobě, já to nějak nedokážu myslet.

**Speaker 7** [36:55]:
A mě to, já to spíš to dokážu, že to do mě přijde jako problém, kdybych viděl vlastně, kolik lidí nepije kafe, tak mi by přijde v pohodě, co to je, že to je to.

**Speaker 8** [37:06]:
Jo, jenom pak musíš otočit to, co prezentuješ na konci, Protože předchozí otázka byla, kolik lidí to má stejně jako ty. Ale když bys to prohodil, tak by to mohl být...

**Speaker 7** [37:14]:
Když jsem se ptal úplně, tak jsem vlastně se ptal, jestli vůbec to otočení, Ale bylo jako s statistickým zprávem, že? Já když se na něco ptám, tak to znamená, že ten opak...

**Speaker 8** [37:22]:
Ano, ano. Ano, přesně tak. Takže tam se nám tyhle dva koncepty trošičku byly spolu. Takže když by se to dalo vyřešit, ale rozhodným způsobem by se to dalo vyřešit jako teďka, no. A to se nám skoro zbylo právě, že jsme byli nadšení a pak najednou... Jsme zjistili, že to vlastně pro ty opační odpovědi nefunguje dobře, no.

**Speaker 9** [37:38]:
Jo, ale to je zajímavý i že prostě Jára třeba našel nějaký díry v té interpretaci těch dat, Tak jak to to AIko udělalo, říká jo, ale to je zavádějící, to se takhle nedá říct. Ale to je na tom to hezí, zase jsme jako se obrátili zpátky na AI a řekli jsme, Hele, tady nám to úplně není jasný, jako jo, a teď jsme udělali deep dive a doputovali jsme někam, Takže je tam hodně práce ještě. Ale máme tam spoustu jako věcí založenejch, jak dál by se dalo pokračovat, co se dá, a budeme muset teda pokračovat dál, protože je to fajn.

**Speaker 7** [38:15]:
Můžu říct, že moje ideje jako v pohodě, jsem vlastně či pár let se pohožděl na celé tolik, který řekne, že nepije kafe, Tak pak chci ho zeptat, kolik lidí si myslí, že odpovědělo, že pije kafe. Ano.

**Speaker 8** [38:26]:
Ale potom je to takový už takový... Ale je to už nepokojený jenom hrát, a už se to ne... Tým jsme ale ztratili ten game faktor, jako poli lidi to má stejně jako já, to byla jako strašně dobrá otázka, ale pak přesně tady s tímhletím kvašovala, takže jsme to myslím dali zpátky potom poli lidí, že jo, běhat a takový smutnější, jo. Tak jo.

**Speaker 9** [38:46]:
Tak já jsem tam teďka nahodil ten novej backend, takže už to běží na Expressu a vy si teďka můžete publikat ty poly, ty i ty jiný, než tady tenhle ten AIkovej interaktivní, mějte ostatní. Taky fungujou a já pak jsem zvědavej, mělo by ti to do local storage uložit nějaký IDčko a jenom poslední, když ten formulář vezmeš dvakrát, tak poslední se jenom bude počítat a vystřelíme si tady nějakou statistiku.

[39:17]:
Může to?

**Speaker 2** [39:17]:
Tohle je bleský. Tady chvíli. Kdo to dělal? No, kámoš? Jo. Kdo to vymyslel? Já. To je úvodní stránka. No, tak. A je to random? Víš, jestli je ta distribuce random, nebo není?

**Speaker 9** [39:37]:
No, je normální. Distribuce je normální.

**Speaker 2** [39:40]:
Ale jestli to vždycky vyjde stejně, když jde pro 60 randů?

**Speaker 9** [39:43]:
Třeba na desktopu, kde myš odpálkuje ty kuličky, když padají. To číslo N je nižší, protože oni odlejí někam do prdele, až nikdy nedopadnou. Takže je to trošku random. Nedopadne to vždycky stejně. Co se máme poklikat? Je to jedno, jakýkoliv to je možné. Já bych chtěl i zpětnou vazbu, jestli nějaký to téma vás zaujme.

**Speaker 3** [40:10]:
A to jste pro tě vzali, co zrovna bude průzkum hřejního výmění?

**Speaker 9** [40:14]:
Vycházeli jsme i z toho, co třeba já poskytnul. Viděl já, například napadalo jinak, než to bylo.

**Speaker 7** [40:22]:
A teď se pomizujeme? Ty data jsou jenom my tady? Ne, vždycky je to porovnáváný vůči tomu existenčnímu datasekci.

**Speaker 1** [40:31]:
Tak čemu je teda úplný rozdíl? No, že ty odpovědi se ukládají. Takže to je další z věcí, na kterou jsme dál zjistili.

**Speaker 9** [40:41]:
My jsme měli vyhodnocení toho Solidarity Indexu. To je prostě index, který ještě má tři složky a tak dál. Chceme vyhodnotit, jak si stojíš, jaká je tvoje deviation a tak dál. Ale fakt ty... Ty další deky jako nemá smysl hned i tímto způsobem, protože prostě, takže my zase jsme přidávali jako další způsob vyhodnocení. Mám pocit, že v tom, někde u těch neziskovek.

**Speaker 1** [41:11]:
Máme tam takový plan, tak jistý, když máme na smysl, kdyby tam nešlo. To byla taková představka.

**Speaker 9** [41:31]:
Ta poslední skrýna s tím vyhodnocením je taková. Jo, ta je. Je nedotežená, protože To je docela potřeba rozmyslet. A.

**Speaker 8** [41:42]:
Máme tam někde něco skrytáčního, Když zkoušíme, nebo co byl ten tvůj Prezident?

**Speaker 9** [41:50]:
Jo, teďka když všichni, jo hele, Nezískovky v Česku mají to vyhodnocení jiný, Když takhle ukážu jenom. A taky je zavádějící. Není úplně perfektní, ale je to jako ten příklad toho, jak je to jinak udělané než ten zbytek.

**Speaker 6** [42:27]:
Je to pak dobrý, jo? Ale radši super, že to jako... Stačí ve všech otázkách.

**Speaker 3** [42:53]:
Tohle je plavé, tohle je plavé.

**Speaker 2** [43:21]:
Jak se vám zopáří tý rozhoz?

**Speaker 9** [43:29]:
Je o tom příjem užitečný. Koukal na to, že tomu dáte výzkum, A teď na něj začnou padat ty insajty. Ale takhle. Takže jak to použijete ve vním, že jo? Protože to bude myšlet jako, kde si to nasadí, Myslím, že to ještě dostává přesta od toho, Než to bude dělat to, co chce, aby to dělalo asi.

**Speaker 3** [44:01]:
A tak jako kvůli autonomii, Ale když si s tím pohraje pro nějakej konkrétní malý, Tak to jde celkem hrozo?

**Speaker 9** [44:08]:
Určitě. Hele, mám tady takhle zatím.

[44:20]:
Ukrajinová, tecta Kipček 1.
