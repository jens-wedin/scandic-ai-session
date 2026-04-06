#!/bin/bash
set -euo pipefail

# Scandic Product Design — Claude Code Uninstaller
# Removes all files installed by install.sh

CLAUDE_DIR="$HOME/.claude"
REMOVED=0
NOT_FOUND=0

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║  Scandic Product Design — Claude Code Uninstall  ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

remove_file() {
  local path="$1"
  local label="$2"

  if [ -f "$path" ]; then
    rm "$path"
    echo "  🗑  $label"
    REMOVED=$((REMOVED + 1))
  else
    echo "  ⏭  $label — not found, skipping"
    NOT_FOUND=$((NOT_FOUND + 1))
  fi
}

remove_dir_if_empty() {
  local dir="$1"
  if [ -d "$dir" ] && [ -z "$(ls -A "$dir")" ]; then
    rmdir "$dir"
  fi
}

echo "Removing from $CLAUDE_DIR ..."
echo ""

# Home-level CLAUDE.md
echo "📋 Configuration"
remove_file "$CLAUDE_DIR/CLAUDE.md" "CLAUDE.md (home-level)"
echo ""

# Skills
echo "⚡ Skills"
remove_file "$CLAUDE_DIR/skills/scandic-design/SKILL.md" "/scandic-design"
remove_file "$CLAUDE_DIR/skills/scandic-research/SKILL.md" "/scandic-research"
remove_file "$CLAUDE_DIR/skills/scandic-a11y/SKILL.md" "/scandic-a11y"
remove_file "$CLAUDE_DIR/skills/scandic-design-system/SKILL.md" "/scandic-design-system"
echo ""

# Shared reference files
echo "📚 Shared References"
remove_file "$CLAUDE_DIR/shared/scandic-brand.md" "Scandic brand guidelines"
remove_file "$CLAUDE_DIR/shared/design-principles.md" "Design principles"
remove_file "$CLAUDE_DIR/shared/roles/design-systems.md" "Role: design systems"
remove_file "$CLAUDE_DIR/shared/roles/product-discovery.md" "Role: product discovery"
remove_file "$CLAUDE_DIR/shared/roles/design-ui-accessibility.md" "Role: UI & accessibility"
remove_file "$CLAUDE_DIR/shared/templates/prompt-starters.md" "Prompt starters"
echo ""

# Clean up any backup files
BACKUPS=$(find "$CLAUDE_DIR" -name "*.backup.*" 2>/dev/null | wc -l)
if [ "$BACKUPS" -gt 0 ]; then
  echo "⚠️  Found $BACKUPS backup file(s) — leaving them in place."
  echo "   To remove backups: find ~/.claude -name '*.backup.*' -delete"
  echo ""
fi

# Remove empty directories (bottom-up)
remove_dir_if_empty "$CLAUDE_DIR/skills/scandic-design"
remove_dir_if_empty "$CLAUDE_DIR/skills/scandic-research"
remove_dir_if_empty "$CLAUDE_DIR/skills/scandic-a11y"
remove_dir_if_empty "$CLAUDE_DIR/skills/scandic-design-system"
remove_dir_if_empty "$CLAUDE_DIR/shared/roles"
remove_dir_if_empty "$CLAUDE_DIR/shared/templates"
remove_dir_if_empty "$CLAUDE_DIR/shared"

# Summary
echo "────────────────────────────────────────────────"
echo "  Removed:   $REMOVED file(s)"
echo "  Not found: $NOT_FOUND file(s)"
echo "────────────────────────────────────────────────"
echo ""

if [ $REMOVED -gt 0 ]; then
  echo "Scandic design config has been removed."
  echo "To reinstall: curl -fsSL https://raw.githubusercontent.com/jens-wedin/scandic-ai-session/main/install.sh | bash"
  echo ""
fi
