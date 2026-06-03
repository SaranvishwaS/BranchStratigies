#!/usr/bin/env bash

set -euo pipefail

BRANCH_NAME="$1"

PATTERN='^(feature|bugfix|hotfix)/[a-zA-Z0-9._-]+$'

echo "Checking branch name: $BRANCH_NAME"

if [[ "$BRANCH_NAME" =~ $PATTERN ]]; then
    echo "✅ Valid branch name: $BRANCH_NAME"
    exit 0
else
    echo "❌ Invalid branch name: $BRANCH_NAME"
    echo ""
    echo "Allowed formats:"
    echo "  feature/<description>"
    echo "  bugfix/<description>"
    echo "  hotfix/<description>"
    exit 1
fi


