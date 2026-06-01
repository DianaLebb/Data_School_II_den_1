# Exercise 7: Searching with grep

## Tasks

1. Find all FASTA header lines in `proteins_9seqs.fa`
2. Count how many sequences are in `proteins_9seqs.fa`
3. Search for `macroglobulin` in `proteins.fa`
4. Search for `DDX11L1` in `pseudogenes_chr1.gff`
5. Search for lines containing `pseudogene` in the GFF file
6. In `variants.vcf`, show only non-header lines (lines that do **not** start with `#`)

## Hints

- FASTA headers start with `>`
- GFF comment/header lines start with `#`
- Use `grep -c` to count
- Use `grep -v` to exclude matching lines

## Why these files?

These are real annotation and protein files from a public human genome build (GRCh38.p14).
