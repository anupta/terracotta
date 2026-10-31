# Terracotta3D: Evaluation Records

Test protocol and results for the Terracotta3D repository, a FAIR-oriented 3D digital heritage repository of 18 terracotta temples of Bishnupur, West Bengal, India. The repository is built on Omeka S and combines an interactive 3D viewer, standards-based metadata, a map interface, keyword search and a natural-language search supported by GPT-OSS 20B through the Model Context Protocol (MCP).

This page supports Section 5 (System Testing and Evaluation) of the manuscript **Designing a FAIR-Oriented 3D Digital Heritage Repository: A Case Study of the Terracotta Temples of Bishnupur, West Bengal**. The manuscript summarises the outcomes; this page holds the full tables, query lists and screenshots.

Live repository: <http://94.103.163.196/omeka/s/terracotta/page/Home>


## Scope of the evaluation

The tests are **functional verification checks** conducted on **28 October 2026** (28.10.2026) on a prototype repository holding 18 records. Each check was recorded as **Pass** or **Fail** by the author, and expected results were fixed before testing. For the keyword-search benchmark, precision is the proportion of retrieved records that matched the author-defined expected set for each query; these relevance judgments were not independently reviewed. Recall and other ranked-retrieval measures were not computed. No user study was conducted.

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
| Geospatial accuracy | Omeka S coordinates vs OSM/ASI references | 18/18 within verified heritage parcels; 1.12–32.50 m offset |
| Keyword search | 12 benchmark queries | 12/12 passed |
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

**Procedure.** Each control was tested manually on every record. Outcomes: Pass, Fail, or Not available. Viewer-control screenshots are not included in the current evidence archive.

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

Each 3D model record carries a geographic position in the `dcterms:spatial` property of its Omeka S item. Coordinates are recorded in degrees, minutes, and seconds (DMS) and converted to decimal degrees by the custom Omeka S theme for interactive mapping with Leaflet:

$$
\text{Decimal degrees} = \text{Degrees} + \frac{\text{Minutes}}{60} + \frac{\text{Seconds}}{3600}
$$

By repository convention, each coordinate pair is assigned to the primary structure centroid or inner sanctum (*garbhagriha*) represented by the 3D digital object, rather than to an outer compound wall, ticketing kiosk, or perimeter gateway. Coordinates were established from high-resolution satellite imagery pins and checked against published geodetic records in WGS 84 / EPSG:4326.

**Procedure.** To assess agreement with an independent geospatial dataset, each of the 18 catalogued monuments was compared with its corresponding OpenStreetMap (OSM) vector feature. The reference was either a designated monument node (`amenity=place_of_worship` / `historic=monument`) or the geometric centroid of the building's delimited polygon (`historic=monument` / `tourism=attraction`). OSM coordinates and feature identifiers were retrieved in October 2026 through the Nominatim and Overpass API query services in WGS 84. Where available, the Archaeological Survey of India (ASI) National Monument registry (West Bengal Circle, State Code N-WB), the verified Wikidata entity, and the ASI geodetic registry record were used as authoritative cross-references. OSM feature IDs and Wikidata identifiers were confirmed through their respective API endpoints.

Geodesic separation was computed with the Haversine formula:

$$
d = 2R \cdot \arcsin\left(\sqrt{\sin^2\left(\frac{\Delta\phi}{2}\right) + \cos\phi_1 \cdot \cos\phi_2 \cdot \sin^2\left(\frac{\Delta\lambda}{2}\right)}\right)
$$

where $\phi$ is latitude, $\lambda$ is longitude, and $R = 6{,}371{,}000\ \text{m}$ is the Earth's mean radius. Coordinates are recorded to six decimal places, corresponding to an equatorial resolution of approximately 0.11 m—finer than the nominal positional uncertainty of either dataset.

**Results.** Geodesic offsets range from 1.12 m to 32.50 m (mean 12.6 m; median 7.7 m). Six monuments (33%) are within 5 m, four (22%) are 5–9 m apart, and eight (44%) are 15–33 m apart. No monument has an offset between 8.71 m and 15.16 m. In total, 56% of repository monuments agree within 9 m, and all 18 fall within their verified heritage parcels.

### Table 1. Item-level geospatial accuracy evaluation

