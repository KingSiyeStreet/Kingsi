# OPS — méthodes de recherche (cloud Cursor, 2026-08-19)

Retesté 11:00–11:07 UTC par improver `bc-1e08f422`. Δ vs 18/08 dans health-check.md.

## OHLC / prix
1. **Hop-1:** `https://data-api.binance.vision/api/v3/klines?symbol={S}USDT&interval={1h|4h|1d}&limit=120` (~545 ms). 19/08 BTC last **64455** (+0.41 % 24h). ETH 4h close **1920.02** vol **18412**.
2. **Interdit en premier:** `api.binance.com` / `fapi.binance.com` → **HTTP 451** (~26 ms). Inchangé.
3. `api.binance.us` 200 (~34 ms) mais ETH 4h vol **32.4 vs 18412 Vision = 568× plus mince**. Interdit EMA/RSI. Ne pas dire «1000×» comme constante — re-mesurer.
4. Funding/OI hop-1 OKX :
   - `https://www.okx.com/api/v5/public/funding-rate?instId=BTC-USDT-SWAP` (funding **0.00498 %**)
   - `https://www.okx.com/api/v5/public/open-interest?instId=BTC-USDT-SWAP` (OI **~32957 BTC**)
5. Bybit `api.bybit.com` → **403** CloudFront country block.

## Fear & Greed
- Uniquement `https://api.alternative.me/fng/?limit=2` (~121 ms).
- 2026-08-19: **46 Fear** (J-1 **41**). Interdit WebSearch F&G.

## CoinGecko
- `/api/v3/global` (~52 ms) : cap **2.288 T$**, BTC.D **56.47 %**, ETH.D **10.12 %**.
- Piège 200 : `order=percent_change_24h_desc` → **BTC, ETH, USDT** (pas des gainers). `/coins/top_gainers_losers` → **401**.
- Méthode : `order=market_cap_desc&per_page=250` + **tri client**. Filtre rank≤250 ET vol≥5 M$.
- 19/08 filtrable : **BTW +85**, **VELVET +33**, GNO +9.7, ZRO +9.5, PUMP +7.6.
- Trending : BTW, VVV, USDC, ANSEM, LINK, PUMP…

## Polymarket Gamma — hops qui ne mentent pas
- Search **sans** `limit_per_type` = **5** events. Toujours `limit_per_type=20`.
- **Interdit `q=crypto`** (19/08 : semaine du 23 mars, taxe Trump, Ansem vs Bitboy Fight Night, Crypto: The Game — S/B mort).
- Crypto hop-1 : `q=bitcoin` + filtre `*updown*5m*|*updown*15m*|*updown*1h*` + drop titres Fight Night / Crypto: The Game / events >14 j.
- Slug direct du jour : `bitcoin-above-on-{month}-{day}-2026` (ex. `bitcoin-above-on-august-19-2026`).
- **Interdit** `events?order=volume24hr` (19/08 #1 Floride governor, #3 **LoL esports**, #5 tennis).
- Macro US — slugs directs :
  - `fed-decision-in-september-762` : hold **71.5 %** / hike 25 **28.5 %** (plat vs 18/08)
  - `how-many-fed-rate-cuts-in-2026` : 0 cuts **85.25 %**
  - `fed-rate-hike-in-2026` : **50.5 %** yes
- CLOB `https://clob.polymarket.com/prices-history?market={yesTokenId}&interval=1d&fidelity=60`
- **Δ 24h = last − first** (ou t−86400). 19/08 hike-2026 **48.5 → 50.5 = +2.0 pts** alors que **last2 = 0**. Sept hike 25 last2 **et** fenêtre = 0 (vrai plat).

## X
- MCP serveur `X` : **absent** (GetMcpTools pattern `^X$` = 0). Secrets `X_OAUTH_*` **≠** Connect. 1 ping, 0 retry, ne pas logger.
- **WebFetch `x.com` / `twitter.com` = 403**. Hop wall = **browser/computerUse**, pas WebFetch, pas jina (propage le 403), pas nitter (RemoteDisconnected), pas xcancel (interdit + captcha).
- Browser `x.com/CryptoCavaleiro` ≤15 s. Panel login ≠ stop. 19/08 : 5 tweets, newest **2026-08-10 (J-9)**, giveaway 10/07, pin 02/04 RT TeraHash, **124 followers**, **0 ticker watchlist**. DROP_PRIMARY.
- **Interdit** d’hériter DROP depuis la mémoire improver **sans** re-lire le wall. Le daily 03:04 UTC a skip Cavaleiro → critère X = 3.
- Listes X sans session = skip. Presse : CoinDesk RSS + crypto.news RSS + SEC.gov.

## TradingView
- stilman50 : **0 ideas / 0 scripts / 1 follower / 3 following**. Pas une source.
- Charts : `https://www.tradingview.com/chart/?symbol=BINANCE:{TOKEN}USDT` HTTP 200 (~70 kB) sans login.

## Discord
- Pas d’env `DISCORD_*`. Une ligne, 0 retry.

## DXY
- Yahoo `DX-Y.NYB` interval=1d range=5d : **99.375** (prev 99.67). ~73 ms.

## CryptoPanic
- 19/08 `.../api/developer/v2/posts/` → **404** (18/08 était 403). Toujours mort. Ne pas planifier.

## Persistance inter-automations (renforcé 19/08)
Depuis 19/08, `list-cloud-agents sources=automations` **voit** `8de46393` sur Kingsi (`bc-3131e6d2`).
Mais le daily **n’a pas écrit** `evals/last-daily-report.md` et n’a **pas poussé** sa branche.
- Trading-agent : écrire `evals/last-daily-report.md` **avant** email/mémoire, puis `git add` + commit si workspace git.
- Improver : 1) fichier <36 h  2) sinon `list-cloud-agents` automations + `automationId=8de46393` + `batch-fetch-details` transcript  3) sinon INACCESSIBLE. Après score : **réécrire** le fichier pour le prochain cron.
