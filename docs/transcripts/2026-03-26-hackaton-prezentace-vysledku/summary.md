## Informace o schůzce
> Datum: 2026-03-26 16:10:33
> Místo konání: [Vložte místo konání]
> Účastníci: [Speaker 1] [Speaker 2] [Speaker 3] [Speaker 4] [Speaker 5] [Speaker 6] [Speaker 7] [Speaker 8] [Speaker 9] [Speaker 10]
## Zápis ze schůzky
### Porovnání nástrojů pro správu paměti (Memory Management Tools)
- **Úvod**: Byly zahájeny 4 projekty a 3 byly dokončeny. Cílem tohoto projektu bylo porovnat různé nástroje pro správu paměti.
- **Výzvy projektu**:
  - Vyskytla se komunikační režie a obtíže při spolupráci.
  - Z původně plánovaných tří nástrojů byly prozkoumány pouze dva: Mem0 a Graphity.
- **Dosažené výsledky**:
  - Hlavní cíle nebyly splněny; nepodařilo se shromáždit dostatečně kvalitní data pro reprezentativní testování.
  - Byly překonány technické překážky, jako je nahrávání dat (tisíce konverzací) do databáze Graphity.
  - Kvalita uložených dat je nízká kvůli špatně definovaným entitám.
  - Bylo nastaveno přibližně 30 testovacích případů (test cases) vytvořených pomocí LLM.
- **Proces testování**:
  - Testovací pipeline pokládá dotazy do databáze znalostí.
  - Porovnává skutečné výsledky s očekávanými výsledky připravenými LLM, aby se vyhodnotila úspěšnost.
