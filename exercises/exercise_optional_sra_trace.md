# Optional: Trace Your Reads in SRA/ENA

## Tasks

1. Extract run accession from compressed FASTQ:

```bash
zgrep -m1 "^@" data/raw/toy_1.fastq.gz
zgrep -m1 "^@" data/raw/toy_1.fastq.gz | grep -o 'SRR[0-9]*'
```

2. Open https://www.ebi.ac.uk/ena/browser/view/SRR925709

3. Compare: ENA lists `.fastq.gz` downloads, same format as our `data/raw/` files

4. Verify first read matches:

```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 4
```

## Think about it

- Why do archives store `.fastq.gz` instead of plain `.fastq`?
- How does open access let anyone reproduce your analysis?

See [WORKSHOP_MANUAL.md](../WORKSHOP_MANUAL.md#optional-trace-your-data-in-sraena).
