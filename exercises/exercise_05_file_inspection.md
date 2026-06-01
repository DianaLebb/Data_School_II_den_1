# Exercise 5: Inspecting Biomedical Files

## Part A - Plain text (Section 8, start here)

1. Show the first 5 lines of `samples.tsv`
2. Show the first 5 lines of `proteins.fa`
3. Show the first 5 lines of `pseudogenes_chr1.gff`
4. Count lines in `samples.tsv` with `wc -l`

## Part B - Decompress and inspect FASTQ (Section 8)

5. Create a plain FASTQ file: `gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq`
6. Confirm the `.gz` file is still in `data/raw/` with `ls -lh data/raw/`
7. Show the first **8 lines** of `analysis/01_qc/toy_1.fq` (first 2 reads)
8. Count **lines** with `wc -l`
9. Estimate **reads** (lines ÷ 4)
10. Count read headers: `grep -c "^@" analysis/01_qc/toy_1.fq`

## Part C - Compressed FASTQ (Section 9)

11. List compressed FASTQ files: `ls -lh data/raw/*.fastq.gz`
12. Show the first **8 lines** of `toy_1.fastq.gz` using streaming (no new file)
13. Count **lines** in `toy_1.fastq.gz` with `gzip -dc ... | wc -l`
14. Repeat line count for `toy_2.fastq.gz`
15. Use `zgrep` to show the first 3 read headers from `toy_1.fastq.gz`
16. (Optional) `gzip -l data/raw/toy_1.fastq.gz`

## Hints

**Decompress to analysis folder:**
```bash
gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq
head -n 8 analysis/01_qc/toy_1.fq
wc -l analysis/01_qc/toy_1.fq
```

**Stream compressed (Section 9):**
```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 8
gzip -dc data/raw/toy_1.fastq.gz | wc -l
zgrep "^@" data/raw/toy_1.fastq.gz | head -n 3
```

## Think about it

- Why use `gunzip -c` instead of bare `gunzip` on the file in `data/raw/`?
- Why do `analysis/01_qc/toy_1.fq` and streaming from `toy_1.fastq.gz` give the same line count?

**Optional follow-up:** [exercise_optional_sra_trace.md](exercise_optional_sra_trace.md)
