# Health-check sources — 2026-08-22 11:15 UTC

Improver: https://cursor.com/agents/bc-f2f2dcd5-3bd8-410f-8f64-7ba5610dcc9f
Daily live: `bc-66d42b52` automation `8de46393` 03:00Z. Git daily **absent** (3e jour « repo public ») — persisté ce run dans `evals/last-daily-report.md` (commit `cbd3d43`).

Δ vs log **21/08**. Seuil source <5 / critère <6.

| Source | Dispo | Lat | S/B | Frais | Util | Moy | Δ | Verdict |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| Binance officiel/fapi | 0 | 9 | 0 | 0 | 0 | **1.8** | 0 | 451 **34ms** |
| Vision | 10 | 8 | 9 | 9 | 10 | **9.2** | 0 | BTC close **76833** ticker **76824** ~535ms ; **ONDOUSDT** 0.3664 (ONDUSDT=400) |
| Binance US | 10 | 10 | 5 | 8 | 3 | **7.2** | **−0.2** | ETH 4h vol **76.7** vs Vision **69816** = **910×** mince (21/08 480×) |
| F&G | 10 | 9 | 8 | 9 | 8 | **8.8** | 0 | **71 Greed** (J-1 72) 111ms `limit=2` |
| CoinGecko | 10 | 10 | 6 | 9 | 8 | **8.6** | 0 | `order=` → BTC ; `top_gainers` **401** ; client TRUMP **+52.3** MELANIA +31.4 ZEC +22.9 |
| PM crypto (hop prescrit) | 10 | 9 | 8 | 9 | 9 | **9.0** | 0 | hop = **`public-search?q=bitcoin`** + **`events?slug=`** ; Aug≥80k gamma **56.1** (03:00 daily 79.5) |
| PM `markets?q=` TRAP | 10 | 9 | 1 | 2 | 1 | **4.6** | 0 | `q=bitcoin` **et** `q=crypto` → Xi / Dem 2028 (**q ignoré**) |
| PM Fed | 10 | 10 | 8 | 9 | 10 | **9.4** | 0 | Hold **68.5** (−2.0) hike25 **30.5** (+3.0) 0-cuts **86.05** hike2026 **54.5** (+5.0) |
| Cavaleiro | 9 | 7 | 2 | 1 | 1 | **4.0** | 0 | J−**11.84** DROP_PRIMARY ; urllib **200** 0 datetime 0 body ; browser 124 fol newest **10/08** YT #Livetrading ; giveaway = tweet **10/07** pas newest |
| X MCP | 0 | 0 | 0 | 0 | 0 | **0.0** | 0 | `GetMcpTools server=X` → **server not found** (≠ « non authentifié ») |
| TV stilman50 | 10 | 8 | 1 | 5 | 2 | **5.2** | 0 | profil 200, `/published/` **404** |
| TV charts | 10 | 9 | 8 | 10 | 8 | **9.0** | 0 | chart URL 200 76ms |
| Discord | 0 | 0 | 0 | 0 | 0 | **0.0** | 0 | 0 env `DISCORD_*` |
| CryptoPanic | 0 | 9 | 0 | 0 | 0 | **1.8** | 0 | **404** 167ms (21/08 était 403) |
| OKX | 10 | 10 | 8 | 9 | 9 | **8.8** | 0 | funding **0.0100%** OI **29681** BTC (daily 03:00 : 30037) |
| DXY | 10 | 10 | 8 | 9 | 8 | **8.8** | 0 | **98.80** (daily ven 98.84) |
| CoinDesk RSS | 10 | 9 | 8 | 9 | 8 | **8.8** | 0 | 200 87ms ; ZEC ETF ; Treasury buyback ; Clarity ; ENA wait |
| crypto.news | 10 | 10 | 6 | 9 | 7 | **8.4** | 0 | feed **200 en 125ms** (timeout 8s OK) |
| Farside ETF | 0 | 9 | 0 | 0 | 0 | **1.8** | 0 | **403** ; TFTC `/bitcoin-etf-flow/` **404** ; CoinGlass `/etf` 200 JS |

