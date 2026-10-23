Není asfalt jako asfalt
AI Jam · 120 min + 10 min prezentace · režim: prozkoumat a rozhodnout

Do Slacku a na úvod (~1 min)
Není asfalt jako asfalt — sběr, transformace, integrace a využití dat ze silnic
Na časovkářském či ostrém silničním kole/inlinech je kvalita asfaltu jedno z nejdůležitějších, co o trase potřebuju vědět — a jediné, co se z mapy nedozvím. Můžu procházet satelitní snímky, ale je to zdlouhavé a někdy to nestačí. Z OSM zjistím materiál, ne jestli je to čerstvě vyžehlené nebo popraskaný lepenec.

Zajímavé je, že vodovod existuje — OpenStreetMap na to má tag, CyclOSM ho kreslí, plánovače s ním počítají. Jenom je vyplněný u devíti procent silnic a nemá pro nás dost vhodnou stupnici.

Dnes chceme rozmyslet, co sbírat, jak, kam to nahrát a jak s tím pracovat, aby to někomu reálně posloužilo. Celé to stojí na jedné myšlence: telefon, který má dnes každý, umí sbírat data z mnoha senzorů (včetně akcelerometru a pozice). Ale při 20 a 35 km/h dá jiný signál, stejně tak na různých pláštích a při různých tlacích — je potřeba to sjednotit.

Tři skupinky:

co a jak sbírat, jakou veličinu ukládat,
kam to nahrát a
jak to podat uživateli.
Ve dvou třetinách si to vzájemně zkritizujeme. Na konci má být jedna stránka a jedno rozhodnutí. A jestli nejezdíte — myšlenka je přenositelná na cokoli, co každému vychází jinak.

Můžete si předem udělat záznam (ideálně na kole) pomocí aplikace SensorLogger: Android: https://play.google.com/store/apps/details?id=com.kelvin.sensorapp&hl=en Apple: https://apps.apple.com/us/app/sensor-logger/id1531582925

Pro sběr dat si zapněte akcelerometr a pozici.

O co jde
Pro koho. Časovkáři a silničkáři na úzkých pneumatikách. A ještě víc inline bruslaři — tam kvalita povrchu nerozhoduje o wattech, ale o tom, jestli se tam vůbec dá jet. Stejná datová vrstva, jen jiná sestava, která ji snímá.

Co chybí. OpenStreetMap má tagy surface (materiál) a smoothness (sjízdnost), CyclOSM to kreslí, BRouter s tím počítá. Vodovod existuje. Satelitní snímky se dají procházet ručně, ale je to zdlouhavé a stejně z nich kvalitu nepoznáš. Chybí dvě věci:

Data — smoothness byl v Německu 2024 vyplněný u 8,6 % segmentů, surface u ~50 %.
Vhodná stupnice — smoothness odpovídá na „projede tudy vozidlo?“. Nás zajímá horní část stupnice, kde je všechno slepené do dvou hodnot. Silničkáři na to mají v CyclOSM otevřený issue.
Co myslíme kvalitou povrchu. Jak moc úsek zpomaluje a vyčerpává jezdce na úzkých kolečkách. Dva různé kanály: textura a zvlnění (spojité, popsatelné spektrem — tohle řešíme) a diskrétní defekty jako výtluk nebo spára (spektrum je vyprůměruje, chce jinou matematiku — pojmenujeme a odložíme).

Co znamená „sjednotit“ — jádro celého tématu. Signál z telefonu není vlastnost silnice, dokud se nezbavíme dvou vlivů:

Rychlost. Akcelerometr měří v čase, takže stejný asfalt při 20 a 35 km/h dá jiný signál. Ale λ = v/f — po přepočtu přes rychlost z časové do prostorové domény dostaneš nerovnosti na metr silnice, a to už vlastnost silnice je. Ne fudge faktor, fyzikálně správný krok. A jde to falzifikovat.
Sestava (plášť, tlak, uchycení telefonu, hmotnost). Tohle převod do prostorové domény neodstraní — zůstává jako přenosová funkce sestavy, kalibrovaná jednou na referenčním úseku.
Proč to nejde uložit jako jedno číslo. „Jak se mi to pojede“ není vlastnost silnice — závisí na pláštích, tlaku a hmotnosti. Proto ukládáme popis silnice nezávislý na sestavě a překlad na osobní náklad je samostatná vrstva až v dotazu. Proto taky jediné číslo v OSM nikdy nemůže stačit.

