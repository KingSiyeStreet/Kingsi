# Changelog — patches MÉTHODE (2026-08-19)

Pas cosmétique : URLs 18/08 encore justes, **4 méthodes** fausses d’après le retest + le daily `bc-3131e6d2`.

## Preuves live
1. **`q=crypto` Polymarket** = 5 events hors trading (semaine 23 mars, taxe Trump, Fight Night). S/B source **3**. Hop = `q=bitcoin` + slug `bitcoin-above-on-august-19-2026` + filtres updown/Fight Night.
2. **Persistance daily** : `8de46393` a tourné (03:04 UTC) mais **n’a pas écrit** `evals/last-daily-report.md` et n’a pas poussé sa branche. L’improver a pu scorer via `list-cloud-agents sources=automations` + transcript. Le prompt 18/08 disait «écrire le fichier» sans **commit-before-canal**.
3. **X wall** : WebFetch x.com = **403**. Daily a **skip** le browser en héritant DROP de la mémoire J-1 → critère X **3**. Hop = computerUse obligatoire même si roster DROP_PRIMARY.
4. **CLOB last2** encore piégé : hike-2026 last2 Δ **0** vs fenêtre **+2.0**. Daily a utilisé la fenêtre (correct). Garder la règle.

## 1. crypto-trading-agent (`8de46393`)
Coller `prompts/prompt-crypto-trading-agent.md` dans le dashboard.

Méthodes changées :
- Persistance **avant** email/mémoire : écrire + `git add/commit` `evals/last-daily-report.md`.
- PM : **interdit `q=crypto`**. `q=bitcoin` + slug du jour + filtres.
- X : hop wall = **browser**, pas WebFetch. Retest wall **chaque run** (DROP ≠ skip).
- Binance US : minceur **mesurée** (568× ce run), pas un «1000×» magique.
- CryptoPanic : 404, toujours hors plan.

Inchangé : Vision hop-1, F&G API, tri client CG, CLOB fenêtre 24h, Fed slugs, Discord skip, stilman50 ≠ source, pas nitter/xcancel.

## 2. Doublons
`c490fbb7` / `8a20e9a7` : still **not found**. `8de46393` et `109e7541` **enabled**.

## 3. crypto-prompt-improver
Faiblesses process avant ce run :
- INACCESSIBLE trop tôt (sans hop automations) — 18/08. 19/08 le daily **était** fetchable.
- Risque WebFetch X (403) à la place du browser.
- Pas de ré-écriture de `last-daily-report.md` après score.

Patches dans `prompts/prompt-crypto-prompt-improver.md` :
- Ordre rapport : fichier → automations+transcript → INACCESSIBLE.
- Réécrire `evals/last-daily-report.md` après score.
- Cavaleiro = computerUse. Check sémantique `q=crypto`.
- Excel KOL + feuille audit vs daily.

## 4. Infra user (pas un patch texte)
- Coller les deux prompts dashboard (get-automation n’écrit rien).
- Connecter le plugin X (session user) sur l’env **trading-agent**.
- Imposer au daily le commit Kingsi de `evals/last-daily-report.md`.
