# Terracotta3D: Evaluation Records

Test protocol and results for the Terracotta3D repository, a FAIR-oriented 3D digital heritage repository of 18 terracotta temples of Bishnupur, West Bengal, India. The repository is built on Omeka S and combines an interactive 3D viewer, standards-based metadata, a map interface, keyword search and a natural-language search supported by GPT-OSS 20B through the Model Context Protocol (MCP).

This page supports Section 5 (System Testing and Evaluation) of the manuscript **Designing a FAIR-Oriented 3D Digital Heritage Repository: A Case Study of the Terracotta Temples of Bishnupur, West Bengal**. The manuscript summarises the outcomes; this page holds the full tables, query lists and screenshots.

Live repository: <http://94.103.163.196/omeka/s/terracotta/page/Home>


## Scope of the evaluation

The tests are **functional verification checks** conducted on **28 October 2026** (28.10.2026) on a prototype repository holding 18 records. Each check was recorded as **Pass** or **Fail** by the author, and expected results were fixed before testing. Precision, recall and other ranked-retrieval measures were **not computed**, because they are not informative for a collection of this size. No independent relevance judgments or user study were conducted.

## Test environment

| Item | Detail |
| --- | --- |
| Tested on | HP laptop, Windows 11 |
| Browser | Google Chrome, version 156.0.8078.48 (load times from Chrome DevTools Network Timing) |
| Network | Speed test at the testing location: 32.46 Mbps download, 7.67 Mbps upload, 35 ms ping (latency under load 231 ms download, 839 ms upload); connection type: Jio 5G mobile hotspot |
| Test date | 28 October 2026 (28.10.2026) |
| Server | Ubuntu cloud VPS, 2-core CPU, 4 GB RAM |
| Platform | Omeka S with the Heritage Object resource template (21 fields) |
| NLP search model | GPT-OSS 20B through MCP |

## Summary

| Component | Test | Outcome |
| --- | --- | --- |
| 3D model accessibility | GLB model loaded in viewer | 18/18 passed |
| Visual interaction | Viewer controls on each record | 18/18 passed for every control |
| Metadata completeness | 21 template fields per record | 378/378 fields populated (100%) |
| Geospatial discovery | Marker vs verified coordinates | 18/18 correct |
| Keyword search | Predefined queries | 5/5 passed |
| NLP-enabled search | Natural-language queries | 9/9 passed |

## 1. 3D model accessibility

**Procedure.** The accessibility of the 3D models was evaluated using Chrome DevTools Network Timing. Each temple record was opened and its GLB model loaded in the viewer. Load time was recorded as the request duration of the model file from Network Timing. As noted, these measurements represent individual network request durations rather than complete model-rendering times. The successful loading of all 18 models and the functionality of the interactive viewer was independently verified.

**Result.** 18/18 models loaded and displayed successfully. Request duration ranged from 19.74 s to ~90 s (mean 40.65 s, median 30.32 s). The variation indicates differences in the time required to retrieve the requested model files over the network connection. GLB file size: min 50.95 MB (Nandalal Temple), max 97.58 MB (Radha Govinda Temple), mean 70.24 MB, median 70.92 MB (1 MB = 1,000,000 bytes).

| # | Omeka item ID | Temple | Loaded and displayed | Request duration (s) | GLB file size (MB) |
| --- | --- | --- | --- | --- | --- |
| 1 | 116 | Rasmancha | Pass | 27.18 | 69.77 |
| 2 | 118 | Shyamrai Temple | Pass | 51.10 | 73.39 |
| 3 | 119 | Jor Bangla Temple | Pass | 85.29 | 79.77 |
| 4 | 120 | Madan Mohan Temple | Pass | 25.62 | 69.40 |
| 5 | 121 | Stone Chario | Pass | 39.20 | 71.52 |
| 6 | 122 | Nandalal Temple | Pass | 19.74 | 50.95 |
| 7 | 123 | Radha Shyam Temple | Pass | 23.90 | 62.08 |
| 8 | 124 | Lalji Temple | Pass | 22.48 | 61.97 |
| 9 | 125 | Murali Mohan Temple | Pass | 30.52 | 71.31 |
| 10 | 126 | Madan Gopal Temple | Pass | 30.12 | 70.53 |
| 11 | 127 | Malleswar Temple | Pass | 29.70 | 70.35 |
| 12 | 128 | Radha Madhab Temple | Pass | 21.15 | 51.95 |
| 13 | 129 | Kalachand Temple | Pass | 28.45 | 70.06 |
| 14 | 130 | Patpur Temple | Pass | 69.40 | 75.28 |
| 15 | 131 | Ruined Deul Temple | Pass | 44.80 | 72.56 |
| 16 | 132 | Jor Mandir | Pass | 58.70 | 74.49 |
| 17 | 133 | Radha Govinda Temple | Pass | 89.85 | 97.58 |
| 18 | 134 | Radha Binod Temple | Pass | 34.50 | 71.34 |

