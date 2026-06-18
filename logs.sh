#!/bin/bash
# Mac - View Live Logs
# Run: ./logs.sh

echo "╔════════════════════════════════════════════╗"
echo "║    Trading Bot - Live Logs                 ║"
echo "╚════════════════════════════════════════════╝"
echo ""
echo "Press Ctrl+C to exit"
echo ""

# Find latest log
LOG_FILE=$(ls -t logs/trading_*.log 2>/dev/null | head -1)

if [ -z "$LOG_FILE" ]; then
    echo "❌ No log files found"
    exit 1
fi

echo "📋 Watching: $LOG_FILE"
echo "─────────────────────────────────────────────"
echo ""

tail -f "$LOG_FILE"
