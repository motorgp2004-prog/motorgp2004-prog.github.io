#!/bin/bash
# 自動將每日報告轉為文章並發布到網站
SOURCE_DIR="$HOME/.hermes/cron/output/6838_daily_report"
TARGET_DIR="/tmp/github_site/_posts"

echo "開始自動同步每日報告..."
LATEST=$(ls -t $SOURCE_DIR/*.md 2>/dev/null | head -1)

if [ -z "$LATEST" ]; then
    echo "沒有找到最新報告"
    exit 0
fi

echo "最新報告: $LATEST"
BASENAME=$(basename $LATEST .md)
cp "$LATEST" "$TARGET_DIR/$BASENAME.md"
echo "已複製到 $TARGET_DIR/$BASENAME.md"
