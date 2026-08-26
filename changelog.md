# Changelog — patches MÉTHODE (2026-08-26)

Patches 25/08 **non collés au dashboard** (`get-automation` ≠ prompt) → récidive daily 26/08 (persist skip, Échecs absente, F&G limit≠2). Coller `prompts/prompt-*.md` **maintenant**.

## crypto-trading-agent (méthode, pas le texte)

1) **Persist = 1er write git après le rapport.** `mkdir -p evals` ; écrire `evals/last-daily-report.md` ; `git add`+commit **AVANT** mémoire. Interdit skip : « repo public », « entries/TP owner-only », « jamais partager hors owner », « rapport d’entrées non poussé ». R14 : si J-1 persisté, J0 DOIT. Récidive 20–23+**25+26**/08 (seul 24/08 OK).
2) **## Échecs** tableau 12 clés obligatoire (dernière section). Header §11 sans tableau = honesty FAIL. Clés : persist_commit | mcp_status | x_hop2 | farside | tftc | fng_limit | pm_events_slug | pm_markets_slug | clob_http_count | clob_last2_vs_window | discord | coinglass_js.
3) **F&G** : GET unique hop-1 `https://api.alternative.me/fng/?limit=2`. `assert 'limit=2' in url`. limit=7 (26/08) ou 5 (25/08) = FAIL même si prose dit 65/74.
4) **CLOB** : `market=` = `json.loads(market['clobTokenIds'])[0]` (token YES). **Interdit `conditionId`** (n=0). Hop-1 `interval=max&fidelity=60`. Si n<2 : hop-2 `interval=1d` **et** imprimer n=. Reporter **last2 ET d24 ET n= ET clob_http_count**. `interval=1d` last2 souvent **0** alors que max d24 ≠0 (Hold last2 0 / d24 +1.0 ; 82.5k last2 ≈0 / d24 **−16.4**).
5) **PM hops** : `public-search?q=bitcoin` + `events?slug=` + `markets?slug=` **groupe ET child**. Groupe `markets?slug=` → `[]` **attendu** (event-group). Child `will-bitcoin-reach-82pt5k-in-august-2026` → 1. Interdit `markets?q=`. Interdit slug Fed sans `-762` (court = Sept **2025 closed**). Rediscover : `bitcoin-above-80k-in-august` reste `[]`.
6) **MCP X** : 1 ping `GetMcpTools` / GetDynamicTools **pattern X|twitter**. Catalog search `matches=[]` = `mcp_status=absent`. Search catalog ≠ « 0 ping » OK seulement si le ping dédié a eu lieu. `X_OAUTH_*` secrets ≠ serveur MCP.
7) **X hop** : urllib x.com → IDs. **Newest = max(created_at fxtwitter)**, pas le 1er ID HTML (26/08 1er ID = pin **02/04**). Hop-2a `api.fxtwitter.com/status/{id}` (body). Dump `user.followers` chaque run. Hop-2b browser seulement si 0 body. Giveaway = body newest. 125 fol + 0 overlap + stale>48h = DROP_PRIMARY.
8) **Presse** : tout titre CoinDesk/CT/crypto.news/CryptoQuant = `NEWS_PROXY`. ZRO CoinDesk 26/08 **sans label** = FAIL R5.
9) **TFTC** : GET singulier (404) **ET** pluriel `/bitcoin-etf-flows/` (200) pour la checklist. Daily 26/08 a skip le singulier.
10) **crypto.news** timeout **8 s** (daily a mis 20). **TV** : interdit `/api/v1/ideas/?user=` (param ignoré, count 1000, auteurs IGT_Traders).

## crypto-prompt-improver

11) Ne pas figer : US minceur (697×/997×), F&G 74, CryptoPanic 403 (API **404**), CLOB=`conditionId`, `interval=max` last2≠0, 80k standalone, TFTC singulier, ideas API stilman50.
12) CLOB eval : toujours résoudre `clobTokenIds` live. Compter GET. 1d last2=0 ≠ window 0.
13) Daily « MCP absent » via catalog sans ping dédié → X <6.
14) HTML snowflake order ≠ chrono. Excel `citations_daily` **append** le jour scoré.
15) Persist `last-daily-report.md` depuis le transcript **avant** mémoire, même si daily a skip (26/08 encore).
