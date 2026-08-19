# Health-check sources — 2026-08-19 11:07 UTC

Improver: https://cursor.com/agents/bc-1e08f422-901e-4dd6-b967-e8e39111698d
Automation: `109e7541` Agent Performance (cron `0 11 * * *`)
Dernier rapport scorable **live** : `bc-3131e6d2` « Analyse crypto complète » (`8de46393`) 2026-08-19 03:04–03:11 UTC.
Fichier `evals/last-daily-report.md` **absent du git daily** (branche jamais poussée) — récupéré par `list-cloud-agents` automations + `batch-fetch-details`. Copie persistée ce run.

Δ vs dernière ligne de `evals/performance-log.md` (run 2026-08-18). Colonne Δ = écart de **moyenne**.

Légende 0–10 : dispo / latence / signal-bruit / fraîcheur / utilité → **moyenne**.
Seuil patch source : moyenne **< 5**. Seuil critère rapport : **< 6**.

## Tableau sources (retest live, playbook ops.md)

| Source | Dispo | Lat | S/B | Frais | Util | Moy | Δ vs 18/08 | Verdict |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| Binance `api.binance.com` / fapi | 0 | 9 | 0 | 0 | 0 | **1.8** | 0.0 | 451 géo 26 ms. Structurel. Ne plus appeler. |
| Binance Vision `data-api.binance.vision` | 10 | 8 | 9 | 9 | 10 | **9.2** | 0.0 | BTC **64455** +0.41 % 24h. ETH 4h vol **18412**. Hop-1. |
| Binance US | 10 | 10 | 5 | 8 | 4 | **7.4** | 0.0 | 200 / 34 ms. ETH 4h vol **32 vs 18412 = 568×**. Interdit EMA. |
| Fear & Greed alternative.me | 10 | 9 | 8 | 9 | 8 | **8.8** | +0.2 | **46 Fear** (J-1 41). API only. |
| CoinGecko global/markets/trending | 10 | 10 | 6 | 9 | 8 | **8.6** | 0.0 | cap 2.288 T$, BTC.D 56.47. `order=` = piège BTC. Gainers réels BTW +85 / VELVET +33. |
| Polymarket crypto (search+slug) | 10 | 10 | 3 | 5 | 6 | **6.8** | −1.6 | `q=crypto` **stale** (mars / Fight Night). `q=bitcoin` + slug jour = hop. Default=5. |
| Polymarket Fed/macro | 10 | 10 | 8 | 9 | 10 | **9.4** | 0.0 | Hold 71.5 % ; hike 25 28.5 % plat. Hike 2026 **50.5 %** CLOB 24h **+2.0** vs last2 **0**. |
| X browser @CryptoCavaleiro | 8 | 7 | 2 | 2 | 2 | **4.2** | +0.2 | Wall lisible (panel≠stop). Newest **10/08 J-9**. Giveaway. 0 overlap. DROP_PRIMARY. WebFetch 403. |
| X MCP ping | 0 | 0 | 0 | 0 | 0 | **0.0** | 0.0 | Serveur `X` absent. Secrets OAuth ≠ Connect. |
| TradingView profil stilman50 | 10 | 8 | 1 | 5 | 2 | **5.2** | 0.0 | 0 ideas / 0 scripts / 1 follower. |
| TradingView charts publics | 10 | 9 | 8 | 10 | 8 | **9.0** | +0.2 | URL chart 200 ~70 kB sans login. |
| Discord | 0 | 0 | 0 | 0 | 0 | **0.0** | 0.0 | Pas d’env DISCORD_*. Skip. |
| CryptoPanic | 0 | 8 | 0 | 0 | 0 | **1.6** | 0.0 | **404** (était 403). Mort. |
| OKX funding/OI | 10 | 8 | 8 | 9 | 9 | **8.8** | 0.0 | funding BTC **0.00498 %**, OI ~32.96 k BTC. |
| Yahoo DXY | 10 | 9 | 8 | 9 | 8 | **8.8** | +0.2 | **99.375** (prev 99.67). |

## Sources < 5
X MCP 0 ; Cavaleiro **4.2** DROP_PRIMARY ; Binance officiel 1.8 ; Discord 0 ; CryptoPanic/nitter morts.

## Sémantique (anti HTTP-200)
- CG `order=percent_change_24h_desc` → bitcoin/eth/usdt. Tri client 250 : BTW +85 (rank 45, vol 197 M$).
- PM sans limit → **5**. `q=crypto` ≠ marchés BTC du jour.
- `events?order=volume24hr` #1 Floride governor, #3 LoL esports 1.81 M$.
- CLOB hike-2026 last2 Δ **0** vs fenêtre 24h **+2.0**. Sept hike 25 : last2 **et** fenêtre = 0 (vrai plat).
- F&G API 46. Pas de WebSearch F&G.
- x.com WebFetch **403** ; wall seulement via browser.

## Watchlist Vision 11:00 UTC
XRP **1.0053** ; WLFI **0.0604** ; SOL **77.40** ; SEI **0.03867** ; RSR **0.001187** ; ONDO **0.3249** ; LINK **9.784** ; ETH **1920.02** ; CRV **0.2380** ; BTC **64455**.

## Dernier daily — critères live (`bc-3131e6d2`)

| Critère | Note | Seuil | Preuve |
|---|---:|---:|---|
| Watchlist multi-TF | **8** | 6 | 10/10 tokens D1/H4/H1, H1=noise respecté |
| Alertes | **8** | 6 | 7 lignes entry/inval/TP (SOL A+, ONDO/LINK/ETH) |
| Opportunités | **7** | 6 | Hors liste «aucune» avec règle ≥2 convergences |
| X | **3** | 6 | **<6** : 0 browser Cavaleiro, DROP hérité mémoire, 0 handle frais |
| Polymarket macro US | **8** | 6 | Fed slugs + CLOB 24h + buckets BTC/ETH/XRP |
| Contradictions | **9** | 6 | 10 items (PM 64-66k vs Up/Down, LINK H&S, dates JH) |
| Niveaux | **8** | 6 | necks DT/H&S, inval ONDO 0.3315 |
| Honnêteté des échecs | **7** | 6 | échecs listés ; skip 451 retest OK ; skip wall X = trou |
| **Moyenne** | **7.25** | | vs 15/08 *5.75* (18/08 était INACCESSIBLE) |

## KOLs
Voir `evals/kol-selection.xlsx`. Cavaleiro relu live J-9. Presse CoinDesk/crypto.news du daily **vérifiée RSS** (Cuomo, SEC rule, WLFI/WorldClaw, Reg Crypto $75M, Citi custody).
