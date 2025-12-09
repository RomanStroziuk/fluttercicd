#!/bin/bash

if [ ! -f coverage/lcov.info ]; then
    echo "Error: coverage/lcov.info not found. Run 'flutter test --coverage' first."
    exit 1
fi

total_lines=$(grep -c "DA:" coverage/lcov.info)
covered_lines=$(grep "DA:" coverage/lcov.info | grep -v ",0$" -c)

if [ "$total_lines" -eq 0 ]; then
    echo "No code lines found."
    exit 0
fi

percent=$(( 100 * covered_lines / total_lines ))

echo "Coverage: $percent%"

if [ $percent -lt 70 ]; then
    echo "Coverage is below 70%!"
    exit 1
else
    echo "Coverage check passed!"
    exit 0
fi
