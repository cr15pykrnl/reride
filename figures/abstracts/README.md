# Graphical abstracts

The 2017 demonstration makes seat-pressure history available during and after a ride; the 2019 modular design combines pressure and camera geometry for contextual posture feedback.

## Figures

- [interact-2017](assets/interact-2017.svg): editable source `interact-2017.tex`.
- [tei-2019](assets/tei-2019.svg): editable source `tei-2019.tex`.
- [project](assets/project.svg): editable source `project.tex`.

## Scientific evidence

INTERACT 2017, pages 421-422: two under-seat force-sensitive resistors feed a Genuino microcontroller, Bluetooth Low Energy dashboard and mobile-internet remote storage. Integer readings 0-1023 are divided into four equal bins; dashboard views show the past three minutes and whole-ride pressure variation with duration. TEI 2019, pages 445-449: six seat force-sensitive resistors and two analog-to-digital converters, a camera tracking four reference markers (helmet/head top, chin, both shoulders), separate Raspberry Pi modules and a central Raspberry Pi connected through WebSockets. Relative upper-body geometry and seat-load distribution describe forward/back and left/right lean, shoulder tilt and head stoop. Contour feedback compares current posture to a reference, with duration/history relevant to interpretation.

The 2017 bins are pressure-reading intervals, not posture classes. Pattern fills are a new monochrome explanatory key, not a claim about the original interface appearance. Traces, contours and hardware drawings are schematic. The 2019 paper reports modules and a design; full integration, riding evaluation and learning remain proposed future work in that paper. The project overview does not pool evaluation results or claim health efficacy. Four markers are camera-tracked reference points, not four additional sensors.

Publication links: https://doi.org/10.1007/978-3-319-68059-0_43, https://doi.org/10.1145/3294109.3300986.

## Build and inspect

Requirements: Python 3, TeX/TikZ, Helvetica-compatible fonts, Ghostscript, Poppler
and a sibling research-ops checkout. Quantitative figures additionally require
gnuplot with the cairolatex terminal (tested with gnuplot 6.0.3). `GNUPLOT` can
select a compatible executable.

From the repository root:

```sh
sh figures/abstracts/build.sh
```

The script regenerates the selected SVGs and anti-aliased PNG fallbacks. Generated PDF intermediates, native
gnuplot exports and compiler logs stay in ignored `.local/figures/`; remove that
folder after checking the outputs. The published package retains editable TikZ,
plot scripts/data, required artwork, source evidence and checksums.

Abstracts use a 240 × 180 mm canvas and export at 2400 × 1800 px (4:3), with
960 × 720 px review views during builds. All native labels are 9 pt
Helvetica-compatible. Artwork and native labels remain black on white. PNG fallbacks use anti-aliased
greyscale edges; no one-bit threshold is applied. Original artwork inputs remain intact.
Informational dots, hatches, dash styles and markers encode categories.

Inspect full-size and README-size renders after editing. Check scientific
meaning, units, marker counts, label clearance, padding, legend scope and
bottom-right citations. A faithful replot is not an independent reproduction.
No publisher figures or manuscript PDFs are included, and no new asset reuse
license is asserted. Source data and illustrative content remain distinct.

## Selected export formats

The project README embeds the anti-aliased PNG with an opaque white background
for visibility in light and dark themes. Clicking the preview opens its SVG. PDF intermediates stay in ignored local storage;
no PDFs are published. Poppler's `pdftocairo` is required for SVG export.

These SVGs combine scalable native labels/connectors with the original embedded
bitmap illustrations. Those illustrations retain their resolution limit; exporting
SVG does not vectorize them.

PNG fallbacks: [interact-2017](assets/interact-2017.png) · [project](assets/project.png) · [tei-2019](assets/tei-2019.png)

The owner reconfirmed the embedded-PNG illustration version on 26 October 2026.
Tracing, centreline conversion and manual redraw trials were not selected. The
normal build continues to use the original illustration PNGs.
