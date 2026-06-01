#!/usr/bin/env bash
# Basic QC report — writes to step-named analysis folders (never modifies data/raw/)
set -euo pipefail

mkdir -p analysis/01_qc analysis/02_metadata

# List compressed FASTQ in raw data
ls -lh data/raw/*.fastq.gz > analysis/01_qc/raw_fastq_files.txt

# Line counts (stream decompression — no gunzip to disk)
for f in data/raw/*.fastq.gz; do
    lines=$(gzip -dc "$f" | wc -l | tr -d ' ')
    echo "$lines $f"
done > analysis/01_qc/fastq_line_counts.txt

grep -c "^>" data/reference/proteins_9seqs.fa > analysis/01_qc/protein_sequence_count.txt

cut -f 3 data/metadata/samples.tsv | sort | uniq -c > analysis/02_metadata/tissue_counts.txt

awk -F '\t' 'NR > 1 && $3 == "tumour" {print $1}' data/metadata/samples.tsv \
    > analysis/02_metadata/tumour_samples.txt

echo "Report complete."
echo "  QC outputs:       analysis/01_qc/"
echo "  Metadata outputs: analysis/02_metadata/"
ls -lh analysis/01_qc/ analysis/02_metadata/
