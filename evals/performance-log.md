# evals/performance-log.md

## Run 2026-08-18T11:02Z
Improver: `bc-bb1dd19a` · cursor-grok-4.6-high-fast · https://cursor.com/agents/bc-bb1dd19a-ade8-4e26-b8a8-1158640d60a7
Rapport scoré **live** : **INACCESSIBLE**
- `list-cloud-agents` env Kingsi = 5 runs (ce cron, Verify Grok CLI, Agent intégration, Connexion à x, setup). Aucun `8de46393`.
- `batch-fetch` `bc-8d2776db`, `bc-ddb3ca2c`, `bc-add2a391` → not available.
- `get-automation` `8de46393` = enabled ; `c490fbb7` / `8a20e9a7` = not found.
- `bc-351e3289` = kit marketeur, **0** watchlist/PM/KOL/prix — **non scoré** comme daily (anti-piège).
- `bc-48d9eba7` = OAuth X, 0 tweet, MCP `needsAuth` historique — **non scoré** comme daily.

Dernier scores rapport **en mémoire** (15/08, non re-vérifiés) conservés en italique ci-dessous. Ils **ne comptent pas** comme note live.

### Sources (moyenne 5 axes) — Δ vs log 2026-08-15

| Source | Moy | Δ | Commentaire court |
|---|---:|---:|---|
| Binance officiel | 1.8 | 0.0 | 451 19–32 ms |
| Binance Vision | 9.2 | 0.0 | BTC 64319 hop-1 |
| F&G alternative.me | 8.6 | +0.4 | 41 Fear / 31 J-1 |
| CoinGecko | 8.6 | 0.0 | piège order= inchangé ; VVV +18.5 filtré |
| PM crypto | 8.4 | −0.2 | default 5 ; updown **5m** |
| PM Fed | 9.4 | +0.2 | hike 28.5 % ; CLOB 24h **+5.0 pts** |
| X browser Cavaleiro | 4.0 | +1.4 | 5 tweets, newest J-8, giveaway — <5 |
| X MCP | 0.0 | 0.0 | serveur absent ; 401 api.x.com/mcp |
| TV stilman50 profil | 5.2 | 0.0 | 0 ideas |
| TV charts publics | 8.8 | 0.0 | 200 |
| Discord | 0.0 | 0.0 | non config |
| OKX | 8.8 | +0.2 | funding 0.0065 % |
| Yahoo DXY | 8.6 | +0.2 | 99.65 |

### Dernier rapport — critères (seuil patch <6)

| Critère | Note live 18/08 | Note 15/08 (mémoire) | Δ live | Preuve |
|---|---:|---:|---|---|
| Watchlist multi-TF | **INACCESSIBLE** | 5 | n/a | Pas de `evals/last-daily-report.md`. Transcript 8de46393 hors env. |
| Alertes | **INACCESSIBLE** | 8 | n/a | Live macro non injectée : hike +5 pts CLOB 24h. |
| Opportunités | **INACCESSIBLE** | 2 | n/a | Historique <6 → patch persistance + hors-liste inchangé. |
| X | **INACCESSIBLE** (KOL live 4.0) | 4 | n/a | Cavaleiro lu par **l’improver** (5 tweets stale). Un daily qui s’en servirait comme signal = fail. |
| Polymarket macro US | **INACCESSIBLE** | 2 | n/a | Slug Fed **marche** live. Trou historique = méthode rapport, pas l’API. |
| Contradictions | **INACCESSIBLE** | 8 | n/a | — |
| Niveaux | **INACCESSIBLE** | 8 | n/a | — |
| Honnêteté des échecs | **INACCESSIBLE** | 9 | n/a | Process improver : ne pas inventer un score. |
| **Moyenne rapport live** | **n/a** | *5.75* | n/a | Patch : persister le daily. Ne pas recycler 5.75. |

### Auto-eval process improver

| Check process | Note | Action |
|---|---:|---|
| Mémoire / log précédent | 9 | Lu MEMORIES + ops + log 15/08 |
| Retest réel vs brief | 8 | HTTP + sémantique gainers/PM/F&G/CLOB window + browser Cavaleiro |
| Distinguer prompt vs infra | 8 | X MCP absent = infra ; CLOB last2 = méthode ; env isolation = process |
| Ne pas scorer le mauvais agent | 9 | intégration / OAuth exclus |
| Isolation env / daily invisible | 3 avant patch / 8 après | Patch persistance + lecture last-daily-report.md |
| Pouvoir patcher le dashboard | 2 | Toujours coller à la main |
| CLOB last2 vs 24h | 8 | Piège documenté (+5 pts hike) |
| KOL Excel | 8 | `evals/kol-selection.xlsx` décisions KEEP/DROP |
| Attendre un run concurrent | 9 | Aucun trading RUNNING dans cet env |

