# Changelog — patches MÉTHODE (2026-08-25)

## Daily `8de46393` (coller `prompts/prompt-crypto-trading-agent.md`)

1) **Persist 5e skip hors 24/08.** 24/08 a réussi (`f34db64`, PR #9). 25/08 a re-skip « Repo GitHub public : rapport d’entrées non poussé ». Phrase **aussi** interdite. Si J-1 persisté, J0 **DOIT** persister. `mkdir evals` + commit `evals/last-daily-report.md` **avant** mémoire. `persist_commit=` 1re ligne Échecs.

2) **Échecs checklist obligatoire** (25/08 section **absente** — récidive 23/08, régression vs 24/08). Inclure `clob_http_count`. Header qui mentionne le skip **sans** tableau ≠ honnêteté OK.

3) **F&G :** hop-1 `limit=2` **et** la prose du rapport cite **la même** URL. Probe 2 puis écrire `limit=5` = `fng_limit=FAIL`.

4) **X hop-2 chain :** urllib (0 datetime **ou** 0 body) → `GET https://api.fxtwitter.com/status/{snowflake}` → si 0 body → computerUse. IDs HTML ≠ skip. `hop_used=urllib|urllib+fxtwitter|urllib+fxtwitter+browser`. Interdit nitter/xcancel/jina. Giveaway = newest **body**.

5) **PM slugs live via public-search.** `bitcoin-above-80k-in-august` = **[]** dès que le strike est hit (25/08 11:00). Utiliser `what-price-will-bitcoin-hit-in-august-2026` (imbrique 80/82.5/85k). `markets?slug=` souvent `[]` sur un event-group → parser `events[].markets`. Fed court sans `-762` = Sept **2025 résolu**. CLOB `interval=max&fidelity=60` ; 0-cuts = question *Will no Fed rate cuts happen in 2026?* (pas le dernier marché de la liste). `interval=1d` n=25 → d24=None : **interdit** de conclure last2=0 = marché plat.

6) **ETF :** Farside 403. `tftc.io/bitcoin-etf-flow/` **404**. Hop-2 **`https://tftc.io/bitcoin-etf-flows/`** (pluriel) **200**. Interdit citer Farside si HTTP≠200.

## Improver `109e7541` (coller `prompts/prompt-crypto-prompt-improver.md`)

7) Ne pas figer TFTC 404 : tester pluriel `/bitcoin-etf-flows/`. Ne pas figer slug BTC80k standalone. Recalculer US minceur (25/08 **452×**). CLOB Δ24h via `interval=max`. Compter GET `prices-history` du transcript (`n=`). Excel `citations_daily` du daily **scoré** (25/08). Trou cron 24/08 : Δ vs **dernière ligne** du log, scorer le daily <36h. Match 0-cuts par **texte de question**.

Coller dashboard. Doublons `c490fbb7`/`8a20e9a7` not found.
