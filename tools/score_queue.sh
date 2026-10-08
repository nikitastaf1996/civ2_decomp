#!/usr/bin/env bash
# Score the top of docs/matching_queue.txt with try_match --source-only.
# Usage: tools/score_queue.sh [N]   (default 40)
set -u
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
N="${1:-40}"
tail -n +4 docs/matching_queue.txt | grep -v "func_800A3B08\|func_8001E8B0" | head -"$N" > /tmp/queue_top.txt
while read -r diffs delta callers func variant opt; do
    case "$variant" in
        base)   draft="/home/user/drafts/$func.c" ;;
        pinned|widen|w2) draft="/home/user/drafts_pinned/$func.c" ;;
        *)      draft="/home/user/drafts_enh/$func.c" ;;
    esac
    if [ ! -f "$draft" ]; then
        # generate on demand
        mkdir -p /home/user/drafts /home/user/drafts_enh /home/user/drafts_pinned
        case "$variant" in
            base) python3 tools/dump_draft.py "$func" --bin civ2 --out-dir /home/user/drafts >/dev/null 2>&1 ;;
            *)    python3 tools/dump_draft.py "$func" --bin civ2 --enhanced --out-dir /home/user/drafts_enh >/dev/null 2>&1 ;;
        esac
        if [ "$variant" = "pinned" ] || [ "$variant" = "widen" ] || [ "$variant" = "w2" ]; then
            src="/home/user/drafts_enh/$func.c"
            [ -f "$src" ] || src="/home/user/drafts/$func.c"
            python3 tools/pin_retail.py "$src" "$func" --bin civ2 --opt "$opt" > "/home/user/drafts_pinned/$func.c" 2>/dev/null
        fi
    fi
    if [ ! -f "$draft" ]; then echo "$func MISSING-DRAFT"; continue; fi
    out="$(python3 tools/try_match.py "$draft" "$func" --bin civ2 --opt "$opt" --source-only 2>&1)"
    line="$(printf '%s\n' "$out" | grep -P "^$func: " | head -1)"
    now="$(printf '%s' "$line" | grep -oP 'MATCH|\d+ diffs' | head -1)"
    [ -z "$now" ] && now="COMPILE-FAIL"
    printf '%-14s q=%-3s %-9s %-38s now=%s\n' "$func" "$diffs" "$variant" "$opt" "${now:-?}"
done < /tmp/queue_top.txt