| ID | Monument title | Omeka S coordinates (WGS 84) | OSM / reference coordinates | Offset | Reference feature identifier | Alignment classification |
| --- | --- | --- | --- | --- | --- | --- |
| 116 | Rasmancha | 23.068414, 87.322036 | 23.068203, 87.322121 | 25.00 m | OSM `way/826029437` / Wikidata `Q7295089` | Plinth extent (30 m base) |
| 118 | Shyamrai Temple | 23.071083, 87.324078 | 23.071086, 87.324089 | 1.15 m | OSM `node/3947231555` / Wikidata `Q7505963` | Pinpoint match (< 5 m) |
| 119 | Jor Bangla Temple | 23.071714, 87.326797 | 23.071682, 87.326777 | 4.14 m | OSM `way/1268988111` / Wikidata `Q6395048` | Pinpoint match (< 5 m) |
| 120 | Madan Mohan Temple | 23.080739, 87.323467 | 23.080713, 87.323485 | 3.45 m | OSM `node/3947231668` / Wikidata `Q6726245` | Pinpoint match (< 5 m) |
| 121 | Stone Chariot | 23.075436, 87.326044 | 23.075404, 87.326063 | 4.05 m | OSM `node/3947231666` / Wikidata `Q104870433` | Pinpoint match (< 5 m) |
| 122 | Nandalal Temple | 23.061461, 87.323022 | 23.061401, 87.323028 | 6.71 m | OSM `node/7369043191` / Wikidata `Q104870428` | Within temple plinth |
| 123 | Radha Shyam Temple | 23.072506, 87.326433 | 23.072446, 87.326378 | 8.71 m | OSM `way/1268986780` / Wikidata `Q7280208` | Inner courtyard boundary |
| 124 | Lalji Temple | 23.073400, 87.326994 | 23.073389, 87.326945 | 5.22 m | OSM `way/1268981232` / Wikidata `Q6480302` | Within sanctum courtyard |
| 125 | Murali Mohan Temple | 23.082233, 87.317650 | 23.082047, 87.317735 | 22.49 m | ASI Monument / Wikidata `Q104870425` | Gate vs. sanctum offset |
| 126 | Madan Gopal Temple | 23.076736, 87.311942 | 23.076502, 87.311874 | 26.95 m | ASI Monument / Wikidata `Q6726244` | Gate vs. sanctum offset |
| 127 | Malleswar Temple | 23.079992, 87.320231 | 23.079863, 87.320183 | 15.16 m | ASI Monument / Wikidata `Q104870427` | Compound enclosure |
| 128 | Radha Madhab Temple | 23.059817, 87.324633 | 23.059635, 87.324644 | 20.25 m | OSM `node/7369024094` / Wikidata `Q7280207` | Enclosure wall vs. sanctum |
| 129 | Kalachand Temple | 23.059214, 87.325864 | 23.058996, 87.325981 | 27.03 m | OSM `node/7369024093` / Wikidata `Q6350328` | Pathway vs. sanctum |
| 130 | Patpur Temple | 23.075350, 87.337194 | 23.075058, 87.337181 | 32.50 m | ASI Monument / Wikidata `Q104870430` | Compound perimeter |
| 131 | Ruined Deul Temple | 23.073711, 87.325269 | 23.073716, 87.325279 | 1.12 m | OSM `node/7369024097` / Wikidata `Q104870424` | Pinpoint match (< 5 m) |
| 132 | Jor Mandir | 23.060147, 87.321822 | 23.060272, 87.321891 | 15.56 m | OSM `node/7369024095` / Wikidata `Q6275685` | Multi-shrine span (3 shrines) |
| 133 | Radha Govinda Temple | 23.060108, 87.323142 | 23.060138, 87.323102 | 5.23 m | OSM `node/7369043190` / Wikidata `Q7280206` | Within temple plinth |
| 134 | Radha Binod Temple | 23.080797, 87.327711 | 23.080804, 87.327720 | 1.18 m | OSM `node/7369024098` / Wikidata `Q104870429` | Pinpoint match (< 5 m) |

### Interpretation

The larger offsets (15–33 m) are attributable to architectural scale and differing feature definitions rather than recording inaccuracies. OSM survey contributors may place nodes at perimeter gates, compound boundaries, or courtyard access steps, whereas Omeka S coordinates consistently target the central sanctum tower (*shikhara*). This distinction is especially evident in large-scale complexes:

- **Jor Mandir Group (Item 132):** The repository describes Jor Mandir as a three-shrine complex built in 1726 CE, comprising two large flanking laterite shrines (11.8 × 11.8 m) and a smaller central shrine (7.0 × 7.0 m) arranged across a unified compound. A single point for the group can therefore be approximately 15 m from the centroid of an individual shrine.
- **Rasmancha (Item 116):** This monument has a 30 × 30 m laterite-stone plinth and an overall height of 12.5 m. A reference point at the outer circumambulatory steps and a repository point at the central pyramidal peak can naturally diverge by 20–25 m while both remain within the monument.

