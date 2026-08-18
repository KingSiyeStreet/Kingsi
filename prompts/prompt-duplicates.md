# Doublons à traiter (dashboard, pas MCP) — état 2026-08-18

L'improver ne peut pas activer/désactiver les automations.

## A — GARDER et coller le prompt maître
https://cursor.com/automations/8de46393-987e-11f1-ba66-0e7d0216e441
`agent crypto-trading-agent` — **enabled** le 18/08 (`get-automation` OK, owner stilman50@gmail.com).
Coller `prompts/prompt-crypto-trading-agent.md` (hops 18/08 : CLOB fenêtre 24h, KOL roster, persistance `evals/last-daily-report.md`, updown 5m, pas de volume24hr global).

## B — Grok daily 07:00
https://cursor.com/automations/c490fbb7-9876-11f1-ba66-0e7d0216e441
18/08 : `get-automation` → **not found**. Probablement désactivé/supprimé (objectif du 15/08).
Si elle réapparaît avec l'ancien prompt 3 étapes (H4/H1 + Cavaleiro + PM btc only) : aligner sur A ou laisser morte. C'était `bc-8d2776db` (note 5.75).

## C — Composer marketing
https://cursor.com/automations/8a20e9a7-9724-11f1-ba66-0e7d0216e441
18/08 : `get-automation` → **not found**.
Ne pas la ressusciter. C'était le format marketing CoinGecko qui cachait l'échec gainers.

## Env / repo (nouveau)
Improver `109e7541` tourne sur **Kingsi** (public). `list-cloud-agents` n'y liste pas les runs de `8de46393`.
Soit attacher les deux automations au même environment, soit imposer `evals/last-daily-report.md` dans Kingsi en fin de daily.
Sans ça, l'improver ne peut pas scorer le rapport — c'est un trou de **méthode d'éval**, pas un trou de sources.
