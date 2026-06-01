# Exercise 10: Final Report (Optional Homework)

Build a QC report using **compressed** FASTQ and **step-named** output folders.

## Tasks

1. How many `.fastq.gz` files are in `data/raw/`?
2. How many **lines** are in each? (use `gzip -dc` + `wc -l`, not `gunzip`)
3. How many **reads** in each? (lines ÷ 4)
4. How many protein sequences in `proteins_9seqs.fa`?
5. Summarise tissue types and tumour sample IDs from metadata
6. Save outputs under `analysis/01_qc/` and `analysis/02_metadata/`
7. Put commands in `scripts/final_report.sh` and run it

## Expected folders

```text
analysis/01_qc/
├── raw_fastq_files.txt
├── fastq_line_counts.txt
└── protein_sequence_count.txt
analysis/02_metadata/
├── tissue_counts.txt
└── tumour_samples.txt
```

Start from [scripts/basic_report.sh](../scripts/basic_report.sh) and extend if you wish.