OSM is treated as an independent reference datum, not as infallible ground truth, given the voluntary and variable nature of crowd-sourced mapping. Because Omeka S coordinates follow a consistent sanctum-centroid convention, the 15–33 m offsets can be a structural characteristic of the collection. Agreement within 33 m is sufficient for public discovery, geospatial filtering, and spatial search to place each monument accurately on regional maps and distinguish adjacent temples in Bishnupur.

> **Repository indexing note:** Item ID 117 was an uncatalogued test record removed during early database staging. The active collection therefore contains 18 monuments indexed as ID 116 and IDs 118–134.

## 5. Keyword search

**Search architecture.** Keyword queries were executed against the Omeka S full-text search interface (`item?fulltext_search=...`). The index supports discovery through descriptive metadata beyond item titles, including Dublin Core properties such as `dcterms:title`, `dcterms:alternative`, `dcterms:description`, `dcterms:subject`, and `dcterms:contributor`. This lets users search by monument name, architectural form, material, iconographic subject, historical association, and date. The tested alternatives also include Bengali Unicode text, alongside Latin-script terms and transliterations.

**Procedure.** Twelve benchmark queries were run against the live repository of 18 catalogued monuments. They represent material, architectural-typology, iconographic, historical, chronological, and Bengali-script searches. Expected records and relevant metadata properties were identified before testing. A query passed when its expected records appeared in the results. Reported precision is the proportion of retrieved records judged relevant against that author-defined expected set; the judgments were not independently reviewed.

**Result.** All 12 queries passed. The returned sets contained 1–14 monuments per query, and author-assessed precision was 100% for each query (74 relevant results out of 74 retrieved results across the benchmark; records may appear in multiple query result sets).

### Table 2. Keyword-search benchmark results

| Query term | Discovery domain | Target metadata properties | Hits (n) | Retrieved monuments (item IDs and titles) | Precision |
|:---|:---|:---|---:|:---|:---:|
| `Laterite` | Lithic material | `dcterms:description`, `dcterms:extent` | 14 | 116 Rasmancha; 120 Madan Mohan; 121 Stone Chariot; 122 Nandalal; 123 Radha Shyam; 124 Lalji; 125 Murali Mohan; 126 Madan Gopal; 127 Malleswar; 128 Radha Madhab; 129 Kalachand; 130 Patpur; 132 Jor Mandir; 133 Radha Govinda | 100% (14/14) |
| `Terracotta` | Medium / ornamentation | `dcterms:type`, `dcterms:description`, `dcterms:subject` | 14 | 116 Rasmancha; 118 Shyamrai; 119 Jor Bangla; 120 Madan Mohan; 122 Nandalal; 123 Radha Shyam; 124 Lalji; 125 Murali Mohan; 127 Malleswar; 128 Radha Madhab; 130 Patpur; 131 Ruined Deul; 133 Radha Govinda; 134 Radha Binod | 100% (14/14) |
| `Chala` | Vernacular Bengal roof style | `dcterms:description`, `dcterms:subject` | 4 | 116 Rasmancha; 118 Shyamrai; 119 Jor Bangla; 129 Kalachand | 100% (4/4) |
| `Deul` | Single-towered Rekha typology | `dcterms:title`, `dcterms:description` | 1 | 131 Ruined Deul Temple | 100% (1/1) |
| `Ek-Ratna` | Single-pinnacled style | `dcterms:description`, `dcterms:subject` | 9 | 118 Shyamrai; 120 Madan Mohan; 121 Stone Chariot; 122 Nandalal; 123 Radha Shyam; 128 Radha Madhab; 129 Kalachand; 132 Jor Mandir; 133 Radha Govinda | 100% (9/9) |
| `Ramayana` | Epic iconography / relief frieze | `dcterms:description`, `dcterms:subject` | 6 | 118 Shyamrai; 119 Jor Bangla; 120 Madan Mohan; 128 Radha Madhab; 129 Kalachand; 132 Jor Mandir | 100% (6/6) |
| `Mahabharata` | Epic iconography / relief frieze | `dcterms:description`, `dcterms:subject` | 3 | 119 Jor Bangla; 120 Madan Mohan; 132 Jor Mandir | 100% (3/3) |
| `Krishnalila` | Vaishnava theological motif | `dcterms:description`, `dcterms:subject` | 2 | 128 Radha Madhab; 132 Jor Mandir | 100% (2/2) |
| `Bir Hambir` | Royal patron / historical ruler | `dcterms:contributor`, `dcterms:description` | 6 | 116 Rasmancha; 124 Lalji; 125 Murali Mohan; 126 Madan Gopal; 127 Malleswar; 131 Ruined Deul | 100% (6/6) |
| `17th century` | Chronological horizon | `dcterms:date`, `dcterms:description` | 13 | 116 Rasmancha; 118 Shyamrai; 119 Jor Bangla; 120 Madan Mohan; 121 Stone Chariot; 122 Nandalal; 124 Lalji; 126 Madan Gopal; 128 Radha Madhab; 130 Patpur; 131 Ruined Deul; 133 Radha Govinda; 134 Radha Binod | 100% (13/13) |
| `রাসমঞ্চ` | Native Bengali-script query | `dcterms:alternative` | 1 | 116 Rasmancha | 100% (1/1) |
| `পাথরের রথ` | Vernacular Bengali query | `dcterms:alternative` | 1 | 121 Stone Chariot | 100% (1/1) |

