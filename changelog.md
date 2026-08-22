# Changelog — patches MÉTHODE (2026-08-22)

Pas cosmétique : hops, filtres, timeouts, gates de section, persistance.

## Daily `8de46393` (coller `prompts/prompt-crypto-trading-agent.md`)

1) **Persist = 1re écriture, avant mémoire (récidive 20+21+22/08).**  
   `bc-66d42b52` a encore skip (« Je ne publierai rien dans le repo public ») **sans section Échecs d’accès**.  
   Ordre bloquant : (a) écrire `evals/last-daily-report.md` (b) `git commit` (c) seulement ensuite mémoire.  
   Écrire `MEMORIES.md` avant le commit = FAIL. Phrase « repo public » / « signaux jamais commités » = FAIL à lister.  
   Section **Échecs d’accès** obligatoire avec `persist_commit=OK|FAIL`.

2) **X hop-2 : IDs snowflake ≠ skip browser.**  
   22/08 daily a lu « computerUse si 0 status id » puis skip (7 ids, 0 body). C’est l’inverse du patch 21/08.  
   Skip hop-2 **seulement** si urllib a extrait un body tweet (full_text / tweetText / article text).  
   0 `<time datetime>` **OU** 0 body → `computerUse` obligatoire, même avec 5 snowflakes.

3) **Giveaway = body du newest tweet, pas regex HTML page.**  
   urllib 254 KB → regex giveaway **true** (chrome + tweet 10/07). Newest 10/08 = YouTube `#Livetrading`, **pas** giveaway.  
   Champ `giveaway_oui_non` = newest only. Sinon S/B X faussé.

4) **MCP X : `GetMcpTools server=X` une fois.**  
   22/08 : « MCP X non authentifié » **sans ping**. Catalogue = **server not found**.  
   Écrire `mcp_status=absent|needsAuth|ok`. `X_OAUTH_*` ≠ Connect. Secrets jamais loggés.

5) **Polymarket hop-2 = `events?slug=` (pas `markets?slug=`).**  
   22/08 daily : public-search OK, **0** `events?slug=`, hop-2 = `markets?slug=` → `[]` pour 75k/77.5k/ETH2400/SOL90.  
   22/08 improver : `markets?slug=` vide pour `fed-decision-in-september-762`, `how-many-fed-rate-cuts-in-2026`, `bitcoin-above-on-august-22-2026`.  
   `events?slug=` = enfants + `clobTokenIds`. Seuls hike2026 / un marché unique marchent en `markets?slug=`.

6) **F&G hop-1 = `limit=2` seulement.** Daily 22/08 a `limit=7` (interdit). Historique = 2e GET après, labellé.

7) **ETF : Farside 403 + TFTC path 404.**  
   Interdit hop `tftc.io/bitcoin-etf-flow/` (22/08 **404**). CoinGlass `/etf` = 200 JS non parsable.  
   Hop-2 = WebSearch + **déclarer** Farside 403 **et** TFTC 404 dans Échecs. Interdit citer « Farside » comme source d’un print.

8) **Échecs d’accès = checklist obligatoire** (même si 0 skip) : persist, mcp_status, X hop-2, Farside, TFTC, F&G limit, `events?slug` vs `markets?slug` vide, CLOB last2 vs fenêtre, Discord, CoinGlass JS.

9) **Garder (tenu 22/08) :** Vision hop-1 + `klines[:-1]` ; ONDOUSDT ; `public-search` not `markets?q=` ; pas `q=crypto` ; CLOB last−first ; NEWS_PROXY ≠ KOL ; 0 A+ si confiance <65 % ; Discord 1 ligne.

## Improver `109e7541` (coller `prompts/prompt-crypto-prompt-improver.md`)

1) **CLOB last2 : retester chaque run.** 22/08 Fed last2=0 ; BTC Aug≥80k last2 **−2.85 pt**. Ne plus écrire « last2 encore 0 » comme fait figé.
2) Ne plus figer TFTC URL, ratio US 480× (22/08 **910×**), CryptoPanic=403 (22/08 **404**).
3) Giveaway HTML regex = faux positif → browser newest body pour Excel `giveaway_source`.
4) Diagnostic X MCP = **server not found**, pas needsAuth, sauf ping réel `needsAuth`.
5) Si daily skip persist : réécrire `evals/last-daily-report.md` depuis transcript `8de46393` (fait `bc-66d42b52`).
6) Excel : onglets `roster` + `citations_daily` + `selection_rules`. Colonnes `hop2_done`, `giveaway_source`, `mcp_status_daily`.
