#!/bin/sh
set -eu
repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)
cd "$repo_root"
mkdir -p .local/figures/export .local/figures/build figures/abstracts/assets
for name in interact-2017 tei-2019 project; do
  python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
    "figures/abstracts/$name.tex" --out-dir .local/figures/export \
    --build-dir .local/figures/build --bilevel
  cp ".local/figures/export/$name.png" "figures/abstracts/assets/$name.png"
done
