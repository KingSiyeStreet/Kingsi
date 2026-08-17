# Bot crypto — kit agent (veille + contenu)

Répertoire **nouveau**, extrait de ce que tu as déjà mis dans Cursor, puis spécialisé crypto.

Ce n’est **pas** un robot qui achète ou vend. C’est un agent qui :

1. cherche des faits (web + Aleph)
2. écoute X (si Connect est fait)
3. livre un brief, une veille, ou du copy prêt à publier **à la main**

## Contenu

| Fichier | Rôle |
| --- | --- |
| `SOURCE.md` | D’où vient l’extraction |
| `AGENTS.md` | Instructions de l’agent |
| `.cursor/mcp.json` | X + docs X + Aleph |
| `.cursor/skills/` | marketing, X, intel crypto |
| `.cursor/environment.json` + `install.sh` | Cloud Agent |
| `copy-into.sh` | Copie ce kit à la racine d’un autre dépôt |

## Copier vers un nouveau dépôt GitHub

```bash
bash bot-crypto/copy-into.sh /chemin/vers/ton-nouveau-repo
```

Puis, dans le nouveau repo : ouvre `AGENTS.md`, remplace `[NOM_DU_DEPOT]`, commit, lance un **nouvel** agent Cloud sur ce repo.

## Connexions (sur ton compte Cursor, pas dans Git)

- **X** : [cursor.com/marketplace/cursor/x](https://cursor.com/marketplace/cursor/x) → Sign In To Add / Connect
- **Aleph** : plugin Aleph → Connect si l’agent le demande
