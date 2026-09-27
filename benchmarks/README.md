# Archer Dynamics Benchmark Resource Inventory
---

## Purpose

This directory contains everything required to run the Archer Dynamics Benchmark.
The benchmark consists of 80 questions divided into 8 categories of 10 questions each.
The prompt files are the canonical source of truth for the benchmark definition.
Questions are already finalized and should be treated as frozen unless a bug is discovered.


# Build Order
---

Current recommended build order:

```text
✅ Prompt files
⬜ Answer keys
⬜ Resource files
⬜ Continuity scripts
⬜ Resource manifests
⬜ Grader
⬜ PostgreSQL integration
⬜ Grafana views
```


# Prompt Files
---

These files contain the actual benchmark questions presented to the model.

```text
01-coding-prompt.yml
02-recall-prompt.yml
03-reasoning-prompt.yml
04-instruction-prompt.yml
05-honesty-prompt.yml
06-retrieval-prompt.yml
07-summarization-prompt.yml
08-continuity-prompt.yml
```

These files already contain:

- Question IDs
- Prompt text
- Resource references
- Grading method
- Output contract
- Trap description

No additional question authoring should be required.


# Which Categories Need Resource Files?
---

##### No Resource Files Required

The following categories are self-contained.

```text
REC
REA
INS
HON
```

Their answer keys are known immediately and do not depend on any external file.

Examples:

```text
REC01 -> bat
REA01 -> 24
INS05 -> LINUX
HON01 -> UNKNOWN
```

---

##### Resource Files Required

The following categories require additional files.

```text
COD
RET
SUM
CON
```

These categories cannot be fully graded until their resources exist.


# Answer Key Files
---

##### non-cod-answer-key.yml

Contains canonical answers for:

```text
REC
REA
INS
HON
RET
SUM
CON
```

Examples:

```text
REC01 -> bat
REA01 -> 24
HON01 -> UNKNOWN
RET01 -> TBD until RET resource exists
SUM01 -> TBD until SUM resource exists
CON01 -> TBD until CON script exists
```

##### cod-answer-key.yml

COD uses hidden tests rather than single answer values.

This file stores:

```text
Function names
Expected artifact types
Hidden inputs
Expected outputs
Validation rules
```

For COD, the hidden tests ARE the answer key.


# Resource Files
---

##### Coding Resources

```text
WG-PEER-01.conf
WEATHER-READINGS-SQLITE
HOSTS-CHECKS-SQLITE
DF-OUTPUT-01.txt
```

Purpose:
Support COD questions.
These contain input data used by the question

# Archer Dynamics Benchmark Resource Inventory
---

##### Prompt Files

01-coding-prompt.yml
02-recall-prompt.yml
03-reasoning-prompt.yml
04-instruction-prompt.yml
05-honesty-prompt.yml
06-retrieval-prompt.yml
07-summarization-prompt.yml
08-continuity-prompt.yml

##### Resource Files

WG-PEER-01.conf
WEATHER-READINGS-SQLITE
HOSTS-CHECKS-SQLITE
DF-OUTPUT-01.txt

RET-DOC-01.txt

SUM-DOC-01.txt
SUM-DOC-02.txt
SUM-DOC-03.txt
SUM-DOC-04.txt
SUM-DOC-05.txt
SUM-DOC-06.txt
SUM-DOC-07.txt
SUM-DOC-08.txt
SUM-DOC-09.txt
SUM-DOC-10.txt

##### Script Files

CON-SCRIPT-01.yml
CON-SCRIPT-02.yml
CON-SCRIPT-03.yml
CON-SCRIPT-04.yml
CON-SCRIPT-05.yml
CON-SCRIPT-06.yml
CON-SCRIPT-07.yml
CON-SCRIPT-08.yml
CON-SCRIPT-09.yml
CON-SCRIPT-10.yml
``