### Informational Brief
Klíčová fakta, rozhodnutí a další kroky.
- Skončily 3 ze 4 projektů a testování paměti selhalo kvůli nekvalitním datům a nedotažené správě entit.
- Zprovoznili jsme import ~1000 konverzací do grafové DB a pipeline s ~30 LLM testy.
- Cenová data a výkon backfillu nejsou vyhodnoceny a blokují rozhodnutí o adopci.
### Technické zásady
Dlouhodobé learnings pro spolehlivost.
- Kvalita schématu entit a vztahů určuje použitelnost grafové paměti více než volba nástroje.
- Explicitní „I don’t know“ snižuje halucinace a riziko chybných odpovědí.
- Temporal reasoning vyžaduje preferenci nejnovějších záznamů v dotazech i indexaci.
### Integrace a workflow
Pravidla pro účinné nasazení s LLM.
- LLM je nutné explicitně nutit dotazovat paměť, jinak ji ignorují.
- Kombinace vektorové paměti s LLM kurátorstvím relevance překonává čistý retrieval.
- Backfill musí mít SLA a nákladovost, jinak se stává úzkým hrdlem adopce.