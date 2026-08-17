#!/usr/bin/env bash
#
# Idempotent repository bootstrap for Cloud Agent environments.
# Installs Grok CLI on every environment, then auto-detects app manifests.

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

log() { printf '[install] %s\n' "$*"; }

# --- Grok CLI (every Cloud Agent environment) --------------------------------
install_grok_cli() {
  log "Installing Grok CLI (https://x.ai/cli/install.sh)"
  curl -fsSL https://x.ai/cli/install.sh | bash
  export PATH="${HOME}/.grok/bin:${PATH}"
  if [[ -x "${HOME}/.grok/bin/grok" ]]; then
    log "Grok CLI: $("${HOME}/.grok/bin/grok" --version 2>/dev/null || echo present)"
  else
    log "Grok CLI install finished but binary not found at ~/.grok/bin/grok"
    return 1
  fi
}

install_grok_cli

installed_something=0

# --- Node.js (npm / pnpm / yarn) -------------------------------------------
if [[ -f package.json ]]; then
  installed_something=1
  if [[ -f pnpm-lock.yaml ]]; then
    log "Detected pnpm-lock.yaml -> pnpm install --frozen-lockfile"
    corepack enable >/dev/null 2>&1 || true
    pnpm install --frozen-lockfile
  elif [[ -f yarn.lock ]]; then
    log "Detected yarn.lock -> yarn install --frozen-lockfile"
    corepack enable >/dev/null 2>&1 || true
    yarn install --frozen-lockfile
  elif [[ -f package-lock.json ]]; then
    log "Detected package-lock.json -> npm ci"
    npm ci
  else
    log "Detected package.json (no lockfile) -> npm install"
    npm install
  fi
fi

# --- Python (pip / poetry / uv) --------------------------------------------
if [[ -f requirements.txt ]]; then
  installed_something=1
  log "Detected requirements.txt -> pip install -r requirements.txt"
  python3 -m pip install --user -r requirements.txt
fi
if [[ -f pyproject.toml ]]; then
  installed_something=1
  if command -v uv >/dev/null 2>&1 && [[ -f uv.lock ]]; then
    log "Detected uv.lock -> uv sync"
    uv sync
  elif command -v poetry >/dev/null 2>&1 && [[ -f poetry.lock ]]; then
    log "Detected poetry.lock -> poetry install"
    poetry install
  else
    log "Detected pyproject.toml -> pip install ."
    python3 -m pip install --user .
  fi
fi

# --- Go ---------------------------------------------------------------------
if [[ -f go.mod ]]; then
  installed_something=1
  log "Detected go.mod -> go mod download"
  go mod download
fi

# --- Rust -------------------------------------------------------------------
if [[ -f Cargo.toml ]]; then
  installed_something=1
  log "Detected Cargo.toml -> cargo fetch"
  cargo fetch
fi

if [[ "$installed_something" -eq 0 ]]; then
  log "No dependency manifest found yet (repository is greenfield). Nothing extra to install."
fi

log "Bootstrap complete."
