#!/bin/bash

if [ ! -f CHANGELOG.md ]; then
    touch CHANGELOG.md
fi

version=$(grep "version:" pubspec.yaml | sed 's/version: //')
date=$(date +%Y-%m-%d)

echo "## $version ($date)" > temp_changelog.md
git log --pretty=format:"- %s" -n 10 >> temp_changelog.md
echo "" >> temp_changelog.md
echo "" >> temp_changelog.md
cat CHANGELOG.md >> temp_changelog.md
mv temp_changelog.md CHANGELOG.md

echo "Changelog updated"
