---
name: x-research
description: Veille et recherche sur X (Twitter) via le MCP officiel. Tendances, comptes, conversations, listes, bookmarks, brief social. Ne pas utiliser pour publier des posts.
---

# Recherche X

Le plugin X connecte l’agent au compte de l’utilisateur via OAuth. Il sert à **écouter et organiser**, pas à poster.

## Avant tout appel MCP

1. Découvrir les outils du serveur `X` (`GetMcpTools`).
2. Si le statut est `needsAuth` : arrêter la partie X, demander **Connect** sur [le plugin X](https://cursor.com/marketplace/cursor/x), continuer sans inventer de données X.
3. Si les outils sont disponibles : `GetMcpTools` (schéma) puis `CallMcpTool`.

## Possible

- Chercher des posts, des comptes, de l’actualité
- Lire un profil, sa timeline, ses mentions
- Lire tendances / news
- Gérer listes, bookmarks, blocks, mutes **seulement si demandé**

## Interdit

- Publier, répondre, like ou repost (pas de scope `tweet.write`)
- Coller un Client Secret — le Client ID officiel est déjà dans `.cursor/mcp.json`

Pour un détail d’endpoint : MCP `x-docs`.

## Restitution

- Citer handle, date, extrait court.
- Séparer signal (répété) et bruit (post isolé).
- Proposer un usage marketing sans poster.
- Peu d’appels ciblés (rate limits).