## 2. Visual interaction (viewer controls)

**Procedure.** Each control was tested manually on every record. Outcomes: Pass, Fail, or Not available. Screenshots of the initial, rotated and zoomed views are in `screenshots/viewer/`.

**Result.** All controls passed on all 18 records.

| # | Temple | Rotate | Zoom in/out |
| --- | --- | --- | --- |
| 1 | Rasmancha | Pass | Pass |
| 2 | Shyamrai Temple | Pass | Pass |
| 3 | Jor Bangla Temple | Pass | Pass |
| 4 | Madan Mohan Temple | Pass | Pass |
| 5 | Stone Chario | Pass | Pass |
| 6 | Nandalal Temple | Pass | Pass |
| 7 | Radha Shyam Temple | Pass | Pass |
| 8 | Lalji Temple | Pass | Pass |
| 9 | Murali Mohan Temple | Pass | Pass |
| 10 | Madan Gopal Temple | Pass | Pass |
| 11 | Malleswar Temple | Pass | Pass |
| 12 | Radha Madhab Temple | Pass | Pass |
| 13 | Kalachand Temple | Pass | Pass |
| 14 | Patpur Temple | Pass | Pass |
| 15 | Ruined Deul Temple | Pass | Pass |
| 16 | Jor Mandir | Pass | Pass |
| 17 | Radha Govinda Temple | Pass | Pass |
| 18 | Radha Binod Temple | Pass | Pass |

## 3. Metadata completeness

**Procedure.** Each record was checked against the 21-field Heritage Object template. A field counts as complete if it is present and populated.

**Result.** 378 of 378 expected field instances were populated (18 records x 21 fields = 100%). This confirms field presence only; it does not verify the accuracy of values or conformance to controlled vocabularies.

| # | Temple | Fields populated | Fields expected | Result |
| --- | --- | --- | --- | --- |
| 1 | Rasmancha | 21 | 21 | Pass |
| 2 | Shyamrai Temple | 21 | 21 | Pass |
| 3 | Jor Bangla Temple | 21 | 21 | Pass |
| 4 | Madan Mohan Temple | 21 | 21 | Pass |
| 5 | Stone Chario | 21 | 21 | Pass |
| 6 | Nandalal Temple | 21 | 21 | Pass |
| 7 | Radha Shyam Temple | 21 | 21 | Pass |
| 8 | Lalji Temple | 21 | 21 | Pass |
| 9 | Murali Mohan Temple | 21 | 21 | Pass |
| 10 | Madan Gopal Temple | 21 | 21 | Pass |
| 11 | Malleswar Temple | 21 | 21 | Pass |
| 12 | Radha Madhab Temple | 21 | 21 | Pass |
| 13 | Kalachand Temple | 21 | 21 | Pass |
| 14 | Patpur Temple | 21 | 21 | Pass |
| 15 | Ruined Deul Temple | 21 | 21 | Pass |
| 16 | Jor Mandir | 21 | 21 | Pass |
| 17 | Radha Govinda Temple | 21 | 21 | Pass |
| 18 | Radha Binod Temple | 21 | 21 | Pass |
| | **Total** | **378** | **378** | **100%** |

## 4. Geospatial discovery

