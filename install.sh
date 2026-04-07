#!/bin/bash
set -euo pipefail

# Scandic Product Design — Claude Code Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/install.sh | bash
# Use --force to overwrite existing files (creates backups first)

REPO_RAW="https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main"
CLAUDE_DIR="$HOME/.claude"
FORCE=false
INSTALLED=0
SKIPPED=0

# Parse flags
for arg in "$@"; do
  case $arg in
    --force) FORCE=true ;;
  esac
done

echo ""
echo "╔══════════════════════════════════════════════╗"
echo "║  Scandic Product Design — Claude Code Setup  ║"
echo "╚══════════════════════════════════════════════╝"
echo ""

# Install a single file from the repo to a local path
install_file() {
  local remote_path="$1"
  local local_path="$2"
  local label="$3"

  if [ -f "$local_path" ] && [ "$FORCE" = false ]; then
    echo "  ⏭  $label — already exists, skipping"
    SKIPPED=$((SKIPPED + 1))
    return
  fi

  if [ -f "$local_path" ] && [ "$FORCE" = true ]; then
    local backup="${local_path}.backup.$(date +%Y%m%d%H%M%S)"
    cp "$local_path" "$backup"
    echo "  📦 $label — backed up to $(basename "$backup")"
  fi

  local dir
  dir=$(dirname "$local_path")
  mkdir -p "$dir"

  if curl -fsSL "$REPO_RAW/$remote_path" -o "$local_path" 2>/dev/null; then
    echo "  ✅ $label"
    INSTALLED=$((INSTALLED + 1))
  else
    echo "  ❌ $label — download failed"
    return 1
  fi
}

echo "Installing to $CLAUDE_DIR ..."
echo ""

# Home-level CLAUDE.md
echo "📋 Configuration"
install_file "shared/home-claude.md" "$CLAUDE_DIR/CLAUDE.md" "CLAUDE.md (home-level)"
echo ""

# Skills
echo "⚡ Skills"
install_file "skills/scandic-design/SKILL.md" "$CLAUDE_DIR/skills/scandic-design/SKILL.md" "/scandic-design — design review & critique"
install_file "skills/scandic-research/SKILL.md" "$CLAUDE_DIR/skills/scandic-research/SKILL.md" "/scandic-research — UX research & synthesis"
install_file "skills/scandic-a11y/SKILL.md" "$CLAUDE_DIR/skills/scandic-a11y/SKILL.md" "/scandic-a11y — accessibility audit"
install_file "skills/scandic-design-system/SKILL.md" "$CLAUDE_DIR/skills/scandic-design-system/SKILL.md" "/scandic-design-system — token & component management"
install_file "skills/scandic-design-critique/SKILL.md" "$CLAUDE_DIR/skills/scandic-design-critique/SKILL.md" "/scandic-design-critique — principles-based design critique"
echo ""

# Shared reference files
echo "📚 Shared References"
install_file "shared/scandic-brand.md" "$CLAUDE_DIR/shared/scandic-brand.md" "Scandic brand guidelines"
install_file "shared/design-principles.md" "$CLAUDE_DIR/shared/design-principles.md" "Design principles"
install_file "shared/roles/design-systems.md" "$CLAUDE_DIR/shared/roles/design-systems.md" "Role: design systems"
install_file "shared/roles/product-discovery.md" "$CLAUDE_DIR/shared/roles/product-discovery.md" "Role: product discovery"
install_file "shared/roles/design-ui-accessibility.md" "$CLAUDE_DIR/shared/roles/design-ui-accessibility.md" "Role: UI & accessibility"
install_file "shared/templates/prompt-starters.md" "$CLAUDE_DIR/shared/templates/prompt-starters.md" "Prompt starters"
echo ""

# Summary
echo "────────────────────────────────────────────────"
echo "  Installed: $INSTALLED file(s)"
echo "  Skipped:   $SKIPPED file(s) (already exist)"
echo "────────────────────────────────────────────────"
echo ""

if [ $INSTALLED -gt 0 ]; then
  echo "You're all set! Open Claude Code and try:"
  echo "  /scandic-design        — review a design"
  echo "  /scandic-research      — synthesize research"
  echo "  /scandic-a11y          — run an accessibility audit"
  echo "  /scandic-design-system — audit component consistency"
  echo "  /scandic-design-critique — principles-based critique"
  echo ""
fi

if [ $SKIPPED -gt 0 ]; then
  echo "To overwrite existing files (with backup), re-run with --force"
  echo ""
fi

echo "📝 For project-level setup, copy the example CLAUDE.md to your repo:"
echo "   curl -fsSL $REPO_RAW/CLAUDE.md -o ./CLAUDE.md"
echo ""
