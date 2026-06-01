#!/usr/bin/env bash

BRANCH_NAME=$1

PATTERN='^(feature|bugfix|hotfix)/.+$'

if [[ "$BRANCH_NAME" =~ $PATTERN ]]; then
    echo "Valid branch name: $BRANCH_NAME"
    exit 0
else
    echo "Invalid branch name: $BRANCH_NAME"
    echo "Allowed:"
    echo "feature/*"
    echo "bugfix/*"
    echo "hotfix/*"
    exit 1
fi