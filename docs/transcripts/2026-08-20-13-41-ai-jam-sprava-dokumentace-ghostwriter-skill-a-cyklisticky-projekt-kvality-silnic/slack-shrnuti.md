---
title: "AI Jam 2026-08-20 — Slack shrnutí pro nepřítomné (přenos znalostí)"
date: 2026-08-20
type: slack-summary
project: AI Jam
language: cs
source_recording: 5d5cacdc210f816555edae7d9d952fd2
note: "Tři samostatné zprávy (vlákno na téma). Verze s důrazem na pokoru — poznámky z bojiště, ne hotové pravdy."
---

# AI Jam — Slack shrnutí (přenos znalostí)

Tři samostatné zprávy — posílat odděleně jako vlákno na každé téma.

---

## Zpráva 1

🚴 **Poznámky z bojiště: sběr dat o kvalitě povrchu (Kryštof + tým)**

Strávili jsme den nad projektem „Není asfalt jako asfalt“ — nástroj, který ti u naplánované trasy řekne, jestli je povrch vhodný pro tvoje kolo (data z akcelerometru + GPS v telefonu). Upřímně, hlavní výstup je spíš mapa toho, co ještě nevíme. Pár věcí, co nás zaujaly:

• **Nejvíc nás trápí normalizace.** Když stejnou cestu jede víc lidí na různých kolech a s telefonem jinde (kapsa vs. řídítka), chceme dostat vlastnost *cesty*, ne *jízdy*. Dokud jí nevěříme, zbytek stojí na vodě. Test, co nás napadl: projet jednu trať víckrát a ověřit, že po normalizaci vypadne totéž.
• **Proč vůbec vlastní sběr?** Prošli jsme, co existuje, a všechno má díru: OSM má `surface`, ale asfalt = jen „asfalt“, žádná jemnost. Satelit ani Street View popraskaný povrch nepoznají (špatný úhel, komprese, aktualizace jednou za 2–4 roky). Strava jede přes velká čísla a subjektivní hodnocení, potholes neřeší. Garmin akcelerometr do FIT neukládá.
• **Místo výpočtů jsme sepisovali hypotézy** — je jich ~20. Nad malým vzorkem nám to přišlo poctivější.
• **Pokořila nás vlastní data:** Android při zhasnutém displeji uspal senzory → první vzorek k ničemu (a reálný objem je ~30 MB/h, ne 1 MB).
• **Zajímavá rabbit-hole:** orientace os akcelerometru. Když je telefon nakloněný, „nárazová“ osa se rozlije do ostatních. Řešíme, jestli ji auto-detekovat z dat, nebo si na startu klepnutím určit referenční rovinu — a narazili jsme, že klid + stisk tlačítka náklon neprozradí (gyroskop je na nule, musíš pohnout). Vše zatím neověřené.

Možná monetizace: dataset zpřístupnit přispěvatelům výměnou za sběr a časem prodávat samosprávám. Kdo v senzorech/normalizaci umí víc, budeme rádi za nasměrování. 🙏

---

## Zpráva 2

✍️ **Poznámky z bojiště: osobní „ghostwriter“ skill (Radek)**

Zkoušel jsem postavit Claude skill, který by psal mým stylem a spouštěl se automaticky na summaries a poznámky. Rovnou přiznávám — výsledek bych dal tak za 2−, pořád to není ono. Ale právě to, kde to drhne, je asi nejvíc k odnesení:

• **Nejvíc mě brzdila data, ne instrukce.** Skill se učí z **párů vstup→výstup** (syrový text → moje finální verze) a mít jich dost a čistých je překvapivě těžké.
• Nechal jsem Claude páry dohledat napříč sessiony, PR, Slackem — udělal to skoro „magicky“, ale **nevěřím tomu, co našel**. Část „mých“ textů byly ve skutečnosti AI summaries, které jsem si spletl za svoje. Takže si teď výběr musím sám projít a ověřit.
• Co dělá dobře i teď: dá k odrážce title a pak ji rozvine, přidá next steps. Co ne: úkoly jsou moc ukecané, já píšu stručněji.
• Postup, kdyby se hodil: (1) vydestilovat styl z existujících rolí a `CLAUDE.md`, (2) doladit z reálných textů, (3) nasbírat páry, (4) pustit evaly. Ke skillu patří i **judge/rubrika** (délka, actionability, styl). Můj věčný boj je „slop“ a Captain Obvious — a jako UX designer nesu v hlavě model čtenáře, což po modelu chci možná až moc.
• Otevřená otázka: tasky, prózu a meeting notes píšu dost jinak — nejsem si jistý, jestli jeden univerzální skill vůbec dává smysl.

Co si beru: příště si **hned uložím původní i finální verzi** textu, ať mám čím krmit evaly. Neříkám, že je to správně — možná máte lepší, rád si nechám poradit. 🙂

---

## Zpráva 3

🗂️ **Poznámky z bojiště: životní cyklus AI dokumentace (Tomáš)**

Zkusil jsem si načrtnout model, jak držet `.md` dokumentaci tak, aby si z ní AI netahala zastaralá data a nekazila si kontext (typicky: specka zastará hned, jak podle ní začnu kódit). Zdůrazňuju — je to teprve **návrh, co jsem stihl za dopoledne**. Sdílím ho hlavně proto, že mě zajímá, jak to řešíte vy:

• Napadlo mě rozlišovat **tři třídy dokumentů**: *immutable* (platný k datu — transkript, ADR), *living* (sleduje kód → musím hlídat čerstvost, atribut `last_verified`) a *transient* (má stav, např. specka: rozpracováno → archiv). Konkrétní **typy** (transkript, SEO audit…) si přitom definuje každé repo samo.
• Přiznávám slabinu: hranici mezi „historickým“ a *immutable* mi kolegové rozporovali (je ADR immutable, nebo spíš historický záznam?) a ještě si v ní nejsem jistý.
• Rád bych se nespoléhal na vlastní disciplínu a nechal hlídání na **CI / pre-commit hooku**: když je `last_verified` starší než poslední commit u *living* dokumentu, upozorní mě, že se mám podívat, jestli ještě platí. Drift totiž vzniká sám od sebe. Otevřené je, jestli status u *transient* stačí, nebo i tam ujede.
• Přemýšlím nad **počítaným trust score** (ne ručně nastaveným — to bych zapomněl aktualizovat) a nad **generovaným indexem** místo ručně udržovaného.
• Mechanika stojí na **front matteru** (metadata mezi `---`): strojově čitelné, takže si Claude napíše krátký skript a vytáhne jen relevantní dokumenty podle štítků, místo aby četl všechno. Záměrně volím lightweight model před heavy nástrojem s learning curve.

Jak přesně trust score spočítat a jak se k dokumentům má Claude chovat, zatím nevím. Mám k tomu analytický prompt na inventuru dokumentů — klidně si ho vezměte a řekněte, co je blbě. 🔧
