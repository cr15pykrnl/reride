# Graphical abstract review, version 1

These 4:3 candidates are prepared for owner feedback. The previously selected
figure remains in place. Paper titles/authors/DOIs stay outside the artwork.

## Refined brief

Prepare one abstract for the implemented 2017 platform, one for the 2019 BANk architecture/modules, and a project overview showing their relationship across before/during/after commuting. Keep evidence and development scope specific to each paper.

Use source-supported categories and results, a 240 × 180 mm canvas, 9 pt native
labels and precise black linework. Preserve distinctions between demonstrations,
qualitative observations, simulations and measured outcomes. No paper PDFs are
added to the repository.

## Candidates

- [interact-2017](assets/interact-2017.png), editable source `interact-2017.tex`.
- [tei-2019](assets/tei-2019.png), editable source `tei-2019.tex`.
- [project](assets/project.png), editable source `project.tex`.

## Source evidence

INTERACT 2017, sections 2–4 and figures 1–2: two square FSRs, Genuino, Bluetooth, live dashboard, remote retrieval; source reports 1024 sensor levels and four feedback segments. TEI 2019, figures 2 and 5–8: six seat-pressure sites, four upper-body fiducials, Raspberry Pi sensing and central modules, WebSockets, and changing-shape feedback. The project view shows an architectural extension, not pooled validation.

The existing accepted label-free raster artwork is reused through TikZ viewports, with its proportions preserved; pixels are not edited or upscaled. Markers, sensors, UI glyphs and aggregate paths are native geometry. UI traces are schematic, not ride measurements. Dashed camera arrow denotes optical observation. Full integration, evaluation with ride data and an LSTM model were future work in the 2019 paper. No posture accuracy, clinical benefit or measured behaviour change is invented.

Sources: https://doi.org/10.1007/978-3-319-68059-0_43, https://doi.org/10.1145/3294109.3300986.
Source values, conditions, transformations and input/output hashes are recorded
in `provenance.json` and, where numeric values are replotted, `reported-results.csv`.
Existing reused artwork retains its original resolution and generation provenance
in the selected figure's original source directory.

## Rebuild and review

With TeX, Ghostscript, Poppler and a sibling research-ops checkout, run from the
repository root (replace NAME with a candidate stem above):

```sh
python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
  figures/review-v1/NAME.tex --out-dir .local/abstract-review-v1 \
  --build-dir .local/abstract-review-build
```

The current renderer defaults to 2400 × 1800 output and 960 × 720 review for this
physical 4:3 page. PNGs are selected review exports; PDFs and logs stay ignored.
Keep the 4:3 geometry when adjusting individual panels. Re-render and inspect
labels, numeric scales, counts and arrow endpoints after changes. These are
first review compositions, not a claim of venue-specific submission compliance.
