# Exercise 9: awk for Metadata Filtering

## Tasks

1. Print sample ID and tissue columns (skip worrying about the header for now)
2. Print sample ID and batch columns
3. Print only rows where tissue is `tumour`
4. Print only sample IDs of tumour samples (no header row, use `NR > 1`)
5. Save tumour sample IDs to `analysis/02_metadata/tumour_samples.txt`

## Hints

```bash
awk -F '\t' '{print $1, $3}' file    # print columns 1 and 3
awk -F '\t' '$3 == "tumour" {print}' file   # filter rows
awk -F '\t' 'NR > 1 {print $1}' file  # skip header row
```

Use `>` to save the last result to a file.