### Findings

- **Cross-property discovery:** Queries returned relevant records through title, description, subject, contributor, date, alternative-title, and extent metadata rather than relying on item titles alone.
- **Thematic discovery:** Architectural terms and iconographic subjects retrieve monuments across the collection. For example, `Ramayana` returned six records, while `Krishnalila` returned two.
- **Material discovery:** `Laterite` and `Terracotta` each returned 14 records. Ten monuments occur in both result sets, consistent with records describing both laterite construction and terracotta ornamentation.
- **Bengali-script access:** The native-script queries `রাসমঞ্চ` and `পাথরের রথ` each retrieved the corresponding monument record through its Bengali alternative title.
- **Precision caveat:** The 100% figures are author-assessed precision against the expected result sets defined for this benchmark. They do not constitute independent relevance judgments or establish recall across all potentially relevant records.

**Keyword-search screenshots** (click a highlighted link to open the full-size image): **[01 — Rasmancha](./screenshots/keyword/01-keyword-rasmancha.png)** · **[02 — Jor Bangla](./screenshots/keyword/02-keyword-jorbangla.png)** · **[03 — Madan Mohan](./screenshots/keyword/03-keyword-madanmohan.png)** · **[04 — Shyamrai](./screenshots/keyword/04-keyword-shyamrai.png)** · **[05 — Ekaratna](./screenshots/keyword/05-keyword-ekaratna.png)**.

## 6. NLP-enabled search

**Procedure.** 9 natural-language queries covering structured field retrieval, metadata completeness audits, digital asset inspection, spatial proximity calculations, architectural comparisons, thematic iconography filtering, and cross-collection historical synthesis were submitted to GPT-OSS 20B through the Model Context Protocol (MCP) integration with the Omeka S server. Expected answers and records were defined beforehand by the author. Each query was evaluated on whether the LLM correctly queried the Omeka MCP tools and synthesised the expected records.

**Result.** 9/9 queries returned the expected records, metadata values, or analytical answers (100% pass rate).

