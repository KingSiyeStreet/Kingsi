# Changelog — patches MÉTHODE (2026-08-18)

## Pourquoi pas cosmétique
Le prompt `prompt-crypto-trading-agent.md` du 15/08 avait déjà les bonnes URLs (Vision, F&G API, tri client CG, Fed slug). Trois **méthodes** restent fausses d’après le retest live :

1. **CLOB Δ** = 2 derniers ticks (souvent 0) au lieu de la fenêtre 24 h (hike 23.5 % → 28.5 % = **+5 pts**, seuil d’alerte).
2. **KOL unique Cavaleiro** : le hop « 15 s puis STOP si login wall » rate le vrai problème — panel ≠ wall, 5 tweets lisibles, mais **J-8 + giveaway + 0 token**. Un daily qui le traiterait comme veille du jour serait faux.
3. **Improver aveugle** : `list-cloud-agents` est scopé à l’env/repo Kingsi. Les runs `8de46393` du 15/08 sont **invisibles**. Scorer l’agent « intégration » ou « Connexion à x » comme rapport daily serait une erreur de process. Il faut **persister** `evals/last-daily-report.md`.

Pas de patch titre/emoji.

## 1. crypto-trading-agent (`8de46393`)
Coller `prompts/prompt-crypto-trading-agent.md` dans le dashboard.

Méthodes changées ce run :
- **CLOB Δ** = `history[-1].p - history[0].p` (interval=1d, ~24 h) ou point le plus proche de `t_now-86400`. Interdit : delta des 2 derniers points (fidélité 60 s → souvent 0).
- **Updown** : exclure `*updown*15m*` **et** `*updown*5m*` **et** `*updown*1h*`. Search bitcoin 18/08 a `btc-updown-5m` dans le top 5.
- **Interdit** `events?order=volume24hr` comme feed crypto (18/08 #1 = LoL esports 3.0 M$). Crypto = search `q=` + slugs connus.
- **X MCP** : 1× `GetMcpTools` serveur `X`. Absent / error / needsAuth → une ligne, 0 retry. `X_OAUTH_*` injecté **≠** Connect.
- **X browser** : login *panel* n’arrête pas si tweets visibles. Lire ≤5 / 15 s. Si newest >48 h → `KOL stale, ignoré`. Ignorer giveaways. Cavaleiro n’est **pas** PRIMARY unique.
- **Roster KOL** : officiers projet (web) + presse labellisée + SEC.gov. Listes X sans session = skip. Voir `evals/kol-selection.xlsx`.
- **Persistance** : écrire `evals/last-daily-report.md` en fin de run si workspace git (l’improver est sur Kingsi et ne voit pas les transcripts trading d’un autre env).
- Fed : alerter **Δ fenêtre 24 h ≥5** (ex. hike 25 bps +5.0 ce matin) **et** niveaux (0 cuts 2026 = 85 % ; hike 2026 = 48.5 %).
- Binance US : volume réel mais ~1000× plus mince — toujours interdit pour EMA/RSI.

Inchangé et toujours vrai : Vision hop-1, F&G API only, tri client gainers, Discord skip, stilman50 ≠ source, pas de nitter/xcancel/CryptoPanic.

## 2. Doublons
`c490fbb7` et `8a20e9a7` : `get-automation` → **not found** (18/08). Probablement désactivés/supprimés. `8de46393` reste **enabled**. Voir `prompts/prompt-duplicates.md`.

## 3. crypto-prompt-improver (process faible détecté)
Faiblesses de **ce** process avant patch :
- Pas de stratégie si le daily vit dans un autre environnement (Kingsi vs env trading).
- Risque de scorer `bc-351e3289` (intégration marketeur, 0 prix) comme rapport crypto.
- CLOB last2 ticks aurait donné Δ hike = 0 (faux négatif d’alerte).
- KOL scorés sur « login wall » sans distinguer panel vs tweets visibles vs **stale**.

Patches dans `prompts/prompt-crypto-prompt-improver.md` :
- Lire `evals/last-daily-report.md` **avant** list-cloud-agents.
- Ne jamais scorer intégration / OAuth X / setup env comme daily.
- Si 8de46393 invisible : critère rapport = **INACCESSIBLE**, pas un recyclage des notes 5.75 comme live.
- Check sémantique CLOB window vs last2 ; CG gainers ; PM default=5 ; F&G API only.
- Mettre à jour `evals/kol-selection.xlsx` (KEEP/DROP), pas seulement un paragraphe.
- Ping X = catalogue MCP, une fois.

## 4. Infra user (pas un patch texte)
- Connecter le plugin X (OAuth **user** session) sur l’env du **trading-agent**, pas seulement coller Client ID/Secret. Ce run Kingsi : secrets présents, serveur X **absent**.
- Coller le prompt maître dans `8de46393` (get-automation ne l’écrit pas).
- Faire tourner trading-agent **et** improver sur le même environment, **ou** imposer `evals/last-daily-report.md` dans Kingsi.
- Ne pas attendre Discord.
- Publier une watchlist TradingView publique **ou** retirer stilman50 comme source (0 ideas, inchangé).
