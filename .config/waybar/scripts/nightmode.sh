#!/usr/bin/env bash

directory="$HOME/.config/nChain/links"

for file in "$directory"/*; do
    filename=$(basename "$file")

    if [[ "$filename" = "default"* ]]; then
        continue
    fi

    if [[ "$filename" == *"-ALT"* ]]; then
        echo "  "
    else
        echo "  "
    fi
done
