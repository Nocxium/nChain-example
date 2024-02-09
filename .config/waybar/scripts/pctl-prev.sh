#!/usr/bin/env bash

ENABLED=' 󰙣 '
DISABLED=' '

if playerctl status &> /dev/null; then
  echo "$ENABLED"
else
  echo "$DISABLED"
fi
