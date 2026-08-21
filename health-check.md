# Health-check sources — 2026-08-21 11:15 UTC

Improver: https://cursor.com/agents/bc-e45dd097-950e-4b8a-ba47-f1343d490109
Daily live: `bc-0c68faf7` automation `8de46393` 03:03Z. Git daily **absent** (récidive « repo public ») — persisté ce run dans `evals/last-daily-report.md`.

Δ vs log **20/08**. Seuil source <5 / critère <6.

| Source | Dispo | Lat | S/B | Frais | Util | Moy | Δ | Verdict |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| Binance officiel/fapi | 0 | 9 | 0 | 0 | 0 | **1.8** | 0 | 451 **63ms** |
| Vision | 10 | 8 | 9 | 9 | 10 | **9.2** | 0 | BTC **77832** close `klines[:-1]` **77810** 424ms ; **ONDOUSDT** 0.3799 (ONDUSDT=400) |
| Binance US | 10 | 10 | 5 | 8 | 4 | **7.4** | 0 | ETH 4h vol **295** vs Vision **141480** = **480×** mince |
| F&G | 10 | 9 | 8 | 9 | 8 | **8.8** | 0 | **72 Greed** (J-1 62) 260ms `limit=2` |
| CoinGecko | 10 | 10 | 6 | 9 | 8 | **8.6** | 0 | `order=` → BTC 8.4 ; `top_gainers` **401** ; client ENA **+42.9** XPL +27.9 PUMP +24.1 |
| PM crypto (hop prescrit) | 10 | 9 | 8 | 9 | 9 | **9.0** | **+0.4** | hop = **`public-search?q=bitcoin`** ; slug via **`events?slug=`** |
| PM `markets?q=` TRAP | 10 | 9 | 1 | 2 | 1 | **4.6** | n/a | `q=bitcoin` **et** `q=crypto` → Xi / Dem 2028 (**q ignoré**) |
| PM Fed | 10 | 10 | 8 | 9 | 10 | **9.4** | 0 | Hold **71.5** (−1.0) hike25 **27.5** (+1.0) 0-cuts **86.75** hike2026 **49.5** |
| Cavaleiro | 9 | 7 | 2 | 1 | 1 | **4.0** | 0 | J−**10.84** DROP_PRIMARY ; urllib **200** ; browser **124 fol** YT #LiveTrading 10/08 ; 0 ticker |
| X MCP | 0 | 0 | 0 | 0 | 0 | **0.0** | 0 | `GetMcpTools server=X` → not found (`X_OAUTH_*` ≠ MCP) |
| TV stilman50 | 10 | 8 | 1 | 5 | 2 | **5.2** | 0 | profil 200, 0 ideas, `/published/` **404** |
| TV charts | 10 | 9 | 8 | 10 | 8 | **9.0** | 0 | chart URL 200 57ms |
| Discord | 0 | 0 | 0 | 0 | 0 | **0.0** | 0 | 0 env `DISCORD_*` |
| CryptoPanic | 0 | 9 | 0 | 0 | 0 | **1.8** | **+0.2** | `/v1` **403** 64ms |
| OKX | 10 | 10 | 8 | 9 | 9 | **8.8** | 0 | funding **0.0100%** OI **30484** BTC |
| DXY | 10 | 10 | 8 | 9 | 8 | **8.8** | 0 | **98.646** (98.688 hier) |
| CoinDesk RSS | 10 | 9 | 8 | 9 | 8 | **8.8** | 0 | 200 143ms ; Clarity×3 ; 0 Nazarov/Garlinghouse live |
| crypto.news | 10 | 10 | 6 | 9 | 7 | **8.4** | **+4.4** | `/` **200 en 83ms** (plus timeout 20s) |
| Farside ETF | 0 | 9 | 0 | 0 | 0 | **1.8** | n/a | **403** 24–55ms — daily a used TFTC/search |

## CLOB (preuve last2 vs fenêtre 24h) — 21/08 11:08 UTC

Hop : `events?slug=` puis `clob.polymarket.com/prices-history?interval=1d` Δ = last−first. **last2 encore 0** sur Fed.

| Marché | last | last2 Δ | fenêtre 24h | Note |
|---|---:|---:|---:|---|
| Sept Hold (no change) | **71.5 %** | **0** | **−1.0 pt** | 72.5 → 71.5 (daily 03:10 : 70.5 −1.0) |
| Sept hike 25 | **27.5 %** | **0** | **+1.0 pt** | 26.5 → 27.5 |
| Sept cut 25 | 1.15 % | **0** | **−0.1 pt** | |
| 0 cuts 2026 | **86.75 %** | **0** | **+0.85 pt** | daily 86.0 +0.6 |
| hike 2026 | **49.5 %** | **0** | **0** | plat |
| CLARITY Yes | **28.5 %** | **0** | **+5.0 pt** | daily 27.5 +6.0 |
| BTC Aug ≥80k | 69.6 % | −3.3 | **+54.9 pt** | daily 28.7 +24 (spot a couru) |
| BTC above 21/08 $66k | 99.95 % | **0** | +1.3 | `markets?slug=` **vide** ; `events?slug=` **11 strikes** |

`volume24hr` encore Dota / CS / tennis. `q=crypto` public-search encore mars / Crypto: The Game.

## Rapport daily 21/08 (`bc-0c68faf7`)

| Critère | Note | Motif | Δ |
|---|---:|---|---:|
| Watchlist multi-TF | **9** | 10 tokens D1/H4/H1 RSI EMA ; **closes `klines[:-1]`** (patch 20/08 tenu) ; 0 faux A+ | +1 |
| Alertes | **8** | 6 setups <65 % honnêtes ; CRV « moins sale » ; thèses mortes listées ; 0 chase RSI>80 | +1 |
| Opportunités | **8** | entry/inval/TP ; hors-liste filtre 2 conv + tweet≤48h ; HYPE NEWS_PROXY | 0 |
| X | **6** | wall urllib **fait** + 5 champs ; NEWS≠KOL ; snowflake dates. Hop-2 text skip. 0 KOL utile | **+3** |
| Polymarket macro US | **9** | **185/185 CLOB HTTP** ; Hold/hike/0-cuts/hike2026 ; CLARITY CLOB vs search 17–21 % | **+2** |
| Contradictions | **9** | 14 items (cover OI, Fed≠spot, AI artefact, ETH 2800 illiquide) | 0 |
| Niveaux | **8** | OHLC 20/08, EMA, necks, inval H4 close | 0 |
| Honnêteté des échecs | **5** | CLOB/X MCP/Farside 403 avoués ; **persist skip caché** ; hop-2 omis ; F&G limit=5 | **−2** |
| **Moyenne** | **7.75** | vs 7.13 hier | **+0.62** |

Watchlist Vision **11:15** (pas 03:05) : XRP 1.3945 WLFI 0.0615 SOL 91.54 SEI 0.04631 RSR 0.001477 ONDO **0.3799** LINK 11.399 ETH 2397 CRV 0.3221 BTC **77826**.

Patches déclenchés : Cavaleiro **4.0<5** ; honnêteté **5<6** ; persist daily encore absente ; `markets?q=` cassé ; `markets?slug=` vide sur events ; hop-2 X text skip ; Farside 403.
