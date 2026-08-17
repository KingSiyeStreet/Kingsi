# À copier dans tes nouveaux dépôts

Tu réorganises tes répertoires. **Ne copie pas tout Kingsi.**  
Les plugins et le login X vivent sur **ton compte Cursor**, pas dans Git.  
Ce dossier ne contient que les **fichiers** introduits ces jours-ci, déjà détachés du nom Kingsi.

Source à copier : `portable-agent-kit/`

## Déjà sur ton compte (ne pas déplacer)

| Élément | Où ça reste |
| --- | --- |
| Plugins X, Aleph, Amplify, CodeRabbit, GitHub | Cursor → Plugins |
| Session OAuth X (quand tu auras cliqué Connect) | Ton compte Cursor |
| Règle « je suis marketeur » | Réglages Cursor (user rule) |
| Environnement personnel `KingSizestreet` | Dashboard Cloud Agents |

## Fichiers à emporter (selon le nouveau dépôt)

| Tu veux… | Copie ça | Laisse tomber |
| --- | --- | --- |
| Un agent marketeur (briefs, campagnes, copy) | `AGENTS.md` + `.cursor/skills/marketing-workflow/` | README Kingsi |
| Veille / recherche X | `.cursor/mcp.json` (serveurs `x` et `x-docs`) + `.cursor/skills/x-research/` | — |
| Data financière Aleph | dans `mcp.json`, garde seulement `aleph` | `x` si ce dépôt n’en a pas besoin |
| Cloud Agents Cursor | `.cursor/environment.json` + `.cursor/install.sh` | change `"name"` dans environment.json |
| App web Amplify | rien à copier (c’est le **plugin** + skill Amplify déjà installé) | n’invente pas une app tant que le dépôt n’est pas choisi |
| Review de code | rien à copier (plugin CodeRabbit) | — |

## Commande

Depuis la racine de **ce** dépôt :

```bash
bash portable-agent-kit/copy-into.sh /chemin/vers/ton-nouveau-repo
```

Ensuite, dans le nouveau repo :

1. Ouvre `AGENTS.md` → remplace `[NOM_DU_DEPOT]`
2. Ouvre `.cursor/environment.json` → remplace `"name"`
3. Ouvre `.cursor/mcp.json` → **supprime** `x`, `x-docs` ou `aleph` si ce dépôt n’en a pas besoin
4. Commit, puis lance un **nouvel** agent Cloud sur ce repo

## Ne pas emporter

- `README.md` de Kingsi (texte d’accueil, pas une config)
- les PR #1 et #2 (brouillons d’essai, déjà fusionnés dans ce kit)
- secrets, tokens, Client Secret (il n’y en a **aucun** dans ces fichiers ; le Client ID X est celui du plugin officiel Cursor)
