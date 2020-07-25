# Notes from 2020-07-24 Sync Kelly <-> Tyshawn

## Four hypotheses about how primary structure (amino acid sequence) may impact TMPRSS2 <-> S binding

### 1. Change in catalytic triad

- There is a single catalytic triad (serine - glycine - histidine) in human TMPRSS2
- Catalytic triads tend to be highly conserved, so this is unlikely to vary across the species of interest.

**Summary data to generate:**

- Identify the positional index of the catalytic triad residues in the human TMPRSS2 sequence.
- Search the dog, horse, cat, mouse, cattle, and chicken TMPRSS2 sequences for amino acid substitutions at those indices.
- For each species, record `true` (no substitutions; catalytic triad present) or `false` (at least one substitution; catalytic triad absent).

### 2. Change in number of disulfide bonds

- Disulfide bonds form between cystines and stabilize the protein structure
- Breakage of these bonds may produce conformational changes that alter function

**Summary data to generate:**

- Count the number of cystines in TMPRSS2 for each species
- Define the maximum possible number of disulfide bonds as `floor(count(cystine)/2)`

### 3. Hydrophobicity

[needs addition of notes and target summary data]

### 4. Mass/bulkiness

[needs addition of notes and target summary data]

## Summary data table describing changes relevant to SARS-CoV-2 susceptibility

The summary data table should look something like this

|Species|Catalytic Triad|Disulfide Bonds|
|:---|:---|:---|
|cat| t/f| n |
|dog| t/f| n |
|cattle| t/f| n |
|horse| t/f| n |
|chicken| t/f| n |
|mouse| t/f| n |

## Additional sites implicated in TMPRSS2 <-> S binding

Add citations here for specific sites recorded in literature as involved in TMPRSS2 <-> S binding.
