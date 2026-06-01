# Exercise 8: Metadata Summary

Open `data/metadata/samples.tsv` mentally, it has columns: sample_id, patient_id, tissue, condition, batch.

## Tasks

1. Print only the sample ID column
2. Print only the tissue column
3. Count how many tumour and normal samples there are
4. Count how many samples are in each batch
5. In one sentence, explain what each step of this pipe does:

```bash
cut -f 3 data/metadata/samples.tsv | sort | uniq -c
```

## Hint

The header row may appear in your counts, we will learn to skip it with `awk` in the next section.