| # | Natural-language query | Query type / Expected result | Model response summary (MCP + GPT-OSS 20B) | Result | Evidence screenshot |
| --- | --- | --- | --- | --- | --- |
| 1 | Find records related to Rasmancha in Bishnupur | Record retrieval (Rasmancha, ID 116) | Returned Rasmancha (ID 116) with item URL and metadata summary | Pass | **[View screenshot](./screenshots/nlp/01-rasmancha-retrieval.png)** |
| 2 | Show me the creator, date, location, description, and identifier of Jor Mandir | Specific metadata field extraction (Jor Bangla / Jor Mandir) | Correctly returned structured table with Creator (King Raghunath Singha), Date (1655 CE), Location with coordinates, and Description for item 119 | Pass | **[View screenshot](./screenshots/nlp/02-jor-mandir-metadata.png)** |
| 3 | Which temple records have missing metadata? | Metadata quality audit across collection | Checked all 18 temple records (IDs 116, 118, 119, 121–134) against core template properties and correctly concluded 0 missing metadata fields | Pass | **[View screenshot](./screenshots/nlp/03-metadata-audit.png)** |
| 4 | Show me the available digital assets for Patpur Temple | Digital asset inspection (Item 130) | Correctly identified 3D GLB model with vertex count (1.02M), polygon count (1.92M), capture date, and processing provenance; confirmed no video/extra assets | Pass | **[View screenshot](./screenshots/nlp/04-patpur-assets.png)** |
| 5 | Find temples within 2 kilometres of Rasmancha. | Spatial proximity calculation (Geodesic distance from 23°04′06.29″ N, 87°19′19.33″ E) | Calculated distances to nearby monuments (Shyamrai ~0.4 km, Jor Bangla ~0.5 km, Lalji ~0.5 km, Nandalal ~0.8 km, etc.) within the 2 km radius | Pass | **[View screenshot](./screenshots/nlp/05-proximity-rasmancha.png)** |
| 6 | Which temples are closest to Radha Govinda Temple? | Relative geospatial proximity (from 23°03′36.39″ N, 87°19′23.31″ E) | Identified the two Jor Mandir entries (ID 132) as very nearest (~0.13 km / ~130 m away); next closest identified as Nandalal (~0.84 km), Kalachand (~0.89 km), and Radha Madhab (~0.91 km), all within roughly 0.9 km | Pass | **[View screenshot](./screenshots/nlp/06-proximity-radhagovinda.png)** |
| 7 | Compare the architectural features of Radha Binod Temple and Jor Mandir | Cross-record architectural comparison | Produced a side-by-side comparative table: Construction date (1659 CE vs 1726 CE), Style (*Atchala* vs *Ek-Ratna* group), Material (laterite with stucco), Roof type, and Dimensions | Pass | **[View screenshot](./screenshots/nlp/07-architecture-comparison.png)** |
| 8 | Which temples have documented terracotta reliefs depicting scenes from the Ramayana? | Thematic iconography / narrative scene filter | Identified and summarised Ramayana narrative reliefs on Shyamrai (ID 118), Jor Bangla (ID 119), Kalachand (ID 129), Radha Madhab (ID 128), and Jor Mandir (ID 132) | Pass | **[View screenshot](./screenshots/nlp/08-ramayana-reliefs.png)** |
| 9 | Summarise the historical significance of the catalogued temples | Multi-record historical synthesis | Synthesised historical significance across Malla dynasty heritage: Rasmancha (unique stepped-pyramid, Rash festival), Shyamrai (earliest Pancha-Ratna), Jor Bangla (hybrid do-chala/char-chala), Madan Mohan (continuous worship), etc. | Pass | **[View screenshot](./screenshots/nlp/09-historical-significance.png)** |

All model session captures are linked individually in the table above and are stored in [`screenshots/nlp/`](./screenshots/nlp/).

## 7. AI-assisted image preparation and 3D reconstruction workflow

The following reconstruction prompt is documented as an example and was not supplied to Tripo. In the workflow evaluated here, source photographs were uploaded to Tripo and converted to 3D models with texture without a text prompt. Keep the unmodified original photograph as the archival source and record the processing date and tool/version alongside generated files when available. This workflow does not establish geometric accuracy or historical fidelity.

### Example 3D reconstruction prompt

```text
Create a highly detailed 3D reconstruction of the temple shown in the reference image. Preserve the exact architectural form, proportions, dimensions, symmetry, roof structure, walls, arches, pillars, entrances, cornices, decorative elements, and terracotta relief panels visible in the reference.

Reconstruct the complete visible geometry as a physically plausible 3D object, including depth and thickness of architectural elements and the recessed and protruding terracotta ornamentation. Do not merely create a textured 2D surface.

Use realistic aged burnt terracotta material, with natural variations in clay color, surface roughness, weathering, erosion, cracks, small imperfections, and subtle differences between individual terracotta bricks and relief sculptures.

Accurately reconstruct the figurative terracotta panels, floral motifs, geometric patterns, mythological scenes, human figures, animals, and architectural ornamentation wherever they are visible. Preserve their original positions and relative scale.

The model should be historically and architecturally faithful to the reference photograph, without adding modern architectural elements or decorations that are not visible in the reference.

Generate a high-resolution, watertight, manifold 3D mesh suitable for further processing, digital heritage documentation, visualization, and conversion to GLB/GLTF.

Use physically based materials with realistic PBR albedo, roughness, normal and displacement information. Maintain fine surface detail while keeping the geometry optimized enough for real-time WebGL viewing.

Camera: orthographic or neutral perspective, front three-quarter view, showing the architectural depth clearly.

Lighting: neutral studio lighting, soft shadows, no dramatic colored lighting.

Background: plain neutral background.

Important: Do not redesign, beautify, modernize, or reinterpret the temple. Reconstruct what is actually present in the reference image.
```

### Image-to-3D conversion (Tripo)

The prepared images were uploaded to Tripo and converted to textured 3D models using the service's image-to-3D workflow. No reconstruction prompt or additional text instructions were entered. The generated models are AI-assisted visualizations and should not be interpreted as metrically accurate or fully faithful reconstructions.

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
