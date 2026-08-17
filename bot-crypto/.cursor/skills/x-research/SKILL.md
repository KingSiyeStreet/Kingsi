---
name: x-research
description: Veille X (Twitter) via le MCP officiel. Tendances, comptes, conversations, listes, bookmarks. Ne pas publier.
---

# Recherche X

Le plugin X sert à **écouter et organiser**, pas à poster.

## Avant tout appel MCP

1. Découvrir les outils du serveur `X` (`GetMcpTools`).
2. Si `needsAuth` : arrêter la partie X, demander **Connect** sur [le plugin X](https://cursor.com/marketplace/cursor/x), continuer sans inventer de tweets.
3. Sinon : `GetMcpTools` (schéma) puis `CallMcpTool`.

## Possible

- Chercher posts, comptes, actualité
- Lire un profil, une timeline, des mentions
- Lire tendances / news
- Listes, bookmarks, blocks, mutes **seulement si demandé**

## Interdit

- Publier, répondre, like, repost (pas de `tweet.write`)
- Mettre un Client Secret dans Git

Pour un endpoint : MCP `x-docs`.

## Restitution

- Citer handle, date, extrait court.
- Séparer signal et bruit.
- Proposer un usage marketing sans poster.
- Peu d’appels (rate limits).