Cíl seance
Dospecifikovat a dorozmyslet sběr → transformaci → integraci → využití, aby to uživatelům reálně a uživatelsky přívětivě posloužilo. Ne implementace.

Hotovo je, když je na jedné stránce pipeline všech čtyř vrstev, u každé rozhodnutí a co by ho vyvrátilo — a k tomu verdikt o hypotéze H1 z reálných dat.

H1: Po přepočtu do prostorové domény dá stejný úsek při ~20 a ~35 km/h stejné spektrum, zatímco v časové doméně se spektra výrazně liší.

Kritérium „dobré“ (dohodneme na startu): u každého ze čtyř požadavků stojí rozhodnutí, jak se ověří a co by ho vyvrátilo. A red team nenajde pátý, který to shodí. Každá skupinka vlastní aspoň jeden:

požadavek	vlastní
srovnatelnost	1
aktuálnost, vyplněnost	2
snadnost sběru	3
Co ověřit nejde. Cíl je „kolik mě to stojí“, my měříme otřesy — proxy. Watty jsou z rozsahu venku, takže ověřujeme konzistenci, ne správnost. Opory: H1, přebraná validace z literatury, a shoda pořadí úseků s tím, jak je seřadí jezdci.

Čas. Živě: test H1, extrakce z článků, rešerše. Předem hotové: data, články, kostry tabulek. Ve dvou třetinách 10 min křížový red team. Posledních 15 min výhradně na předání, i kdyby nebylo hotovo.

Kdyby se nedojelo: zbývá tabulka z článků (vzniká bez dat i kódu), cesta přispění, rozhodnutí o „neznámu“ — a případně vyvrácená H1, což je taky výsledek.

Tři skupinky
1 · Co a jak sbírat, jakou veličinu ukládat
Největší skupinka, dvě dráhy paralelně — jedna nepotřebuje kód, druhá bez dat neexistuje:

Dráha data (Python nebo Claude Code) — na připravených záznamech otestuješ H1 a odpovíš na dvě věci: ve kterém pásmu vlnových délek je výsledek důvěryhodný, a shoduje se pořadí úseků podle metriky s pořadím podle jezdců? → dva grafy a verdikt
Dráha literatura (Claude v chatu, bez kódu) — čtyři odborné články + extrakční tabulka. Pro každý: jakou veličinu měřili, jak normalizovali rychlost, co použili jako ground truth, jaké rozlišení, proti čemu validovali, co sami přiznali jako nefunkční. → tabulka a verdikt „přebrat hotový index, nebo stavět vlastní“
Dráha literatura nemůže spadnout — když nepřijde nikdo technický, nese výstup skupinky sama.

2 · Kam to nahrát
Tři cesty a jejich bariéry:

cesta	bariéra
1	Render PR do CyclOSM — odlišit horní část stupnice	nejnižší, nepotřebuje ani jeden nový datový bod
2	Vlastní vrstva na OSM way ID — sem patří bohatá data	střední, model SmartRoadSense
3	Derivovaný tag do OSM	nejvyšší; precedens mtb:scale (specifická stupnice + +/-)
K tomu životnost dat: kolik průjezdů, než úseku uvěříme? Jak dlouho měření platí? A jak automaticky poznat opravený úsek od šumu — nová měření nesouhlasí se starými. → cesta přispění + datový model pro stárnutí

3 · Jak to podat uživateli
Jak plánovač zachází s „neznámo“? Neutrální = pošle mě na neprojezené silnice. Špatné = nikdy nic nového neobjevím.
Co uživatel při plánování vidí — barva na mapě, číslo, srovnání dvou variant trasy?
Co musí zadat jednorázově (sestava) a co při každé jízdě (ideálně nic)?
Proč by to vůbec sbíral? Bez odpovědi na tuhle otázku je vyplněnost jen zbožné přání.
→ rozhodnutí o „neznámu“ + náčrt toho, co uživatel dělá a vidí

Red team dělají všichni, křížem — ve dvou třetinách si skupinky vymění stránky a 10 minut útočí na sousedovu.

Co si vzít s sebou (doporučení)
Vlastní záznam ze Sensor Loggeru a/nebo svůj případ, kde ti měření vychází jinak podle toho, kdo nebo čím ho udělal — nesrovnatelná data napříč zdroji, anotátory, hodnotiteli. V posledních 15 minutách si k tomu každý, kdo chce, napíše jednou větou, jak se čtyři požadavky vztahují na jeho případ. Zapojit se jde i s prázdnýma rukama, práce je na místě dost.

