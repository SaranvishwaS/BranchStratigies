#!/usr/bin/env bash

set -euo pipefail

PACKAGE_NAME=$(jq -r '.name' package.json)

PATTERN='^@[a-z0-9-]+/[a-z0-9-]+$'

echo "Package name: $PACKAGE_NAME"

if [[ "$PACKAGE_NAME" =~ $PATTERN ]]; then
    echo "✅ Valid package name"
    exit 0
else
    echo "❌ Invalid package name: $PACKAGE_NAME"
    echo "Expected format:"
    echo "  @company/package-name"
    exit 1
fi