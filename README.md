# Kingsi

Espace de travail de l’agent marketing **KingSiyeStreet / Kingsi**.

L’agent est configuré pour **rechercher, planifier, puis exécuter** (veille X, briefs, contenus, et plus tard des apps Amplify). Le dépôt n’a pas encore de produit applicatif.

## Pour que l’agent voie tout ça

Merger cette config dans `main`, puis lancer un **nouvel** agent Cloud (les agents déjà ouverts ne rechargent pas tout seuls `AGENTS.md` / MCP).

## Connexions à valider une fois

- **X** — [Sign In To Add](https://cursor.com/marketplace/cursor/x) (aucun secret à coller)
- **Aleph** — connexion depuis les plugins Cursor si tu veux de la data financière

## Fichiers agent

| Fichier | Rôle |
| --- | --- |
| `AGENTS.md` | Identité, langue, outils, façon de travailler |
| `.cursor/mcp.json` | MCP X, docs X, Aleph |
| `.cursor/environment.json` | Environnement Cloud Agent |
| `.cursor/skills/` | Workflows marketing et veille X |
