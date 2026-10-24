# ReRide graphical abstract

The plate connects rider posture sensing with feedback during motorcycle
commuting and data for later reflection, keeping the two publications distinct:

- [INTERACT 2017](https://doi.org/10.1007/978-3-319-68059-0_43), sections 2–4
  and figures 1–2: two square force-sensitive resistors, Genuino, Bluetooth,
  dashboard history/ride summary and remote storage.
- [TEI 2019](https://doi.org/10.1145/3294109.3300986), figures 2, 5, 7–8:
  six seat-pressure sites, four upper-body fiducials, Raspberry Pi sensing
  modules, central processing, WebSockets and changing-shape posture feedback.

The 2017 paper presents an implemented demonstration. The 2019 paper presents
BANk and module development, with full integration, ride-data studies and an
LSTM model identified as future work. The simplified 2019 path omits remote
storage to focus on on-ride feedback.

Hardware, fiducial patterns and screen glyphs are conceptual illustrations.
Arrows show aggregate data paths, not electrical wiring. Circular pressure sites
indicate sensing locations rather than literal sensor outlines. The figure
contains no measured ride data, validated posture accuracy or health outcomes.
Illustration was generated with an image tool; labels, sensing sites, fiducials,
screen content and connections are editable TikZ geometry.

## Files and build

`reride.tex` and `artwork-original.png` are the authoring inputs. The paper
figures informed the concept and are not bundled. The selected outputs are
[PNG](../../assets/reride.png) and [PDF](../../assets/reride.pdf).

With TeX (TikZ, standalone and Helvetica-compatible fonts), Ghostscript,
Poppler, Python 3 and a sibling research-ops checkout, run:

```sh
sh figures/reride/build.sh
```

The build checks native 9 pt labels and page bounds, then exports a grayscale
2200 × 1100 PNG and a 2:1 PDF. Temporary files and a 900 × 450 review image stay
in ignored local storage. The PDF combines 1690 × 931 raster artwork with vector
annotations; the larger export does not add detail to the source artwork.
Inspect full-size and README-size renders after changes.
