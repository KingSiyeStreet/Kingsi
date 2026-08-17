#!/usr/bin/env bash
#
# Idempotent repository bootstrap for Cloud Agent environments.
#
# The Kingsi repository is currently greenfield, so this script auto-detects
# common dependency manifests and installs them when they appear. It is safe to
# run repeatedly and no-ops cleanly when a manifest is absent, so it keeps
# working as the codebase grows without needing edits for each new stack.

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

log() { printf '[install] %s\n' "$*"; }

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
  log "No dependency manifest found yet (repository is greenfield). Nothing to install."
  log "Add a manifest (e.g. package.json, requirements.txt, go.mod, Cargo.toml) and this script will pick it up automatically."
fi

log "Bootstrap complete."
