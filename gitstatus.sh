#!/usr/bin/bash

BRANCH=$(git branch | grep \* | cut -d ' ' -f2)
DIFFS=($(git rev-list --left-right --count $BRANCH...origin/$BRANCH))
AHEAD=${a[1]}
BEHIND=${a[0]}
STAGED=$(git diff --cached --numstat | wc -l)
CONFLICTS=$(git ls-files -u| wc -l)
MODIFIED=$(git ls-files -m| wc -l)
UNTRACKED=$(git ls-files --others --exclude-standard | wc -l)
