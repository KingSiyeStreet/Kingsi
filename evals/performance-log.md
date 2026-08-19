# evals/performance-log.md

## Run 2026-08-19T11:00Z
Improver `bc-1e08f422`. Daily live **scoré** : `bc-3131e6d2` automation `8de46393` 03:04–03:11 UTC (transcript fetchable; fichier git absent — persisté ce run). Doublons c490fbb7/8a20e9a7 not found. Intégration/OAuth NON scorés.

Sources moy / Δ vs 18/08: Binance 1.8/0 ; Vision 9.2/0 ; US 7.4/0 (568× plus mince) ; F&G **8.8/+0.2** (46 Fear) ; CG 8.6/0 (BTW +85 filtré) ; PM crypto **6.8/−1.6** (`q=crypto` stale) ; PM Fed 9.4/0 (hike2026 CLOB 24h **+2.0** vs last2 0) ; Cavaleiro **4.2/+0.2** (J-9, WebFetch 403) ; X MCP 0/0 ; TV profil 5.2/0 ; TV charts **9.0/+0.2** ; Discord 0/0 ; CryptoPanic 1.6/0 (404) ; OKX 8.8/0 (funding 0.005 %) ; DXY **8.8/+0.2** (99.375).

Rapport critères live `bc-3131e6d2` : watchlist **8** ; alertes **8** ; opportunités **7** ; X **3** (<6) ; PM macro **8** ; contradictions **9** ; niveaux **8** ; honnêteté **7**. Moyenne **7.25** (18/08 INACCESSIBLE, 15/08 *5.75* non recyclé).

KOL: DROP_PRIMARY Cavaleiro relu (5 tweets, newest 10/08). Presse daily vérifiée RSS. Excel `evals/kol-selection.xlsx`.

Patch: interdit `q=crypto` ; persist+commit `last-daily-report.md` avant canal ; X wall = browser obligatoire (pas WebFetch, pas héritage DROP) ; improver hop automations avant INACCESSIBLE.

### Auto-eval process improver

| Check process | Note | Action |
|---|---:|---|
| Mémoire / log précédent | 9 | Lu MEMORIES + ops + log 18/08 + CSV KOL |
| Retest réel vs brief | 9 | HTTP + sémantique CG/PM/CLOB + computerUse Cavaleiro |
| Distinguer prompt vs infra | 8 | X MCP absent = infra ; skip wall daily = méthode ; 451 = infra |
| Ne pas scorer le mauvais agent | 9 | intégration / OAuth exclus ; daily `8de46393` identifié |
| Isolation env / daily visible | 8 | automations filter a trouvé `bc-3131e6d2` |
| Pouvoir patcher le dashboard | 2 | Toujours coller à la main |
| CLOB last2 vs 24h | 9 | hike2026 +2.0 vs last2 0 ; sept plat vrai |
| KOL Excel | 9 | xlsx + audit vs daily |
| WebFetch X | 8 | 403 mesuré ; hop = browser |
| `q=crypto` | 8 | stale documenté |

Process ≥6 ce run. Patches improver = hops manquants (automations, persist copie, WebFetch).

---

## Run 2026-08-18T11:02Z
Improver bc-bb1dd19a. Rapport live INACCESSIBLE (env Kingsi, pas de last-daily-report.md, 8de46393 hors fetch). Doublons c490fbb7/8a20e9a7 not found. 8de46393 enabled. Intégration/OAuth NON scorés comme daily.

Sources moy / Δ vs 15/08: Binance 1.8/0 ; Vision 9.2/0 ; F&G 8.6/+0.4 (41 Fear) ; CG 8.6/0 ; PM crypto 8.4/−0.2 ; PM Fed 9.4/+0.2 (hike 28.5%, CLOB 24h +5.0) ; Cavaleiro 4.0/+1.4 (J-8 giveaway) ; X MCP 0/0 ; TV profil 5.2/0 ; TV charts 8.8/0 ; Discord 0/0 ; OKX 8.8/+0.2 ; DXY 8.6/+0.2 (99.65).

Rapport critères live = INACCESSIBLE (mémoire 15/08 moyenne *5.75* non recyclée).
KOL: DROP_PRIMARY Cavaleiro. Excel evals/kol-selection.xlsx.
Patch: CLOB fenêtre 24h ; updown 5m ; pas volume24hr global ; last-daily-report.md ; secrets≠MCP.

## Run 2026-08-15T08:21Z baseline
Rapport bc-8d2776db note 5.75. Sources: Vision 9.2, F&G 8.2, Cavaleiro 2.6, X MCP 0, Fed 9.2 absent du daily. Opportunités 2 / PM macro 2 / watchlist 5.
