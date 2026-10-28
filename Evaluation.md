# Terracotta3D: Evaluation Records

Test protocol and results for the Terracotta3D repository, a 3D-model repository of 18 terracotta temples of Bishnupur, West Bengal, built on Omeka S with structured metadata, an interactive 3D viewer, a map interface, keyword search and an MCP-based natural-language search.

This page supports Section 5 (System Testing and Evaluation) of the manuscript. The manuscript summarises the outcomes; this page holds the full tables, query lists and screenshots.

## Scope of the evaluation

The tests are **functional verification checks** on a prototype with 18 records. Each check was recorded as **Pass** or **Fail** by the author, and expected results were fixed before testing. Precision, recall and other ranked-retrieval measures were **not computed**, because they are not informative for a collection of this size. No independent relevance judgments or user study were conducted.

## Test environment

| Item | Detail |
| --- | --- |
| Tested on | [CONFIRM: device and operating system] |
| Browser | [CONFIRM: browser and version] |
| Network | [CONFIRM: connection type and speed] |
| Test dates | [CONFIRM: start date] to [CONFIRM: end date] |
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
| Keyword search | Predefined queries | [N]/[N] passed |
| NLP-enabled search | Natural-language queries | [N]/[N] passed |

## 1. 3D model accessibility

**Procedure.** Each temple record was opened and its GLB model loaded in the viewer. Load time was taken from Chrome DevTools Network Timing as the request duration of the model file. This is not a rendering time.

**Result.** 18/18 models loaded and displayed. Request duration: min 19.74 s, max [CONFIRM: exact maximum] s, mean 40.65 s, median 30.32 s.

| # | Temple | Loaded and displayed | Request duration (s) | File size (MB) |
| --- | --- | --- | --- | --- |
| 1 | [temple name] | Pass | [s] | [MB] |
| 2 | [temple name] | Pass | [s] | [MB] |
| 3 | [temple name] | Pass | [s] | [MB] |
| 4 | [temple name] | Pass | [s] | [MB] |
| 5 | [temple name] | Pass | [s] | [MB] |
| 6 | [temple name] | Pass | [s] | [MB] |
| 7 | [temple name] | Pass | [s] | [MB] |
| 8 | [temple name] | Pass | [s] | [MB] |
| 9 | [temple name] | Pass | [s] | [MB] |
| 10 | [temple name] | Pass | [s] | [MB] |
| 11 | [temple name] | Pass | [s] | [MB] |
| 12 | [temple name] | Pass | [s] | [MB] |
| 13 | [temple name] | Pass | [s] | [MB] |
| 14 | [temple name] | Pass | [s] | [MB] |
| 15 | [temple name] | Pass | [s] | [MB] |
| 16 | [temple name] | Pass | [s] | [MB] |
| 17 | [temple name] | Pass | [s] | [MB] |
| 18 | [temple name] | Pass | [s] | [MB] |

## 2. Visual interaction (viewer controls)

**Procedure.** Each control was tested manually on every record. Outcomes: Pass, Fail, or Not available. Screenshots of the initial, rotated and zoomed views are in `screenshots/viewer/`.

**Result.** All controls passed on all 18 records.

| # | Temple | Rotate | Zoom in/out | [CONFIRM: other control] |
| --- | --- | --- | --- | --- |
| 1 | [temple name] | Pass | Pass | Pass |
| 2 | [temple name] | Pass | Pass | Pass |
| 3 | [temple name] | Pass | Pass | Pass |
| 4 | [temple name] | Pass | Pass | Pass |
| 5 | [temple name] | Pass | Pass | Pass |
| 6 | [temple name] | Pass | Pass | Pass |
| 7 | [temple name] | Pass | Pass | Pass |
| 8 | [temple name] | Pass | Pass | Pass |
| 9 | [temple name] | Pass | Pass | Pass |
| 10 | [temple name] | Pass | Pass | Pass |
| 11 | [temple name] | Pass | Pass | Pass |
| 12 | [temple name] | Pass | Pass | Pass |
| 13 | [temple name] | Pass | Pass | Pass |
| 14 | [temple name] | Pass | Pass | Pass |
| 15 | [temple name] | Pass | Pass | Pass |
| 16 | [temple name] | Pass | Pass | Pass |
| 17 | [temple name] | Pass | Pass | Pass |
| 18 | [temple name] | Pass | Pass | Pass |

## 3. Metadata completeness

