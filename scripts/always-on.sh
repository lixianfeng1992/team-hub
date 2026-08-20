#!/usr/bin/env sh
# SessionStart hook: inject the i-have-adhd ruleset into every session.
# Never blocks session startup — any failure exits 0 silently.
#
# The SKILL.md lives in the same team repo clone (../skills/i-have-adhd/),
# resolved relative to this script's own location, so no Claude-specific
# environment variables are required.

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" 2>/dev/null && pwd) || exit 0
skill_path="$script_dir/../skills/i-have-adhd/SKILL.md"

[ -f "$skill_path" ] || exit 0

# Strip a leading YAML frontmatter block (--- ... --- at the very top of file).
# An unterminated fence is not frontmatter, so the whole file is kept unless
# the closing delimiter exists (two passes over the file).
body=$(
  awk '
    NR == FNR {
      if (NR == 1 && $0 ~ /^---[[:space:]]*$/) {
        in_frontmatter = 1
        next
      }
      if (in_frontmatter && $0 ~ /^---[[:space:]]*$/) {
        in_frontmatter = 0
        closed = 1
      }
      next
    }
    FNR == 1 { strip = closed }
    strip && FNR == 1 && $0 ~ /^---[[:space:]]*$/ {
      skipping = 1
      next
    }
    skipping && $0 ~ /^---[[:space:]]*$/ {
      skipping = 0
      next
    }
    !skipping { print }
  ' "$skill_path" "$skill_path"
) || exit 0

printf '%s\n\n%s\n' \
  'The i-have-adhd rules apply to every response.' \
  "$body" \
| awk '
  BEGIN {
    printf "{\"hookSpecificOutput\":{\"hookEventName\":\"SessionStart\",\"additionalContext\":\""
  }
  {
    if (NR > 1) printf "\\n"
    gsub(/\\/, "\\\\")
    gsub(/\"/, "\\\"")
    gsub(/\t/, "\\t")
    gsub(/\r/, "\\r")
    printf "%s", $0
  }
  END {
    print "\"}}"
  }
' || exit 0

exit 0
