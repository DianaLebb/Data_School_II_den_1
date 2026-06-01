# Exercise 1: Command Anatomy

Label each part of these commands as **program**, **option**, or **input file**.

```bash
ls -lh
head -n 10 data/metadata/samples.tsv
grep macroglobulin data/reference/proteins.fa
gzip -dc data/raw/toy_1.fastq.gz | wc -l
cut -f 1 data/metadata/samples.tsv
```

## Your task

Write your answers. For the pipeline with `|`, identify each command separately.

Example:

```text
gzip -dc data/raw/toy_1.fastq.gz | wc -l
  program 1: gzip   options: -dc   input: data/raw/toy_1.fastq.gz
  pipe: |
  program 2: wc     options: -l   input: (from pipe)
```

## Check yourself

Run each command. For the gzip pipeline, do you get `10000`?
