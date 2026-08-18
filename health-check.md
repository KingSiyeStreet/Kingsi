# Health-check sources — 2026-08-18 11:15 UTC

Improver: https://cursor.com/agents/bc-bb1dd19a-ade8-4e26-b8a8-1158640d60a7
Automation: `109e7541` Agent Performance (cron `0 11 * * *`)
Dernier rapport scorable **live** : **INACCESSIBLE** (env Kingsi). Voir `evals/performance-log.md`.
Dernier rapport en mémoire (non re-lu) : `bc-8d2776db` 2026-08-15 ~07:00Z.

Δ vs dernière ligne de `evals/performance-log.md` (run 2026-08-15). Colonne Δ = écart de **moyenne**.

Légende 0–10 : dispo / latence / signal-bruit / fraîcheur / utilité → **moyenne**.
Seuil patch source : moyenne **< 5**. Seuil critère rapport : **< 6**.

## Tableau sources (retest live, playbook ops.md)

| Source | Dispo | Lat | S/B | Frais | Util | Moy | Δ vs 15/08 | Verdict |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| Binance `api.binance.com` / fapi | 0 | 9 | 0 | 0 | 0 | **1.8** | 0.0 | 451 géo 19–32 ms. Structurel. Ne plus appeler. |
| Binance Vision `data-api.binance.vision` | 10 | 8 | 9 | 9 | 10 | **9.2** | 0.0 | BTC 64319 +1.02 % 24h. ETH 4h vol ~15k vs US ~9. Hop-1. |
| Binance US | 10 | 10 | 5 | 8 | 4 | **7.4** | −0.2 | 200 mais ~1000× plus mince que Vision. Interdit EMA. |
| Fear & Greed alternative.me | 10 | 9 | 8 | 8 | 8 | **8.6** | +0.4 | **41 Fear** (J-1 31). `time_until_update` ~13 h. API only. |
| CoinGecko global/markets/trending | 10 | 10 | 6 | 9 | 8 | **8.6** | 0.0 | cap 2.277 T$, BTC.D 56.54, USDT.D 8.03. Gainers `order=` = piège 200 (BTC en tête). |
| Polymarket crypto (search+slug) | 10 | 10 | 5 | 9 | 8 | **8.4** | −0.2 | Default **5** events. `limit_per_type=20` → 20. Top search contient `btc-updown-5m`. |
| Polymarket Fed/macro | 10 | 10 | 8 | 9 | 10 | **9.4** | +0.2 | Slug sept OK. Hold 71.5 % ; **hike 25 bps 28.5 %** (CLOB 24h **+5.0 pts**). |
| X browser @CryptoCavaleiro | 6 | 7 | 2 | 3 | 2 | **4.0** | +1.4 | Panel ≠ wall : 5 tweets lisibles. Newest **10/08 (J-8)**. Giveaway 10/07. 124 followers. <5 → patch KOL. |
| X MCP ping | 0 | 0 | 0 | 0 | 0 | **0.0** | 0.0 | Serveur `X` **absent** du catalogue. `api.x.com/mcp` 401. Secrets OAuth ≠ Connect. |
| TradingView profil stilman50 | 10 | 8 | 1 | 5 | 2 | **5.2** | 0.0 | 0 ideas / 0 scripts / 1 follower / 3 following. Joined 2024-12-07. |
| TradingView charts publics | 10 | 8 | 8 | 10 | 8 | **8.8** | 0.0 | URL chart 200 sans login. |
| Discord | 0 | 0 | 0 | 0 | 0 | **0.0** | 0.0 | Pas d’env `DISCORD_*`, pas de MCP. Skip. |
| CryptoPanic | 0 | 8 | 0 | 0 | 0 | **1.6** | 0.0 | 403. Ne pas planifier. |
| OKX funding/OI | 10 | 8 | 8 | 9 | 9 | **8.8** | +0.2 | funding BTC ~0.0065 %, OI ~32.8k BTC. |
| Yahoo DXY | 10 | 9 | 8 | 8 | 8 | **8.6** | +0.2 | 99.65 (prev close 99.96). |

## Sources < 5 — obligation de patch méthode

1. **X MCP (0.0)** — infra. 1 ping `GetMcpTools` serveur `X`. Si absent/error/needsAuth : stop. **Interdit** de traiter `X_OAUTH_CLIENT_ID/SECRET` comme session.
2. **X browser Cavaleiro (4.0)** — accessible mais **KOL mort pour un daily** (J-8, 0 token watchlist, giveaway). DROP_PRIMARY. Roster dans `evals/kol-selection.xlsx`.
3. **Binance officiel (1.8)** — Vision hop-1 inchangé.
4. **Discord (0.0)** — une phrase, 0 retry.
5. **CryptoPanic / nitter / xcancel** — nitter RemoteDisconnected ; xcancel Cloudflare captcha. Ne pas recommander.

## Check sémantique (anti HTTP-200)

- CG `order=percent_change_24h_desc` et `order=price_change_percentage_24h_desc` → **bitcoin** en tête. `/coins/top_gainers_losers` → 401. Tri client 250 : VVV +18.5, CAP +12.0, GPS +10.7 (rank≤250, vol≥5 M$).
- PM search sans `limit_per_type` → **5** events (`btc-updown-5m` dans le top).
- F&G : **API 41 Fear**. Pas de WebSearch F&G ce run.
- CLOB `interval=1d` : **last 2 ticks identiques** (hold 0.715→0.715, Δ 0) alors que **first→last 24h = hold −3.0 / hike +5.0**. Piège de méthode.
- `events?order=volume24hr` #1 = **LoL esports**, pas crypto. Fed slug est #5 (2.02 M$ vol24).

## Notes fraîcheur 11:15 UTC

- F&G 41 vs 31 J-1 ; vs 34 le 15/08.
- Écart BTC Vision ticker 64319 / 24hr last 64298 — OK.
- Watchlist Vision 24h : XRP 0.9975 −0.42 ; WLFI 0.0598 −1.48 ; SOL 75.93 +0.17 ; SEI 0.03897 −2.23 ; RSR 0.001139 −0.35 ; ONDO 0.3317 −1.92 ; LINK 9.463 −0.39 ; ETH 1900.16 −0.33 ; CRV 0.2452 −0.08 ; BTC 64298 +0.99.
- Fed Sept : 50+ cut 0.35 % ; cut 25 0.85 % ; **hold 71.5 %** ; **hike 25 28.5 %** ; 50+ hike 0.35 %. Vol24 ~2.02 M$, liq ~3.84 M$.
- Fed 2026 cuts : **0 cuts 85.15 %**. Fed hike in 2026 : **48.5 %**.
- DXY 99.65.
- TV stilman50 last seen ~4 h, toujours 0 ideas.
- KOLs : voir `evals/kol-selection.xlsx` (décision DROP_PRIMARY Cavaleiro).
