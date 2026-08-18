# OPS — méthodes de recherche qui marchent (cloud Cursor, 2026-08-18)

Retesté 11:15 UTC. Ne pas «re-découvrir» à chaque run. Δ vs 15/08 noté quand un hop a changé.

## OHLC / prix (NE PAS commencer par api.binance.com)
1. **Primaire:** `https://data-api.binance.vision/api/v3/klines?symbol={S}USDT&interval={1h|4h|1d}&limit=120`
   - 200, ~550 ms. 18/08 BTC last ~64319, ETH 4h close ~1900.4 vol ~15361.
2. **Interdit en premier hop:** `api.binance.com`, `api1.binance.com`, `fapi.binance.com` → **HTTP 451** géo (19–32 ms). Structurel.
3. `api.binance.us` 200 mais **~1000× plus mince** que Vision (ETH 4h vol 8.6 vs 15361). Interdit EMA/RSI. Ne pas mélanger dans un même tableau.
4. Funding / OI hop-1 **OKX** :
   - `https://www.okx.com/api/v5/public/funding-rate?instId=BTC-USDT-SWAP` (~177 ms, funding ~0.0065 %)
   - `https://www.okx.com/api/v5/public/open-interest?instId=BTC-USDT-SWAP` (OI ~32786 BTC)
5. Bybit `api.bybit.com` → 403.

## Fear & Greed
- **Uniquement** `https://api.alternative.me/fng/?limit=2` (~88 ms).
- 2026-08-18: **41 Fear** (hier 31). Indice quotidien 00:00 UTC.
- **Interdit:** WebSearch « fear greed » (SEO Neutral vs API Fear).

## CoinGecko
- Global: `/api/v3/global` (~55 ms) — 18/08 cap 2.277 T$, vol 49.3 Md$, BTC.D 56.54 %, USDT.D 8.03 %, `updated_at` unix live.
- Prix: `/coins/markets?vs_currency=usd&ids=bitcoin,ethereum,...&price_change_percentage=24h,7d`
- Trending: `/search/trending` (narratif). 18/08 tête : VVV, PUMP, SOL, ANSEM…
- **Piège gainers (HTTP 200 mais faux):**
  - `order=percent_change_24h_desc` → ignoré, BTC en tête
  - `order=price_change_percentage_24h_desc` → ignoré, BTC en tête
  - `/coins/top_gainers_losers` → **401** Pro
- **Méthode:** GET `/coins/markets?...&order=market_cap_desc&per_page=250&price_change_percentage=24h` puis **tri client**.
  - Filtrer `market_cap_rank <= 250` ET `total_volume >= 5_000_000`.
  - 18/08 filtrable: VVV +18.5, CAP +12.0, GPS +10.7, ANSEM +10.1, H +9.1.

## Polymarket Gamma
- Search défaut = **5 events**. Toujours `limit_per_type=20`.
- Exclure slugs `*updown*15m*` **et** `*updown*5m*` **et** `*updown*1h*` (18/08 `btc-updown-5m` dans le top search bitcoin).
- **Interdit** comme feed crypto : `events?order=volume24hr` (18/08 #1 LoL esports 3.0 M$, Fed seulement #5).
- Crypto: search `q=bitcoin|ethereum|solana|xrp` + watchlist + `limit_per_type=20` puis `events?slug=`.
- Macro US — slugs **direct** (pas `q=fomc`) :
  - `fed-decision-in-september-762` (vol24 ~2.02 M$, liq ~3.84 M$)
  - `how-many-fed-rate-cuts-in-2026` (0 cuts **85.15 %**)
  - `fed-rate-hike-in-2026` (**48.5 %** yes)
- 18/08 Fed Sept: **no change 71.5 %** ; **hike 25 bps 28.5 %** ; cut 25 0.85 %.
- CLOB: `https://clob.polymarket.com/prices-history?market={yesTokenId}&interval=1d&fidelity=60`
- **Δ 24h** = last − first de l’historique 1d (ou point ~t−86400). 18/08 hike **23.5 → 28.5 = +5.0 pts**. Les 2 derniers ticks étaient **identiques** (faux Δ 0). Alerter Δ≥5 **et** le niveau hike/cut même si Δ<5.

## X
- MCP serveur `X` : **absent** du catalogue Kingsi 18/08 (`GetMcpTools` → servers = Automation Tools + cursor-cloud). `https://api.x.com/mcp` → 401. Secrets `X_OAUTH_CLIENT_ID/SECRET` injectés **≠** session Connect. Ping = 0. Ne pas réessayer en boucle. Ne pas logger les secrets.
- Browser `x.com/CryptoCavaleiro` : profil visible (1582 following / **124** followers, 785 posts, bio DEFI/farmeur). **Panel login à droite**. Tweets **lisibles à gauche** (~5) puis mur « Continue to X ». Newest **2026-08-10** (YouTube #Livetrading #whales, 15 views). 10/07 giveaway 50 comptes $5k. Pin 02/04 RT @TeraHash.
- **Méthode browser:** 15 s max. Panel ≠ stop si tweets visibles. Si newest >48 h → KOL stale, ne pas citer comme veille du jour. Ignorer giveaways. Pas nitter (RemoteDisconnected), pas xcancel (Cloudflare captcha), pas CryptoPanic (403).
- **KOL PRIMARY unique = interdit.** Roster : `evals/kol-selection.xlsx`. Primaire veille = WebSearch CoinDesk / crypto.news / SEC.gov + CG trending. Label **proxy**.
- Listes CryptoNews / Today's News / WLFI / COLLAT / Littlebit = skip sans session.

## TradingView stilman50
- Profil public : 0 ideas, 0 scripts, 1 follower, 3 following, joined 2024-12-07, last seen ~4 h. **Pas de watchlist publique.**
- Watchlist = tokens du prompt. Charts : `https://www.tradingview.com/chart/?symbol=BINANCE:{TOKEN}USDT` sans login, TF 4H.

## Discord
- Aucun env `DISCORD_*`, aucun MCP, aucun `watchlist.config.json`.
- Une ligne: `Discord : accès non fourni`. Zéro retry.

## DXY / calendrier
- DXY: `https://query1.finance.yahoo.com/v8/finance/chart/DX-Y.NYB?interval=1d&range=5d` (200, ~84 ms) — 18/08 **99.65** (prev 99.96).
- Ne pas inventer CPI/FOMC : WebSearch + Fed slug Polymarket.

## Persistance inter-automations (nouveau 18/08)
L’improver tourne sur repo **Kingsi** (public) et **ne voit pas** les transcripts de `8de46393` s’ils sont dans un autre environment.
- Trading-agent : en fin de run, écrire `evals/last-daily-report.md` si un workspace git existe.
- Improver : lire ce fichier **avant** de scorer. Si absent + 8de46393 invisible → rapport **INACCESSIBLE**, pas un faux score.