Process **<6** sur isolation env **avant** ce run → prompt improver patché. Pas contourné via un faux score daily.

### Actions prises ce run
- Écrit (repo Kingsi + mémoire) : health-check, changelog, ops, prompts, evals/performance-log, **evals/kol-selection.xlsx**.
- Non fait (impossible) : écrire le prompt dashboard de `8de46393`.
- Non fait (sûr) : utiliser / logger les valeurs `X_OAUTH_*`.
- Non fait : scorer `bc-351e3289` comme daily.

---

## Run 2026-08-15T08:21Z — premier log (baseline)
Improver: `bc-add2a391` · modèle cursor-grok-4.6-high-fast
Rapport scoré: `bc-8d2776db` 2026-08-15 ~07:00Z grok · automation `c490fbb7` (prompt 3 étapes)
Non scoré comme «dernier rapport trading»: composer `bc-2bf85beb` (marketing CoinGecko).
En cours, hors score final: trading-agent `bc-ddb3ca2c` (`8de46393`, prompt déjà riche, méthodes encore 451-first).

### Sources (moyenne 5 axes) — Δ vs log précédent = N/A

| Source | Moy | Δ | Commentaire court |
|---|---:|---|---|
| Binance officiel | 1.8 | n/a | 451 structurel |
| Binance Vision | 9.2 | n/a | hop-1 à imposer |
| F&G alternative.me | 8.2 | n/a | 34 Fear ; absent du rapport 07:00 |
| CoinGecko | 8.6 | n/a | 200 mais gainers sémantiquement faux |
| PM crypto | 8.6 | n/a | pagination défaut=5 |
| PM Fed | 9.2 | n/a | **absent** rapport 07:00 |
| X browser Cavaleiro | 2.6 | n/a | login wall |
| X MCP | 0.0 | n/a | discovery error |
| TV stilman50 profil | 5.2 | n/a | 0 ideas |
| TV charts publics | 8.8 | n/a | 4H OK |
| Discord | 0.0 | n/a | non config |

### Dernier rapport — critères (seuil patch <6)

| Critère | Note | Δ | Preuve |
|---|---:|---|---|
| Watchlist multi-TF | **5** | n/a | H4 tableau + H1 colonne. Pas de D1=bias. Prompt 07:00 ne demandait que H4/H1. |
| Alertes | **8** | n/a | ≥65 % avec necks (RSR 74.6, ONDO 74.2, CRV 72, SOL 71.7, XRP 71.6, ETH 71.5). |
| Opportunités | **2** | n/a | Section absente. Pas de hors-liste. LINK surachat seulement dans alertes. |
| X | **4** | n/a | Échec honnête + proxy presse. 0 tweet Cavaleiro. |
| Polymarket macro US | **2** | n/a | BTC/ETH/SOL/XRP only. 0 Fed/FOMC/CPI/SEC market. |
| Contradictions | **8** | n/a | ONDO DT vs RSI div ; ETH DB vs H4 bear vs PM 1900~5 % ; XRP DT vs PM +18 pts ; WLFI haussier vs Aqua1. |
| Niveaux | **8** | n/a | Necks 0.9982 / 75.35 / 1893 / 0.001206 / 0.3256 ; EMA20/50. |
| Honnêteté des échecs | **9** | n/a | 451, config Windows, X/nitter/xcancel, stilman50, 1er snapshot PM. |
| **Moyenne rapport** | **5.75** | n/a | Sous le seuil 6 → patch. |

Composer `bc-2bf85beb` (pour mémoire, **hors** moyenne trading) : watchlist 1, alertes 1, opportunités 3 (marketing), X 0, PM 0, macro US 6, contradictions 5, niveaux 4, honnêteté 4 (gainers fail **caché**). Ne plus le traiter comme crypto-trading-agent.

### Auto-eval process improver
| Check process | Note | Action |
|---|---:|---|
| Mémoire / log précédent | 0 avant ce run | Créé |
| Retest réel vs brief | 8 | HTTP + browser + sémantique gainers/PM/F&G |
| Distinguer prompt vs infra | 7 | X MCP = infra ; 451 = méthode |
| Pouvoir patcher le dashboard | 2 | **Impossible via MCP** — coller à la main |
| Attendre le run concurrent | 6 | Non attendu (bon) ; noté en cours |

Process <6 sur «écriture dashboard» → documenté, pas contourné.

### Actions prises ce run
- Écrit: health-check, changelog, ops, prompts patchés (mémoire).
- Non fait (impossible): modifier le prompt dashboard des autres automations.
- Non fait (sûr): poster ailleurs que la mémoire + cette réponse.
