#!/usr/bin/env bash
# Copie le kit agent (fichiers seulement) dans un nouveau dépôt.
# Usage: bash portable-agent-kit/copy-into.sh /chemin/vers/nouveau-repo
set -euo pipefail

dest="${1:-}"
if [[ -z "$dest" ]]; then
  echo "Usage: bash portable-agent-kit/copy-into.sh /chemin/vers/nouveau-repo" >&2
  exit 1
fi

kit="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$dest"
dest="$(cd "$dest" && pwd)"

mkdir -p "$dest/.cursor/skills"
cp "$kit/AGENTS.md" "$dest/AGENTS.md"
cp "$kit/.cursor/mcp.json" "$dest/.cursor/mcp.json"
cp "$kit/.cursor/environment.json" "$dest/.cursor/environment.json"
cp "$kit/.cursor/install.sh" "$dest/.cursor/install.sh"
chmod +x "$dest/.cursor/install.sh"
cp -R "$kit/.cursor/skills/." "$dest/.cursor/skills/"

echo "Copié dans $dest"
echo "Ensuite :"
echo "  1. Éditer AGENTS.md → [NOM_DU_DEPOT]"
echo "  2. Éditer .cursor/environment.json → name"
echo "  3. Dans .cursor/mcp.json, supprimer x / x-docs / aleph si ce dépôt n'en a pas besoin"
