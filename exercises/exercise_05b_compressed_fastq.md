# Exercise 5b: Compressed FASTQ Practice

Focus on Section 9 commands only.

## Tasks

1. Stream-decompress and show lines 1-4 of `toy_1.fastq.gz` (one complete read)
2. Count total lines in both FASTQ files using a `for` loop
3. Calculate reads per file (lines ÷ 4)
4. Save line counts to `analysis/01_qc/my_fastq_line_counts.txt` using redirection  
   *(Create folders first if you have not yet: `mkdir -p analysis/01_qc`)*
5. Verify with `cat analysis/01_qc/my_fastq_line_counts.txt`

## Starter loop for task 2-4

```bash
mkdir -p analysis/01_qc
for f in data/raw/*.fastq.gz
do
    lines=$(gzip -dc "$f" | wc -l | tr -d ' ')
    echo "$lines $f"
done
```

## Expected

| File | Lines | Reads |
|------|------:|------:|
| toy_1.fastq.gz | 10000 | 2500 |
| toy_2.fastq.gz | 10000 | 2500 |

## Common mistake

```bash
wc -l data/raw/toy_1.fastq.gz    # WRONG, counts compressed bytes, not text lines
```
