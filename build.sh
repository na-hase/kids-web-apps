#!/usr/bin/env bash
set -euo pipefail
rm -rf public
cp -R site public
mkdir -p public/dobutsu-touch/audio public/ponpon-touch
fetch(){ curl -fsSL --retry 4 --retry-delay 2 "$1" -o "$2"; }
# PWA icons
fetch "https://dobutsu-touch-production.up.railway.app/icon-192.png" "public/dobutsu-touch/icon-192.png"
fetch "https://ponpon-touch-production.up.railway.app/icon-192.png" "public/ponpon-touch/icon-192.png"
fetch "https://ponpon-touch-production.up.railway.app/icon-512.png" "public/ponpon-touch/icon-512.png"
# Real animal sounds are copied into the Cloudflare deployment, so app traffic is served by Cloudflare.
fetch "https://dobutsu-touch-production.up.railway.app/audio/dog.wav" "public/dobutsu-touch/audio/dog.wav"
fetch "https://dobutsu-touch-production.up.railway.app/audio/cat.wav" "public/dobutsu-touch/audio/cat.wav"
fetch "https://dobutsu-touch-production.up.railway.app/audio/cow.wav" "public/dobutsu-touch/audio/cow.wav"
fetch "https://dobutsu-touch-production.up.railway.app/audio/bird.wav" "public/dobutsu-touch/audio/bird.wav"
fetch "https://dobutsu-touch-production.up.railway.app/audio/elephant.mp3" "public/dobutsu-touch/audio/elephant.mp3"
fetch "https://dobutsu-touch-production.up.railway.app/audio/monkey.wav" "public/dobutsu-touch/audio/monkey.wav"
fetch "https://dobutsu-touch-production.up.railway.app/audio/lion.wav" "public/dobutsu-touch/audio/lion.wav"
echo "Built $(find public -type f | wc -l) files"