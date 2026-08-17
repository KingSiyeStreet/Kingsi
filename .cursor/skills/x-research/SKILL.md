---
name: x-research
description: Veille et recherche sur X (Twitter) via le MCP officiel. À utiliser pour tendances, comptes, conversations, listes, bookmarks, et brief social. Ne pas utiliser pour publier des posts.
---

# Recherche X — Kingsi

Le plugin X connecte l’agent au compte de l’utilisateur via OAuth. Il sert à **écouter et organiser**, pas à poster.

## Avant tout appel MCP

1. Découvrir les outils du serveur `X` (`GetMcpTools`).
2. Si le statut est `needsAuth` : arrêter la partie X, expliquer qu’il faut cliquer **Connect** sur [le plugin X](https://cursor.com/marketplace/cursor/x), et continuer le reste de la tâche sans données X inventées.
3. Si les outils sont disponibles : enchaîner `GetMcpTools` (schéma) puis `CallMcpTool`.

## Ce que tu peux faire

- Chercher des posts, des comptes, de l’actualité
- Lire un profil, sa timeline, ses mentions
- Lire tendances / news (WOEID pour une localisation)
- Gérer listes, bookmarks, blocks, mutes **seulement si l’utilisateur l’a demandé**

## Ce que tu ne peux pas faire

- Publier, répondre, ou like/repost un post (pas de scope `tweet.write`)
- Coller un Client Secret — le Client ID officiel est déjà dans `.cursor/mcp.json`

Pour un détail d’endpoint, utiliser le MCP `x-docs` (`https://docs.x.com/mcp`).

## Restitution

- Toujours citer handle, date, et extrait court.
- Séparer signal (répété, sourcé) et bruit (un post isolé).
- Proposer ensuite un usage marketing : angle de contenu, watchlist, ou brief — sans poster toi-même.
- Respecter les rate limits : peu d’appels ciblés plutôt qu’un balayage large.
