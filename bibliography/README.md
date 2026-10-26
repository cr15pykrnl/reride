# References cited by the papers

Two final BibTeX files retain 19 metadata-verified references from 20 published
reference slots. One unresolved reference is documented below and excluded from
the reusable BibTeX files.

Use the two `.bib` files as the reusable metadata set. A verified identity does
not establish that the work supports a particular scientific claim. Read it
before reuse.

## Files

- [reride2017-verified.bib](reride2017-verified.bib)
- [reride2019-verified.bib](reride2019-verified.bib)

Original reference numbers remain in citation keys and entry comments. Each entry
records its metadata-verification source in a BibTeX comment. Corrections and the
one excluded reference are documented here; no separate CSV index is required.

## Sources and method

Reviewed 26 October 2026 using the publication DOI landing pages, publisher-
deposited reference arrays from the Crossref REST API and primary publisher,
proceedings, university, government, arXiv or explicitly identified ISBN catalog records. DOI landing-page requests
to ACM and some other publishers were blocked; their deposited reference metadata
provides membership evidence rather than a claim that their full text was read.
Decarbon and VisualMath reference lists were additionally checked against locally
available published editions. Recovered bibliography metadata was used only after
matching it to a published reference slot; uncited manuscript entries are excluded.

DOI metadata was retrieved with `curl -sSL` from
`https://api.crossref.org/works/<doi>` and matched by identifier and title.
Malformed identifiers and conflicting dates/editions are documented below.
BibTeX syntax is checked with `bibtex` using the `plain` style and every key.
Files are split into at most 25 entries to respect the shared source-size limit.
Cross-paper duplicates remain in their separate paper lists; deduplicate by DOI
when combining lists. Citation keys are stable paper/reference-number identifiers.

The bibliography contains citation metadata only. Manuscripts, PDFs, private
archive paths and abstract text are excluded. Verification concerns bibliographic
identity, not study validity, replication or support for a future claim.

## Remaining review

- TEI 2019 reference 4 (`reride2019_ref004`) is excluded from the final `.bib` files. The publisher supplies only ACM identifier `10.5555/3021319.3021331`; its exact identity remains unconfirmed. The former placeholder contained no identified work. Source: https://dl.acm.org/doi/10.5555/3021319.3021331. Resolve its identity before adding it as a reference.

## Recorded corrections and version choices

- `reride2019_ref001`: Publisher reference calls this a PhD dissertation; the university thesis cover identifies a master’s thesis.
- `reride2019_ref009`: ACM identifier is not in Crossref. Book identity and the 2001 hardcover edition checked on MIT Press.
- `reride2017_ref001`: Corrected reversed deposited given/family names to Tomas Sokoler and Suraj Baadkar, consistent with the published reference and their other publications.
- `reride2019_ref003`: Book title corrected to Human-Computer Interaction – INTERACT 2017; Lecture Notes in Computer Science retained as series, volume 10516, checked on Springer.
- `reride2019_ref014`: Book title corrected to Human-Computer Interaction - INTERACT 2017; Lecture Notes in Computer Science retained as series, volume 10514, checked on Springer.
