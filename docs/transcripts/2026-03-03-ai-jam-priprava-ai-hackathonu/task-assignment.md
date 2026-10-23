## 1. Vývoj a nasazení agentního programovacího systému
Systém je navržen pro automatizaci úkolů správy webu s AI novinkami, konkrétně pro odbavování issues z GitHubu. Aktuálně byla implementována nová funkce – přehrávač audio verzí článků přímo na domovské stránce, který byl vygenerován automaticky na základě vágního pokynu v issue. Pro generování řeči se využívá open-source TTS běžící na serveru, což eliminuje závislost na externích API. Problémem je, že systém občas selže, například nedávno nevygeneroval článek kvůli vyčerpání tokenů. Cílem je systém dále rozvíjet, aby fungoval předvídatelně a zvládal komplexnější úlohy.
Další vývojová fáze zahrnuje nasazení nové pipeline na výkonnějším hardwaru (počítač s 3/4 TB RAM a 24GB RTX 6000 kartou). Plánuje se využití modelu Qwen pro refinement backlogu a jednoduššího orchestrátoru (podobného A-sonet) pro rozdělování úkolů. Složitější úkoly budou následně zpracovávány pomocí modelů Claude Sonnet nebo Opus. Úkoly jsou řízeny přes systém front (task queue), konkrétně ARQ, který spouští skripty na základě status kódů. Celý proces je navázán na GitHub, kde agent polluje issues, a pokud je na něj issue přiřazeno, začne ho řešit. Cílem je dosáhnout stavu, kdy stačí ráno zkontrolovat hotovou práci, kterou agent přes noc vykonal.
### Plán práce
- [ ] Otestovat a plně zprovoznit novou pipeline s využitím modelu Qwen a orchestrátoru na serveru s RTX 6000. -- *Speaker 2*
- [ ] Doladit agentní systém tak, aby správně reagoval na zmínky (mention) a přiřazení (assign) v GitHub issues a aby se nepouštěl do úkolů, které mu nejsou explicitně určeny. -- *Speaker 2*
- [ ] Vytvořit jasná pravidla a dokumentaci pro agenta, co má a nemá dělat, aby jeho chování bylo předvídatelné. -- *Speaker 2*
- [ ] Připravit ukázku celého funkčního systému pro prezentaci, například na AI Gym. -- *Speaker 2*
## 2. Příprava, organizace a struktura AI hackathonu
Organizace se zaměřuje na přípravu komunitního hackathonu s cílem maximalizovat zapojení a praktický přínos pro účastníky. Hackathon bude orientován na konkrétní use-casy a cíle, nikoliv pouze na technologie. Den začne krátkým blokem "lightning talks" a "show and tell" (cca 1-1,5 hodiny), kde týmy představí své projekty. Zbytek dne bude věnován praktické práci. Byl navržen formát se dvěma tracky: delší "hackathon track" pro aktivní práci na projektech a kratší "diskusní track" pro ty, kdo se chtějí zapojit jen na pár hodin.
Hlavní myšlenkou je vytvořit "virtuální autonomní firmu" s využitím sdílené platformy OpenCloud. Účastníci budou v týmech přidávat různé dovednosti a procesy (např. objednávání svačin, zakládání tiketů). Tento jednotný přístup má usnadnit spolupráci a vzájemné učení na stejné technologii. Témata se budou sbírat předem přes Slack nebo Google tabulku, aby se kolem nich mohly přirozeně tvořit týmy (3-5 lidí). Každý tým bude mít lídra, který převezme zodpovědnost za téma. Pro zajištění hladkého průběhu bude k dispozici podpora od organizátorů, kteří budou facilitovat práci skupin. Uvažuje se o rozšíření kapacity na 18 účastníků a řeší se financování občerstvení, například zavedením vstupného 100-200 Kč.
### Pracovní plán
- [ ] Vytvořit seznam témat a sdílet je, aby si lidé mohli vybrat nebo navrhnout vlastní. -- 3 týdny
- [ ] Zorganizovat pro každé téma samostatný kanál na Slacku pro koordinaci před hackathonem. -- *Všichni*
- [ ] Sbírat témata od účastníků a na základě toho rozdělit lidi do skupin po 3-5 lidech. -- *Speaker 2*
- [ ] Udělat za dva týdny kontrolu, jak se témata formují a jestli se tvoří týmy. -- *Všichni*
- [ ] Vyžadovat potvrzení účasti s dostatečným předstihem pro plánování kapacit.
- [ ] Vyřešit občerstvení a jeho financování, včetně možnosti výběru vstupného 100-200 Kč. -- *[Speaker 3]*
- [ ] Informovat ostatní o formátu setkání na Slacku. -- *[Speaker 1]*
## 3. Technické zajištění a podpora pro hackathon
Hlavní technickou výzvou je bariéra pro méně zkušené účastníky, jelikož instalace nástrojů jako OpenClue/OpenClone (včetně gateway, relays, SSH) není intuitivní. Pro odstranění této překážky a zaměření na obsah se plánuje poskytnutí "enablerů" – předpřipravených prostředí. Bude připravena jedna centrální sdílená instance OpenCloud, aby se účastníci nemuseli zdržovat instalací. Byla také zmíněna možnost, že si účastníci mohou sami vytvořit VPS za pár dolarů.
Pro zajištění funkčnosti jedné instance pro více týmů (až 15 lidí) se zvažuje využití skupin v Telegramu, které umožňují oddělené kontexty a sessions. Jako záložní plán pro případ technických problémů se počítá s možností rychlého klonování virtuálního stroje (Proxmox). Pro další snížení technické bariéry bylo navrženo uspořádat online přípravné školení přibližně týden před akcí, kde by se účastníci naučili základy práce s OpenClone a SSH.
### Pracovní plán
- [ ] Zajistit, aby formát příštího AI Jobu umožňoval souběžný běh hackathon tracku a kratšího diskusního tracku. -- *Tomáš*
- [ ] Připravit technické zázemí předem (centrální instanci OpenCloud, servery, pipeline). -- *Jirka*, *Speaker 3*
- [ ] Prozkoumat a rozhodnout, jak technicky zajistit fungování jedné instance OpenCloud pro více týmů (pravděpodobně pomocí skupin v Telegramu). -- *[Vložte jméno]*, *[Vložte jméno]* Do příštího setkání
- [ ] Připravit záložní plán pro případ technických problémů s centrální instancí.
- [ ] Zvážit uspořádání online přípravného školení týden před hackathonem pro pomoc s instalací a základními dovednostmi. -- *Tomáš*
- [ ] Účastníci, kteří potřebují specifické technické prostředí, si jej mají připravit sami během tří týdnů před akcí. -- *Všichni*
> **AI návrhy a nezodpovězené otázky**
> Umělá inteligence identifikovala následující problémy, které nebyly na schůzkách uzavřeny nebo jim chybí jasné akční kroky; věnujte jim prosím pozornost:
> 1. **Stabilita a spolehlivost agentního systému:** Systém je nestabilní, jak ukázalo selhání generování článku kvůli vyčerpání tokenů. Chybí konkrétní plán pro monitorování a řešení těchto selhání.
> 2. **Dokončení a nasazení nové pipeline:** Implementace nové hardwarové a softwarové pipeline (Qwen, orchestrátor) je stále ve fázi testování bez jasného časového plánu pro dokončení a nasazení.
> 3. **Řízení nákladů na hackathonu:** Byla zmíněna obava ohledně spotřeby velkého množství tokenů, ale nebyl stanoven rozpočet, odpovědná osoba ani mechanismus pro řízení nákladů.
> 4. **Konkretizace úkolů pro hackathon:** Ačkoliv byl stanoven rámec "virtuální firmy", chybí seznam předem definovaných úkolů nebo "skillů", ze kterých by si týmy mohly vybírat.
> 5. **Formování a velikost týmů:** Nebylo finálně rozhodnuto o způsobu formování týmů (dobrovolně, přidělením) ani o jejich ideální velikosti, což může ovlivnit dynamiku akce.
> 6. **Správa API klíčů:** U centralizovaného modelu nebylo vyjasněno, jak bude spravován přístup ke sdíleným API klíčům (např. OpenAI), aby nedošlo k jejich vyčerpání či zneužití.
> 7. **Podpora pro méně zkušené a nerozhodnuté účastníky:** Není jasné, jak bude poskytována podpora těm, kteří se nezúčastní přípravného školení, a jak aktivně zapojit "plonkové lidi", kteří se nepřipojí k žádnému týmu.
> 8. **Logistika a termín:** Termín hackathonu není finálně potvrzen. Chybí také určení osoby odpovědné za komunikaci a shromažďování závazných potvrzení účasti. Nebyl stanoven ani proces pro přijímání nových účastníků.