**Procedure.** Each record was checked against the 21-field Heritage Object template. A field counts as complete if it is present and populated.

**Result.** 378 of 378 expected field instances were populated (18 records x 21 fields = 100%). This confirms field presence only; it does not verify the accuracy of values or conformance to controlled vocabularies.

Field-level results: `results/03_metadata_completeness.csv` [CONFIRM: attach, or remove this line].

## 4. Geospatial discovery

**Procedure.** The marker position on the map interface was compared with verified coordinates (source: [CONFIRM: source of verified coordinates]). [CONFIRM: if offsets were measured, add: Offsets were calculated as great-circle distances using the Haversine formula.]

**Result.** 18/18 markers were plotted on the correct structure. [CONFIRM: mean and maximum offset in metres, or state that the comparison was visual only.]

| # | Temple | Verified latitude | Verified longitude | Marker on correct structure | Offset (m) |
| --- | --- | --- | --- | --- | --- |
| 1 | [temple name] | [lat] | [lon] | Pass | [m] |
| 2 | [temple name] | [lat] | [lon] | Pass | [m] |
| 3 | [temple name] | [lat] | [lon] | Pass | [m] |
| 4 | [temple name] | [lat] | [lon] | Pass | [m] |
| 5 | [temple name] | [lat] | [lon] | Pass | [m] |
| 6 | [temple name] | [lat] | [lon] | Pass | [m] |
| 7 | [temple name] | [lat] | [lon] | Pass | [m] |
| 8 | [temple name] | [lat] | [lon] | Pass | [m] |
| 9 | [temple name] | [lat] | [lon] | Pass | [m] |
| 10 | [temple name] | [lat] | [lon] | Pass | [m] |
| 11 | [temple name] | [lat] | [lon] | Pass | [m] |
| 12 | [temple name] | [lat] | [lon] | Pass | [m] |
| 13 | [temple name] | [lat] | [lon] | Pass | [m] |
| 14 | [temple name] | [lat] | [lon] | Pass | [m] |
| 15 | [temple name] | [lat] | [lon] | Pass | [m] |
| 16 | [temple name] | [lat] | [lon] | Pass | [m] |
| 17 | [temple name] | [lat] | [lon] | Pass | [m] |
| 18 | [temple name] | [lat] | [lon] | Pass | [m] |

## 5. Keyword search

**Procedure.** [CONFIRM: N] predefined queries were run, covering temple names, partial names, descriptive terms [CONFIRM: and negative queries, if any]. The expected records were defined beforehand. A query passes if the returned records match the expected records exactly.

**Result.** [N]/[N] queries passed.

| # | Query | Type | Expected records | Returned records | Result |
| --- | --- | --- | --- | --- | --- |
| 1 | [query] | [type] | [records] | [records] | Pass |
| 2 | [query] | [type] | [records] | [records] | Pass |
| ... | [continue to N] | | | | |

Screenshots: `screenshots/keyword/`.

## 6. NLP-enabled search

**Procedure.** [CONFIRM: N] natural-language queries were submitted to GPT-OSS 20B through the MCP integration. Expected records were defined beforehand by the author. [CONFIRM: queries run once or repeated; model settings such as temperature.] [CONFIRM: whether the same queries were also run through keyword search as a baseline.]

**Result.** [N]/[N] queries returned the expected records. The query set is small and author-defined and the model is non-deterministic, so the result indicates feasibility rather than reliability.

| # | Natural-language query | Expected records | Returned records | Result | Keyword search on same query |
| --- | --- | --- | --- | --- | --- |
| 1 | [query] | [records] | [records] | Pass | [Pass/Fail] |
| 2 | [query] | [records] | [records] | Pass | [Pass/Fail] |
| ... | [continue to N] | | | | |

Screenshots and model output: `screenshots/nlp/`.

## Limitations

- Single evaluator, who also built the system; expected results were not verified independently.
- Small collection (18 records) and small query sets.
- Not evaluated: geometric fidelity of the AI-generated 3D models, accuracy of metadata values, user experience, performance under concurrent access.

## Repository contents

```
README.md                 this file
results/                  CSV result tables (one per test)
screenshots/              viewer/, map/, keyword/, nlp/
```

## How to cite

[CONFIRM: author name(s)]. Terracotta3D evaluation records. [CONFIRM: year]. [CONFIRM: GitHub URL or DOI].

## License

[CONFIRM: license for the records, e.g. CC BY 4.0]