## CLOB (preuve last2 vs fenêtre 24h) — 22/08 11:06 UTC

Hop : `events?slug=` puis `clob.polymarket.com/prices-history?interval=1d&fidelity=60` Δ = last−first.

**Ne plus figer « last2 encore 0 ».** 22/08 Fed last2=0 ; BTC Aug≥80k last2 **≠0**.

| Marché | last | last2 Δ | fenêtre 24h | Note |
|---|---:|---:|---:|---|
| Sept Hold (no change) | **68.5 %** | **0** | **−2.0 pt** | daily 03:06 : 68.5 −2.0 (vs 21/08 70.5) |
| Sept hike 25 | **30.5 %** | **0** | **+3.0 pt** | daily 30.5 +3.0 |
| 0 cuts 2026 | **86.05 %** | **0** | **−0.7 pt** | daily 85.5 omis de la table user |
| hike 2026 | **54.5 %** | **0** | **+5.0 pt** | daily 56.5 +7.0 (spot a reculé depuis 03:00) |
| CLARITY / mkt structure | **29.5 %** | **0** | **−2.5 pt** | daily gamma 25.5 ; CLOB structure 29.5 |
| BTC Aug ≥80k | **53.75 %** | **−2.85** | **−3.6 pt** | daily 03:06 **79.5 +50.8** — week-end dump ; last2 **pas 0** |

`volume24hr` encore Dota / CS. `q=crypto` public-search encore mars / Crypto: The Game.
`markets?slug=fed-decision-in-september-762` / `how-many-fed-rate-cuts-in-2026` / `bitcoin-above-on-august-22-2026` = **[]**. `events?slug=` = marchés enfants. Daily 22/08 a **skip `events?slug=`**.

## Rapport daily 22/08 (`bc-66d42b52`)

| Critère | Note | Motif | Δ |
|---|---:|---|---:|
| Watchlist multi-TF | **9** | 10 tokens D1/H4/H1 RSI EMA ; **closes `klines[:-1]`** ; ONDOUSDT OK ; 0 faux A+ | 0 |
| Alertes | **8** | 6 majeures + screenshots ; confiances 42–56 % <65 % ; 0 chase RSI H4>80 | 0 |
| Opportunités | **8** | entry/inval/TP size 0 jusqu’au tag ; hors-liste 2 conv + tweet≤48h ; ZEC/ENA/TRUMP skip | 0 |
| X | **5** | wall urllib fait + 5 champs ; **0 ping `GetMcpTools server=X`** (dit « non authentifié ») ; **hop-2 skip** malgré 0 body ; giveaway HTML ≠ tweet newest | **−1** |
| Polymarket macro US | **8** | public-search OK, CLOB last−first, pas `markets?q=` ; **jamais `events?slug=`** ; 0-cuts omis table ; Δ mixte snapshot/CLOB | **−1** |
| Contradictions | **9** | 8 items (H1 noise, D1 mixte, PM 80k crowded, ETF ralentit vs spot) | 0 |
| Niveaux | **8** | zones 76864–77683 / inval OHLC 21/08 ; TP 79500/80k | 0 |
| Honnêteté des échecs | **4** | **pas de section Échecs d’accès** ; persist skip 3e jour caché ; Farside cité comme source malgré 403 ; F&G `limit=7` | **−1** |
| **Moyenne** | **7.38** | vs 7.75 hier | **−0.37** |

Watchlist Vision **11:04** (pas 03:06) : XRP 1.4755 WLFI 0.0592 SOL 92.60 SEI 0.0465 RSR 0.001416 ONDO **0.3664** LINK 11.496 ETH 2406 CRV 0.327 BTC **76825**.
Le daily 03:06 « ne rien chasser » à 78598 a **tenu** : spot a tagué la zone 76864–77683 en week-end.

Patches déclenchés : Cavaleiro **4.0<5** ; X **5<6** ; honnêteté **4<6** ; persist daily encore absente ; `events?slug=` skip ; TFTC 404 ; giveaway HTML faux positif ; last2 CLOB n’est plus universellement 0.
