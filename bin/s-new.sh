#!/usr/bin/sh

set -e

operation=$1
parameter=$2

case "$operation" in
  "add")
    git add .
    [[ -n "$parameter" ]] && git commit -m "$parameter"
    ;;
  "create")
    [[ -n "$parameter" ]] && git checkout -b $parameter || echo "please provide branch name to create"
    ;;
  "push")
    if [[ -n "$parameter" ]]; then
      git add .
      git commit -m "$parameter"
    fi
    currentBranch=$(git rev-parse --abbrev-ref HEAD)
    git push -u origin $currentBranch
    ;;
  *)
    [[ -z "$operation" ]] && git status && exit 0
    git fetch
    git checkout $operation
    git pull
    ;;
esac
