#!/usr/bin/env bash

directory="$HOME/.config/nChain/links"

for file in "$directory"/*; do
    filename=$(basename "$file")

    if [[ "$filename" = "default"* ]]; then
        continue 
    fi

    if [[ "$filename" == *"-LEFT"* ]]; then
        new_filename="${filename//-LEFT/}"
        nChain -t "$new_filename"
    else
        new_filename="${filename}-LEFT"
        nChain -t "$new_filename"
    fi
done
