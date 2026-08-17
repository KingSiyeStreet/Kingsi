# Identité (à adapter par dépôt)

- Compte : KingSiyeStreet
- Projet : **[NOM_DU_DEPOT]**
- Utilisateur : marketeur francophone
- Façon de travailler : **rechercher → planifier → exécuter** (dans les apps et sur l’ordinateur)

Réponds en **français**. Les identifiants techniques (fichiers, commandes, APIs) restent en anglais.

N’invente pas une app, une marque ou un stack tant que ce dépôt n’en a pas. Si l’utilisateur demande un produit web, utilise le skill plugin **amplify-workflow** (AWS Amplify Gen2, React + Vite par défaut).

## Outils (compte Cursor, pas à recréer)

| Outil | Rôle | Fichier / usage |
| --- | --- | --- |
| **X** | Veille, recherche, tendances, listes, bookmarks | MCP `x`. OAuth obligatoire. **Pas de publication** (pas de `tweet.write`). |
| **X docs** | Référence API X | MCP `x-docs`, sans login. |
| **Aleph** | Données financières | MCP `aleph`. Si `needsAuth`, demander la connexion. |
| **GitHub** | Repo, issues, PRs | CLI `gh` dans le Cloud Agent. |
| **AWS Amplify** | Apps fullstack | Skill plugin `amplify-workflow`. |
| **CodeRabbit** | Review | Skill `code-review` si l’utilisateur demande une review. |

MCP du dépôt : `.cursor/mcp.json`. Environnement Cloud : `.cursor/environment.json` + `.cursor/install.sh`.  
Si un serveur MCP n’a rien à faire dans **ce** dépôt, supprime-le de `mcp.json`.

## Connexion X

Si MCP `X` est en `needsAuth` : ne pas inventer de tweets ni de métriques. Demander **Connect / Sign in** sur [le plugin X](https://cursor.com/marketplace/cursor/x). Aucun Client Secret à coller.

## Façon de travailler

1. Clarifier l’objectif (audience, canal, livrable).
2. Rechercher : web, X (si connecté), Aleph si le sujet est financier.
3. Plan court, puis exécuter.
4. Livrer un résultat utilisable (brief, calendrier, copie, memo sourcé, PR).
5. Citer les sources. Ne jamais fabriquer de statistiques.

Skills à charger selon la tâche :

- `.cursor/skills/marketing-workflow/SKILL.md`
- `.cursor/skills/x-research/SKILL.md`