**Procedure.** The marker position plotted on the Leaflet map interface was compared against ground-truth verified coordinates. Offsets were calculated as great-circle distances using the Haversine formula between the repository coordinates and verified coordinates.

**Result.** 18/18 markers were plotted on the correct structure. Offsets ranged from 0.05 m to 608.88 m (mean 49.22 m, median 12.13 m; 16 of 18 records had offsets under 30 m).

| # | Omeka item ID | Temple | Original latitude | Original longitude | Verified latitude | Verified longitude | Marker on correct structure | Offset (m) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 116 | Rasmancha | 23°04′06.29″ N | 87°19′19.33″ E | 23°04′18.15125″ N | 87°19′36.44350″ E | Pass | 608.88 |
| 2 | 118 | Shyamrai Temple | 23°04′15.90″ N | 87°19′26.68″ E | 23°04′16″ N | 87°19′27″ E | Pass | 9.60 |
| 3 | 119 | Jor Bangla Temple | 23°04′18.17″ N | 87°19′36.47″ E | 23°04′18.15125″ N | 87°19′36.44350″ E | Pass | 0.95 |
| 4 | 120 | Madan Mohan Temple | 23°04′50.66″ N | 87°19′24.48″ E | 23°04′50.50747″ N | 87°19′24.94999″ E | Pass | 14.16 |
| 5 | 121 | Stone Chario | 23°04′31.57″ N | 87°19′33.76″ E | 23.075436 N | 87.326044 E | Pass | 0.05 |
| 6 | 122 | Nandalal Temple | 23°03′41.26″ N | 87°19′22.88″ E | 23°03′40.67413″ N | 87°19′22.82045″ E | Pass | 18.18 |
| 7 | 123 | Radha Shyam Temple | 23°04′21.02″ N | 87°19′35.16″ E | 23°04′20.85661″ N | 87°19′35.04274″ E | Pass | 6.05 |
| 8 | 124 | Lalji Temple | 23°04′24.24″ N | 87°19′37.18″ E | 23°04′24.11″ N | 87°19′37.02″ E | Pass | 6.07 |
| 9 | 125 | Murali Mohan Temple | 23°04′56.04″ N | 87°19′03.54″ E | 23°04′55.37″ N | 87°19′03.85″ E | Pass | 22.49 |
| 10 | 126 | Madan Gopal Temple | 23°04′36.25″ N | 87°18′42.99″ E | 23°04′35.41″ N | 87°18′42.75″ E | Pass | 26.83 |
| 11 | 127 | Malleswar Temple | 23°04′47.97″ N | 87°19′12.83″ E | 23°04′47.51″ N | 87°19′12.66″ E | Pass | 15.01 |
| 12 | 128 | Radha Madhab Temple | 23°03′35.34″ N | 87°19′28.68″ E | 23°03′34.6″ N | 87°19′28.28″ E | Pass | 25.53 |
| 13 | 129 | Kalachand Temple | 23°03′33.17″ N | 87°19′33.11″ E | 23°03′33.17″ N | 87°19′29.96″ E | Pass | 89.52 |
| 14 | 130 | Patpur Temple | 23°04′31.26″ N | 87°20′13.90″ E | 23.075138 N | 87.337195 E | Pass | 23.57 |
| 15 | 131 | Ruined Deul Temple | 23°04′25.36″ N | 87°19′30.97″ E | 23.073712 N | 87.325269 E | Pass | 0.11 |
| 16 | 132 | Jor Mandir | 23°03′36.53″ N | 87°19′18.56″ E | 23°03′36.69″ N | 87°19′18.87″ E | Pass | 10.10 |
| 17 | 133 | Radha Govinda Temple | 23°03′36.39″ N | 87°19′23.31″ E | 23°03′36.18″ N | 87°19′23.45″ E | Pass | 7.61 |
| 18 | 134 | Radha Binod Temple | 23°04′50.87″ N | 87°19′39.76″ E | 23°04′50.84″ N | 87°19′39.79″ E | Pass | 1.26 |

## 5. Keyword search