Vlastní záznam (viz odkazy na aplikaci v úvodu): zapni akcelerometr na nejvyšší dostupné frekvenci a pozici, telefon uchyť co nejpevněji a zapamatuj si kam, projeď úsek ustálenou rychlostí bez brzdění. Zapiš sestavu — kolo nebo brusle, šířka pláště nebo kolečka, tlak. Víc záznamů z různých sestav na jednom úseku je to nejcennější, co může přijít: ukáže to, kolik ze signálu je silnice a kolik sestava.

Předání
Forma: sepsaný recept jako artefakt + mini-prezentace. Ne demo — H1 je graf, ne nástroj.

Co si odneseš, i když nejezdíš: měření se dají srovnat tím, že najdeš doménu, ve které je měřená věc vlastností objektu, ne měření. Plus tři recepty: strukturovaná extrakce z článků do rozhodovací tabulky, Claude Code nad ošklivými senzorovými daty, a odhad akceptační bariéry cizího open-source projektu.

V 10 minutách: reframe s číslem 8,6 % a screenshotem → graf časová vs. prostorová doména a verdikt → tabulka z článků a rozhodnutí → tři cesty přispění → co uvidí uživatel → slepé uličky.

Slepé uličky:

Nyquist objevený pozdě by potopil analýzu — vzorkovací frekvence určuje, jaké vlnové délky jsou vůbec v datech, a mění se s rychlostí (viz appendix).
Watty byly jediné objektivní ukotvení a jsou vědomě venku.
Appendix
Články k extrakci (open access)
Vliv rychlosti na měření roughness, Sensors 2017 — past s rychlostí, zkvantifikovaná. Auto.
Roughness z telefonu na kole, Sensors 2018 — nejdůležitější: kolo, IRI, korelace s profesionálními přístroji, mluví o crowdsourcingu do OSM.
Bicycle Road Roughness Index, Sustainability 2025 — hotová cyklistická veličina.
Bicycle roughness & risk, Sensors 2025 — druhý kandidát.
Ekosystém
Key:smoothness, Key:mtb:scale — mtb:scale je precedens pro disciplinární stupnici i pro +/- (u smoothness to dokumentované není).
CyclOSM issue #585 — kandidát na první PR. Repo je CartoCSS styl: renderuje z OSM, sám data nedrží.
SmartRoadSense + open data — model vlastní vrstvy (index na OSM ID). Pro auta.
BRouter PR #58 — plánovač už s smoothness počítat umí.
StreetSurfaceVis — snímky anotované kvalitou; zdroj čísel o pokrytí.
Silca — impedance — proč je „osobní náklad“ jiná vrstva než „vlastnost silnice“.
GNSS velocity — proč je rychlost z GPS řádově přesnější než pozice z GPS.
Fyzikální limity
Rychlost z GPS není problém. GNSS ji počítá z Dopplerova posunu, ne z derivace pozice: ~cm/s proti ~1 m/s. Při 30 km/h chyba pod 1 %, zatímco H1 testuje faktor 1,75. Šněrující trasa na mapě ≠ špatná rychlost.
Binding constraint je Nyquist. Při 100 Hz max 50 Hz → vlnová délka 0,19 m při 35 km/h, 0,11 m při 20 km/h. Kratší nerovnosti v datech nejsou. Limit závisí na rychlosti, takže každá jízda má jiné rozlišení → H1 lze testovat jen nad ~0,2 m. Verdikt musí být s tímto pásmem.
Uchycení je součást přístroje. Řídítka, rám a kapsa = tři různé signály.
Čtyři požadavky
Srovnatelnost (skupinka 1) — co odstraní převod do prostorové domény a co zbyde na přenosovou funkci sestavy? Jak se kalibruje, když ji uživatel nezadá?
Vyplněnost (2) — kolik průjezdů, než úseku uvěříme? Je „neznámo“ prvotřídní hodnota?
Aktuálnost (2) — jak dlouho měření platí a jak automaticky poznat opravu od šumu?
Snadnost sběru (3) — co musí uživatel zadat jednorázově a co při každé jízdě? Proč by to dělal?
Odložené
Diskrétní defekty (výtluky, spáry) — jiná matematika, jiné uložení; bolí nejvíc, mapují se nejhůř. · Watty jako cílová veličina (Chungova metoda z power meteru) — nejlepší dostupná validace, kdyby se projekt rozjel. · Snímač rychlosti na kolo.

Hraniční případy do diskuze
Dlažba vs. výtluk · mokro · brzdění a zatáčky · stopa v pruhu (u kraje je to jiná silnice) · tramvajové pásy · stoupání vs. rovina při stejné rychlosti.
