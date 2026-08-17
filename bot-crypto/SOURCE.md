# Source de cette extraction

Ce dossier n’est **pas** un bot de trading automatique.  
Rien dans tes agents Cursor n’était un bot d’ordres (pas d’API Binance/Coinbase, pas de wallet, pas de stratégie d’achat/vente).

## D’où ça vient

| Source | Ce qui a été repris |
| --- | --- |
| Agent [Agent intégration éléments](https://cursor.com/agents/bc-351e3289-e610-4214-8c34-1c3eada91ce2) | Identité marketeur, workflow rechercher → planifier → exécuter, skills, MCP |
| Branche `cursor/agent-integration-elements-1ce2` | `portable-agent-kit/`, `AGENTS.md`, skills X + marketing, Aleph |
| Plugin **Aleph** | Données financières (c’est le volet « crypto / finance ») |
| Plugin **X** | Veille sociale (écouter, pas poster) |

## Ce qui a été retiré

- Le nom de dépôt verrouillé « Kingsi » comme unique projet
- Les secrets OAuth (aucun secret n’est copié ici)
- L’idée d’une app web Amplify tant qu’elle n’est pas demandée
- Toute invention de bot qui passe des ordres

## Ce qui a été raffiné ici

- Cible produit : **agent de veille et de contenu crypto**
- Skill `crypto-intel` : Aleph (chiffres) + X (conversation) + web
- Règle dure : ne jamais trader, ne jamais inventer un prix
