#!/usr/bin/env bash
set -euo pipefail
rm -rf public
cp -R site public
echo "Built $(find public -type f | wc -l) files"
