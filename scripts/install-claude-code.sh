#!/bin/sh
curl -fsSL https://claude.ai/install.sh | bash || exit 1

CLAUDE_JSON="/root/.claude.json"

if [ -f "$CLAUDE_JSON" ]; then
	tmp=$(mktemp)
	jq '.hasCompletedOnboarding = true' "$CLAUDE_JSON" > "$tmp" && mv "$tmp" "$CLAUDE_JSON"
else
	echo '{"hasCompletedOnboarding":true}' > "$CLAUDE_JSON"
fi
