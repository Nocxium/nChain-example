#!/usr/bin/env bash

directory="$HOME/.config/nChain/links"

if [ -d "$directory" ]; then
    for file in "$directory"/*; do
        if [ "$(basename "$file")" != "default" ] && [ -f "$file" ]; then
            filename=$(basename "$file")
            filename="${filename^}"
            notify-send -u low "Theme: $filename"
        fi
    done
fi

