#!/bin/bash

if [ ! -f pubspec.yaml ]; then
    echo "pubspec.yaml not found"
    exit 1
fi

current_version=$(grep "version:" pubspec.yaml | sed 's/version: //')
echo "Current version: $current_version"

base_version=$(echo $current_version | cut -d'+' -f1)
build_number=$(echo $current_version | cut -d'+' -f2)

if [ "$base_version" == "$build_number" ]; then
    new_version="${base_version}+1"
else
    new_build_number=$((build_number + 1))
    new_version="${base_version}+${new_build_number}"
fi

echo "New version: $new_version"

sed "s/version: $current_version/version: $new_version/" pubspec.yaml > pubspec.yaml.tmp && mv pubspec.yaml.tmp pubspec.yaml

echo "Updated pubspec.yaml"
