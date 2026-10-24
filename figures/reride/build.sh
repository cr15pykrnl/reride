#!/bin/sh
# Run from any directory; requires a sibling research-ops checkout.
set -eu
cd "$(dirname "$0")/../.."
python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
  figures/reride/reride.tex --width 2200 --out-dir assets \
  --build-dir .local/figure-build
# Use exact pixel bounds: the central renderer currently scales from rounded
# pdftohtml page dimensions. The PDF itself has the correct 2:1 page geometry.
for spec in '2200 1100 assets/reride.png' \
            '900 450 .local/figure-build/reride/review.png'; do
  set -- $spec
  gs -q -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pnggray \
    -dTextAlphaBits=4 -dGraphicsAlphaBits=4 \
    -dFirstPage=1 -dLastPage=1 -dFIXEDMEDIA -dPDFFitPage \
    "-g${1}x${2}" -r227.01 "-sOutputFile=$3" assets/reride.pdf
done