### Analýza výkonu databáze Graphity
- **Popis**: Graphity je chytrá grafová databáze, která ukládá entity a vztahy mezi nimi. Umožňuje procházet (traverzovat) tyto vztahy.
- **Klíčová zjištění**:
  - Nástroj neumí odpovědět „nevím“ (I don't know), pokud je dotaz špatně formulován (promptován), a místo toho vrací nesmyslné odpovědi.
  - Analýza pomocí Cloudu odhalila nízkou odolnost vůči halucinacím (hallucination resistance).
  - Byl zjištěn špatný „temporal reasoning“ – nástroj neposkytuje vždy nejnovější informace k danému tématu.
- **Latence**: Průměrná latence dotazu je přibližně 700 milisekund.
### Zjištění k nástroji Mem0 a integraci
- **Popis Mem0**: Mem0 používá LLM k rozhodování, které informace (vzpomínky) jsou užitečné. Není to jen prosté načítání z vektorové databáze.
- **Integrace s Claudem**:
  - Byl vytvořen server s nástroji, aby se Claude mohl dotazovat na vzpomínky prostřednictvím Graphity.
  - Claude nástroj nepoužíval, pokud k tomu nebyl explicitně vyzván („zeptej se Graphity“).
- **Zpracování dat**: Zpětné naplnění (backfill) dat je časově náročné. Zpracování přibližně 700 zpráv trvalo asi hodinu a půl.
### Využití databáze pro inventář elektronických komponent
- Byla vytvořena jednoduchá lokální JSON databáze pro inventarizaci elektronických komponent (čipy, atd.).
- Databáze funguje jako MCP server s funkcemi pro hledání, ukládání a aktualizaci komponent.
- Při propojení s cloud desktopem bylo možné se dotazovat na dostupné komponenty pro konkrétní projekty.
- Nástroj také umožňoval porovnat obsah nákupního košíku s již existujícím inventářem a odstranit duplicitní položky.
- Závěr: Přestože je tento systém méně sofistikovaný než knowledge graph, ukázal se jako velmi užitečný a existuje motivace k jeho dalšímu rozvoji a integraci.
### Experiment s agentní společností
- Byla vytvořena simulace autonomní agentní společnosti pomocí serveru.
- Společnost se zpočátku rychle rozvíjela, splnila mnoho úkolů a vyžadovala i reorganizaci (zmenšení středního managementu).
- Bylo spotřebováno přibližně 130 milionů tokenů, což ukazuje na vysokou produktivitu.
- Viktor vytvořil vizualizaci, která ukazuje pohyb agentů v kanceláři.
- Zjistilo se, že simulace věrně napodobovala reálné chování: CEO spotřeboval většinu zdrojů (tokenů), zatímco ostatní agenti byli nečinní ("v kuchyňce").
### Zjištění a problémy s agentní společností
- Agenti se časem zasekávali a přestali plnit úkoly, a to i přes pokus o zavedení role "Scrum Mastera".
- Problémem byl nedostatek přístupu k reálným zdrojům, jako je nástroj pro rozesílání newsletterů.
- Bylo odhaleno bezpečnostní riziko: agenti získali přístup k přihlašovacím údajům přes cloudové předplatné, což ukázalo na nebezpečí propojování osobních účtů.
- Bylo konstatováno, že pro úspěšnou orchestraci je nutné buď mít plně testovací prostředí pro všechny integrace, nebo jednotlivé funkce pečlivě odladit před nasazením do produkce.
- Existuje riziko, že by si společnost mohla sama stanovit nové cíle a začít generovat neočekávané výstupy do produkčních systémů.
### Nápady na budoucí vylepšení a nástroje
- Existuje zájem o vytvoření hybridní společnosti, kde by vedle sebe pracovali lidští i virtuální agenti.
- Aktuální nástroje však neumožňují snadné nahrazování reálných lidí virtuálními nebo integraci vlastních, již existujících agentů.
- Byl představen "from scratch" editor pro vizuální návrh kancelářského prostoru společnosti, kde lze přemisťovat nábytek a definovat místnosti.
### Rozdělení práce a vývoj Ingest Pipeline
- Tým se rozdělil na dvě skupiny. První skupina (Gý a Radek) se zaměřila na vizualizaci dat.
- Druhá skupina (Kryštof, Jára a [Speaker 9]) pracovala na "ingest pipeline".
- Pipeline automaticky zpracovává datové sady pomocí LLM a Python skriptů.
- Systém identifikuje typ datasetu, provádí statistickou analýzu a hledá demografické vhledy a paradoxy.
- Na základě analýzy navrhuje sedm zajímavých otázek, které pomáhají odhalit vhledy do dat.
- Výstupem pipeline je interaktivní "deck", report ve formátu Markdown a strukturovaný JSON soubor.
### Vylepšení vizualizace dat
- Tým se zaměřil na vylepšení vizualizací odpovědí z dotazníků, aby byly zajímavější a interaktivnější.
- Byla vytvořena knihovna vizuálních prvků, která rozšiřuje původní možnosti zobrazení.
- Testovaly se různé typy vizualizací pro binární otázky, Likertovu škálu a distribuce.
- Řešily se problémy s vizualizací opačných odpovědí (např. "ano" vs. "ne"), aby byly srozumitelné.
- <mark data-color="rgb(249, 237, 212)" style="background-color: rgb(249, 237, 212); color: inherit;">Byl zmíněn příklad, že jeden použitý nástroj práci zkomplikoval, takže kreslení probíhalo ručně pixel po pixelu na mřížce 16x16.</mark>
### Interaktivní dotazník a sběr dat
- Byl představen interaktivní formát dotazníku, kde uživatel odpovídá za sebe a následně odhaduje odpovědi ostatních.
- Systém pak porovnává osobní odpověď s daty celé společnosti (existující datovou sadou).
- Byla zmíněna příprava nového backendu, který umožní sběr odpovědí od více uživatelů v reálném čase.
- Diskutovalo se o omezení, že se odpovědi prozatím neukládají do datasetů a backend pro to není připraven.
### Testování a zpětná vazba
- Účastníci byli vyzváni, aby si proklikali a otestovali různé dotazníky a poskytli zpětnou vazbu.
- Byla zmíněna nedokončená závěrečná obrazovka s vyhodnocením, která vyžaduje další práci.
- Diskutovalo se o tom, že některé vizualizace nebo interpretace dat vytvořené umělou inteligencí mohou být zavádějící.
## Další kroky
- [ ] Udělat další krok (iteraci) ve vývoji JSON databáze pro ukládání více typů informací (např. úkoly, potraviny).
- [ ] Zkusit zaintegrovat grafovou databázi do vlastních nástrojů pro kódování.
- [ ] Pokračovat v práci na projektu a dále jej rozvíjet.
- [ ] Vylepšit závěrečnou obrazovku s vyhodnocením výsledků.
- [ ] Vyřešit problémy s interpretací a vizualizací dat, aby nebyly zavádějící.
- [ ] Otestovat nový backend pro sběr a ukládání odpovědí.
- [ ] [Vložte další]
## Návrhy umělé inteligence
> **Návrhy AI**
> AI identifikovala následující problémy, které nebyly na schůzce uzavřeny nebo nemají jasné akční kroky; věnujte jim prosím pozornost:
> 1. Nástroj Graphity selhává v odolnosti vůči halucinacím a neumí odpovědět „nevím“, což vede k nesprávným odpovědím. Není jasné, jaké kroky budou podniknuty k řešení tohoto problému.
> 2. Byly zjištěny problémy s „temporal reasoning“ (poskytování nejnovějších informací). Další kroky pro zlepšení této funkce nebyly stanoveny.
> 3. Integrace s Claudem nefunguje autonomně; vyžaduje explicitní pokyny k použití databáze. Nebylo rozhodnuto, jak tuto integraci vylepšit.
> 4. Zpětné naplňování dat do Mem0 je velmi pomalé. Nebyla navržena žádná řešení pro optimalizaci tohoto procesu.
> 5. Agenti v simulované společnosti se zasekávali a přestali plnit úkoly. Pokus o vytvoření role "Scrum Mastera" pro řešení tohoto problému selhal a nebylo navrženo žádné konkrétní další řešení.
> 6. Bylo identifikováno bezpečnostní riziko spojené s tím, že agenti získali přístup k citlivým údajům. Bylo doporučeno nepřipojovat osobní účty, ale nebyly stanoveny konkrétní kroky pro zajištění bezpečnosti budoucích experimentů.
> 7. Není jasné, jak zajistit, aby autonomní agenti nedivergovali k neočekávaným cílům a nezačali ovlivňovat produkční systémy nežádoucím způsobem.
> 8. Projekt nemá hotový backend pro ukládání a zpracování nových odpovědí uživatelů v reálném čase. Současná verze pracuje pouze s předem definovanými, uzavřenými datasety.
> 9. Bylo zjištěno, že některé automaticky generované interpretace a vizualizace dat (např. u opačných odpovědí) mohou být zavádějící nebo nefungují správně.
> 10. Závěrečná obrazovka s vyhodnocením výsledků je nedokončená a vyžaduje další koncepční práci, aby byla pro uživatele smysluplná.