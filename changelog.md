# Changelog — patches MÉTHODE (2026-08-28)

Patches 25–26/08 **non collés au dashboard** → récidive daily 28/08 (persist skip, Échecs absente, F&G limit=7, html truncate, markets?slug= skip, newest hérité 10/08). Coller `prompts/prompt-*.md` **maintenant**. Trou cron 27/08.

## crypto-trading-agent (méthode, pas le texte)

1) **Persist** inchangé + phrase 28/08 « aucune persistance entries/TP » / « owner only » = FAIL. Mémoire anti-persist = STALE HOSTILE. Thinking « checklist exclue » = interdit.
2) **## Échecs** tableau obligatoire. Ajouter clés `html_n` | `clob_hop_used`.
3) **F&G** `limit=2` only. 28/08 daily `limit=7` = FAIL (print 73 OK, hop faux).
4) **CLOB** : urllib hop-1 `interval=max`. Si **403 CF HTML** : hop-2 **WebFetch même URL** (28/08 urllib 403 / WebFetch 200). Puis 1d ou startTs si n<2. last2 + d24 + n= + clob_http_count + hop_used. Ne pas figer urllib=200. conditionId toujours interdit.
5) **PM** : `markets?slug=` child **obligatoire** même si `events?slug=` a déjà `markets[]`. 28/08 skip = FAIL. 80k HIT ; YE slug `before-2027` si `end-of-2026` [].
6) **X html_n** : urllib **sans truncate**. Si n<80k OU ids=[] → refetch puis computerUse. 28/08 daily 20 kB → 0 IDs ; improver 255 kB → 5 IDs. Interdit jina/nitter. Interdit hériter newest_date (10/08) / followers (125). Live 28/08 : newest **27/08** re.xyz, **122** fol, giveaway=NON.
7) **US minceur** chaque run. 28/08 **705.7× / 1297.3×**. Skip « Vision OK » = FAIL.
8) **NEWS_PROXY par titre**. Blanket « Proxy news » = R5 faible.
9) **TFTC** deux paths. **Farside** ne pas figer 403 (daily 200 / improver 403). Table parsée ou ne pas citer les flux.
10) **crypto.news** timeout 8s (daily 18s). Ping MCP = GetDynamicTools **namespace=X** → needsAuth.

## crypto-prompt-improver

11) Ne pas figer : US 697×, Cavaleiro newest=10/08 / 125 fol / html_ids=0 JS, CLOB urllib 200 **ou** 403, CryptoPanic 404, Farside 403, interval=max last2≠0.
12) Si daily 0 IDs : improver refetch HTML full avant de scorer « JS wall ».
13) CLOB eval = urllib **puis** WebFetch. Compter les deux.
14) Excel `citations_daily` append le jour scoré (28/08). 122 fol + 0 overlap + affiliate = DROP même si ≤48h.
15) Persist last-daily-report depuis transcript **avant** mémoire (28/08 encore skip daily).
