# Changelog — patches MÉTHODE (2026-08-21)

Pas cosmétique : hops, filtres, timeouts, gates de section, persistance.

## Daily `8de46393` (coller `prompts/prompt-crypto-trading-agent.md`)

1) **Persist = gate bloquant (récidive 21/08).**  
   `bc-0c68faf7` a **lu** le patch 20/08 (« Interdit skip repo public ») sur `origin/cursor/valuation-performance-crypto-c6cd` et a skip quand même (thinking : « signaux jamais commités sur dépôt public »).  
   Règle : dès le rapport FR prêt, `evals/last-daily-report.md` + `git commit` **avant** mémoire. Le template daily AUTORISE ce fichier. Ce n’est pas un secret.  
   Sans commit daté du run, section honnêteté = FAIL. Le skip doit figurer dans **Échecs d’accès** (21/08 : thinking only).

2) **Polymarket hop-1 = `public-search` + `events?slug=`.**  
   21/08 `GET gamma-api.polymarket.com/markets?q=bitcoin` **et** `markets?q=crypto` → Xi Jinping / Dem 2028 (**param `q` ignoré**).  
   Hop : `GET https://gamma-api.polymarket.com/public-search?q=bitcoin&limit_per_type=20` (ETH/SOL/XRP/fed idem).  
   Slugs Fed/BTC du jour : `GET https://gamma-api.polymarket.com/events?slug={slug}` puis CLOB.  
   `markets?slug=fed-decision-in-september-762` / `how-many-fed-rate-cuts-in-2026` / `bitcoin-above-on-august-21-2026` = **[]**. Seuls `fed-rate-hike-in-2026` et CLARITY marchent en `markets?slug=`.  
   Interdit `q=crypto` (public-search encore : mars 23 / Crypto: The Game). Interdit `events?order=volume24hr` (Dota/CS).

3) **CLOB Δ = last−first ; last2 encore 0.**  
   21/08 daily a **185/185 HTTP** (patch 20/08 tenu). Improver : Hold −1.0 / hike25 +1.0 / 0-cuts +0.85 / last2 **0**. Interdit last2 et `oneDayPriceChange` seul.

4) **X : snowflake = DATE, pas TEXTE.**  
   urllib x.com = **200**. 0 `<time datetime>`. IDs → dates via `(id>>22)+1288834974657` (newest 10/08 J−10.84).  
   Si 0 body tweet / 0 ticker parseable → hop-2 `computerUse` **obligatoire** (21/08 skip browser → 0 claims). Browser 11:08 : 124 fol, pin 02/04 @TeraHash clowns, post 10/08 YouTube `#LiveTrading`, login wall après 2 posts. DROP_PRIMARY inchangé.

5) **Ticker ONDO = `ONDOUSDT`.** `ONDUSDT` = Vision **400**.

6) **Farside = 403.** Hop ETF = table TFTC/search, déclarer Farside 403. Interdit inventer un print.

7) **F&G `limit=2`.** Daily 21/08 a `limit=5` (écart). crypto.news **200 en 83ms** — timeout 8s reste, ne plus skip préemptif.

8) **Garder (tenu 21/08) :** Vision hop-1 + closes `klines[:-1]` ; US minceur **480×** ; NEWS_PROXY ≠ KOL (Nazarov/Garlinghouse absents du daily) ; CLOB Fed ; 5 champs X ; interdit A+ si confiance <65 %.

## Improver `109e7541` (coller `prompts/prompt-crypto-prompt-improver.md`)

1) Ne plus traiter `markets?q=bitcoin` comme hop prescrit. Retester **chaque run** `public-search` vs `markets?q=` vs `events?slug=` vs `markets?slug=`.  
2) Ne plus figer crypto.news = timeout. Mesurer 8s.  
3) Browser Cavaleiro pour le **texte** même si snowflake a les dates (Excel citations).  
4) Si daily skip persist : réécrire `evals/last-daily-report.md` depuis transcript `8de46393` (fait 21/08 `bc-0c68faf7`).  
5) last2 CLOB : retester, ne pas hériter « souvent 0 ». 21/08 encore 0 vs fenêtre ≠0.