**Procedure.** Predefined queries were executed against the Omeka S fulltext search interface (`item?fulltext_search=...`), covering exact monument names, multi-word temple names, and architectural descriptive terms (e.g. *Ekaratna* style). The expected records were defined beforehand based on repository holdings and descriptive metadata. A query passes if the expected target records are successfully retrieved in the result set.

**Result.** 5/5 queries passed (all target records retrieved).

| # | Query | Expected record | Observed result | Status | Evidence screenshot |
| --- | --- | --- | --- | --- | --- |
| 1 | Rasmancha | Rasmancha | Rasmancha appears in the results, along with Stone Chario. | Pass | [`01-keyword-rasmancha.png`](file:///screenshots/keyword/01-keyword-rasmancha.png) |
| 2 | Jor Bangla Temple | Jor Bangla Temple | The exact query `jor bangla` returns Jor Bangla Temple and Jor Mandir. | Pass | [`02-keyword-jorbangla.png`](file:///screenshots/keyword/02-keyword-jorbangla.png) |
| 3 | Madan Mohan Temple | Madan Mohan Temple | Madan Mohan Temple appears at Rank 1. | Pass | [`03-keyword-madanmohan.png`](file:///screenshots/keyword/03-keyword-madanmohan.png) |
| 4 | Shyam Rai Temple | Shyamrai Temple | The query `shyamrai` returns Shyamrai Temple, whose description identifies it as the Shyam Rai Temple. | Pass | [`04-keyword-shyamrai.png`](file:///screenshots/keyword/04-keyword-shyamrai.png) |
| 5 | Ekaratna | Temples built in Ekaratna style | Patpur Temple and Murali Mohan Temple were returned in the original test. Patpur Temple's description explicitly identifies it as an Ekaratna temple. | Pass | [`05-keyword-ekaratna.png`](file:///screenshots/keyword/05-keyword-ekaratna.png) |

All full-size search interface captures are archived under [`screenshots/keyword/`](file:///screenshots/keyword/).

## 6. NLP-enabled search

**Procedure.** 9 natural-language queries covering structured field retrieval, metadata completeness audits, digital asset inspection, spatial proximity calculations, architectural comparisons, thematic iconography filtering, and cross-collection historical synthesis were submitted to GPT-OSS 20B through the Model Context Protocol (MCP) integration with the Omeka S server. Expected answers and records were defined beforehand by the author. Each query was evaluated on whether the LLM correctly queried the Omeka MCP tools and synthesised the expected records.

**Result.** 9/9 queries returned the expected records, metadata values, or analytical answers (100% pass rate).

| # | Natural-language query | Query type / Expected result | Model response summary (MCP + GPT-OSS 20B) | Result | Evidence screenshot |
| --- | --- | --- | --- | --- | --- |
| 1 | Find records related to Rasmancha in Bishnupur | Record retrieval (Rasmancha, ID 116) | Returned Rasmancha (ID 116) with item URL and metadata summary | Pass | [`01-rasmancha-retrieval.png`](file:///screenshots/nlp/01-rasmancha-retrieval.png) |
| 2 | Show me the creator, date, location, description, and identifier of Jor Mandir | Specific metadata field extraction (Jor Bangla / Jor Mandir) | Correctly returned structured table with Creator (King Raghunath Singha), Date (1655 CE), Location with coordinates, Description, and ARK identifier (`ark:/99999/tc081pk45`) for item 119 | Pass | [`02-jor-mandir-metadata.png`](file:///screenshots/nlp/02-jor-mandir-metadata.png) |
| 3 | Which temple records have missing metadata? | Metadata quality audit across collection | Checked all 18 temple records (IDs 116, 118, 119, 121–134) against core template properties and correctly concluded 0 missing metadata fields | Pass | [`03-metadata-audit.png`](file:///screenshots/nlp/03-metadata-audit.png) |
| 4 | Show me the available digital assets for Patpur Temple | Digital asset inspection (Item 130) | Correctly identified 3D GLB model with vertex count (1.02M), polygon count (1.92M), capture date, and processing provenance; confirmed no video/extra assets | Pass | [`04-patpur-assets.png`](file:///screenshots/nlp/04-patpur-assets.png) |
| 5 | Find temples within 2 kilometres of Rasmancha. | Spatial proximity calculation (Geodesic distance from 23°04′06.29″ N, 87°19′19.33″ E) | Calculated distances to nearby monuments (Shyamrai ~0.4 km, Jor Bangla ~0.5 km, Lalji ~0.5 km, Nandalal ~0.8 km, etc.) within the 2 km radius | Pass | [`05-proximity-rasmancha.png`](file:///screenshots/nlp/05-proximity-rasmancha.png) |
| 6 | Which temples are closest to Radha Govinda Temple? | Relative geospatial proximity (from 23°03′36.39″ N, 87°19′23.31″ E) | Identified the two Jor Mandir entries (ID 132) as very nearest (~0.13 km / ~130 m away); next closest identified as Nandalal (~0.84 km), Kalachand (~0.89 km), and Radha Madhab (~0.91 km), all within roughly 0.9 km | Pass | [`06-proximity-radhagovinda.png`](file:///screenshots/nlp/06-proximity-radhagovinda.png) |
| 7 | Compare the architectural features of Radha Binod Temple and Jor Mandir | Cross-record architectural comparison | Produced a side-by-side comparative table: Construction date (1659 CE vs 1726 CE), Style (*Atchala* vs *Ek-Ratna* group), Material (laterite with stucco), Roof type, and Dimensions | Pass | [`07-architecture-comparison.png`](file:///screenshots/nlp/07-architecture-comparison.png) |
| 8 | Which temples have documented terracotta reliefs depicting scenes from the Ramayana? | Thematic iconography / narrative scene filter | Identified and summarised Ramayana narrative reliefs on Shyamrai (ID 118), Jor Bangla (ID 119), Kalachand (ID 129), Radha Madhab (ID 128), and Jor Mandir (ID 132) | Pass | [`08-ramayana-reliefs.png`](file:///screenshots/nlp/08-ramayana-reliefs.png) |
| 9 | Summarise the historical significance of the catalogued temples | Multi-record historical synthesis | Synthesised historical significance across Malla dynasty heritage: Rasmancha (unique stepped-pyramid, Rash festival), Shyamrai (earliest Pancha-Ratna), Jor Bangla (hybrid do-chala/char-chala), Madan Mohan (continuous worship), etc. | Pass | [`09-historical-significance.png`](file:///screenshots/nlp/09-historical-significance.png) |

All model session captures are archived under [`screenshots/nlp/`](file:///screenshots/nlp/).

## Limitations

- Single evaluator, who also built the system; expected results were not verified independently.
- Small collection (18 records) and small query sets.
- Not evaluated: geometric fidelity of the AI-generated 3D models, accuracy of metadata values, user experience, performance under concurrent access.
- The photographs were not captured with a standard photogrammetric protocol (consistent focal length, resolution, camera positions or lighting). The models were generated by AI-assisted image-to-3D software and are not metrically validated digital twins.
- The repository runs on a resource-constrained VPS; behaviour under heavy traffic, large model files or concurrent requests has not been tested.

## Repository contents

```
README.md                                 evaluation protocol and summary (this file)
screenshots/                              audit verification screenshots
├── keyword/                              fulltext keyword search query captures
│   ├── 01-keyword-rasmancha.png
│   ├── 02-keyword-jorbangla.png
│   ├── 03-keyword-madanmohan.png
│   ├── 04-keyword-shyamrai.png
│   └── 05-keyword-ekaratna.png
├── nlp/                                  GPT-OSS 20B + MCP session evidence captures
│   ├── 01-rasmancha-retrieval.png
│   ├── 02-jor-mandir-metadata.png
│   ├── 03-metadata-audit.png
│   ├── 04-patpur-assets.png
│   ├── 05-proximity-rasmancha.png
│   ├── 06-proximity-radhagovinda.png
│   ├── 07-architecture-comparison.png
│   ├── 08-ramayana-reliefs.png
│   └── 09-historical-significance.png
└── viewer/                               WebGL 3D model viewer verification captures
```
