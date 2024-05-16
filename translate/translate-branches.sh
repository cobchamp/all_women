#!/bin/bash

languagecodes=("fr" "jp" "cn" "de" "es" "it" "nl" "ru" "ko" "cn-trad" "fr-can")
dir=$(dirname "$0")

cd $dir
for lang in "${languagecodes[@]}"; do
  python3 "make-git-branch.py" $lang && git push origin $lang --force
done
cd -