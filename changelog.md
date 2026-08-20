# Changelog — patches MÉTHODE (2026-08-20)

Pas cosmétique : hops, filtres, timeouts, gates de section, persistance.

## Daily `8de46393` (coller `prompts/prompt-crypto-trading-agent.md`)

1) **X wall — stack urllib → browser, hop bloquant.**  
   20/08 urllib `https://x.com/CryptoCavaleiro` = **200** (5 `<article>`, newest **10/08**, giveaway **10/07**) — la règle « WebFetch=403 donc browser only » est fausse.  
   Hop-1 GET urllib. Si 0 datetime parsable → hop-2 computerUse ≤15s.  
   **Gate section 7 :** sans `newest_date / jours_stale / giveaway / tickers / hop_used` la section X est INVALIDE. Interdit d’écrire DROP depuis la mémoire. 20/08 skip héritage → X=3.

2) **CLOB HTTP obligatoire** pour 3 slugs Fed + strikes BTC August.  
   `GET clob.polymarket.com/prices-history?market={YES}&interval=1d`. Δ24h = last.p − first.p.  
   Interdit last2 (encore **0** vs fenêtre Hold +1 / hike −2 / hike2026 −1).  
   Interdit `oneDayPriceChange` comme unique Δ. 20/08 : thinking « extraire CLOB » puis 0 HTTP.

3) **Persist non négociable.** 20/08 : « Pas de commit GitHub — repo public » → fichier absent.  
   Écrire + `git commit evals/last-daily-report.md` **avant** mémoire/fin. Interdit justification repo public (le fichier n’a pas de secrets).

4) **TF sur bougies closes.** Biais D1/H4/H1 = `klines[:-1]`. Live = ticker. 20/08 a scoré la D1 du 20/08 encore ouverte.

5) **KOL vs news.** Nazarov / Garlinghouse / Trump WH = `NEWS_PROXY` (CoinDesk). « 2 conv + KOL » exige un tweet ≤48h du hop X, sinon downgrade. Hors-liste HYPE OK en news.

6) **RSS crypto.news** timeout **8s** puis skip (20/08 improver : timeout 20s). Garder CoinDesk + CoinTelegraph.

7) **Confirmé garder :** interdit `q=crypto` (Fight Night + mars encore en tête) ; interdit `events?order=volume24hr` (Dota/LoL #1–#5) ; Vision hop-1 ; US minceur 315×.

## Improver `109e7541` (coller `prompts/prompt-crypto-prompt-improver.md`)

1) Ne plus figer « WebFetch x.com=403 ». Retester urllib **chaque** run ; browser si HTML sans datetime.  
2) Onglet Excel `citations_daily` : chaque nom cité dans le daily (pas seulement Cavaleiro).  
3) Si daily refuse le commit : **réécrire** `evals/last-daily-report.md` depuis transcript `8de46393` (fait 20/08 `bc-bd26f0c5`).
