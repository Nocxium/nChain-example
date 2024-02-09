#!/usr/bin/env bash

directory="$HOME/.config/nChain/links"

for file in "$directory"/*; do
    filename=$(basename "$file")

    if [[ "$filename" = "default"* ]]; then
        continue
    fi

    if [[ "$filename" == *"-LEFT"* ]]; then
        if [[ ! "$filename" == *"-ALT"* ]]; then
            new_filename="${filename//-LEFT/-ALT-LEFT}"
        else
            new_filename="${filename//-ALT/}"
        fi
    else
        if [[ ! "$filename" == *"-ALT"* ]]; then
            new_filename="${filename}-ALT"
        else
            new_filename="${filename//-ALT/}"
        fi
    fi

    nChain -t "$new_filename"
done
