# Terminal Overview - All Workshop Commands

Quick reference for every command used in this workshop. For context see [WORKSHOP_MANUAL.md](../WORKSHOP_MANUAL.md).

---

## Pattern

```text
program + options + input file → output
```

---

## Environment and navigation

| Command | Parts | What it does |
|---------|-------|--------------|
| `echo $SHELL` | `echo` = print; `$SHELL` = variable with shell path | Shows which shell you use (bash, zsh) |
| `uname -a` | `uname` = Unix name; `-a` = all system info | Shows operating system (Linux, Darwin) |
| `pwd` | **p**rint **w**orking **d**irectory | Prints current folder path |
| `ls` | **l**i**s**t | Lists file names in current folder |
| `ls -lh` | `-l` = long format; `-h` = human-readable sizes | Lists files with KB/MB sizes |
| `ls -la` | `-l` = long; `-a` = all including hidden files | Full listing including dotfiles |
| `cd folder` | **c**hange **d**irectory | Enter a subfolder |
| `cd ..` | `..` = parent directory | Go up one level |
| `clear` | | Clears terminal display |
| `history` | | Lists previous commands |

---

## Files and folders

| Command | Parts | What it does |
|---------|-------|--------------|
| `mkdir folder` | **m**a**k**e **dir**ectory | Creates one folder |
| `mkdir -p a/b/c` | `-p` = create parents as needed | Creates nested folders |
| `cp source dest` | **c**o**p**y | Copies a file |
| `mv source dest` | **m**o**v**e | Moves or renames a file |
| `rm file` | **r**e**m**ove | Deletes a file (permanent) |

---

## Decompress .gz to a plain file (Section 8)

| Command | Parts | What it does |
|---------|-------|--------------|
| `gunzip -c file.gz` | `-c` = write to stdout, keep `.gz` | Decompress without deleting archive |
| `gzip -dc file.gz` | same as `gunzip -c` | Alternative spelling |
| `gunzip -c file.gz > out.fq` | `>` redirect | Save plain text to a new file |

```bash
gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq
```

**Do not run** bare `gunzip data/raw/toy_1.fastq.gz` (removes the `.gz` in place).

---

## grep (search text)

| Command | Parts | What it does |
|---------|-------|--------------|
| `grep pattern file` | `grep` = **g**lobal **r**egular **e**xpression **p**rint | Lines containing `pattern` |
| `grep -c pattern file` | `-c` = **c**ount | Number of matching lines (not the lines themselves) |
| `grep -v pattern file` | `-v` = in**v**ert | Lines that do **not** match |
| `grep "^@" file` | `^` = start of line | FASTQ read headers |
| `grep "^>" file` | | FASTA sequence headers |
| `grep -v "^#" file` | | Skip comment lines (VCF, GFF) |
| `grep "text" file \| head` | pipe to `head` | First few matches only |

**Examples:**

```bash
grep tumour data/metadata/samples.tsv
grep -c "^>" data/reference/proteins_9seqs.fa
grep DDX11L1 data/annotation/pseudogenes_chr1.gff
grep -v "^#" data/variants/variants.vcf | head
grep -c "^@" analysis/01_qc/toy_1.fq
```

**On compressed files:** use `zgrep` instead of `grep` (see below).

---

## Inspect plain / uncompressed files

| Command | Parts | What it does |
|---------|-------|--------------|
| `head -n 5 file` | `-n 5` = first 5 lines | Shows start of a file |
| `tail file` | | Shows end of a file |
| `less file` | | Scroll file (`q` to quit) |
| `cat file` | con**cat**enate | Prints entire file (avoid on huge files) |
| `wc -l file` | **w**ord **c**ount; `-l` = lines only | Counts lines |

---

## Stream compressed FASTQ (.fastq.gz) (Section 9)

| Command | Parts | What it does |
|---------|-------|--------------|
| `gzip -l file.gz` | `-l` = list | Compressed vs uncompressed size |
| `gzip -dc file.gz` | `-d` = decompress; `-c` = to stdout | Stream decompressed text (no file written) |
| `gunzip -c file.gz` | same as `gzip -dc` | Alternative spelling |
| `zgrep pattern file.gz` | z + grep | Search inside `.gz` without unpacking |
| `zcat file.gz` | z + cat | Stream decompress (Linux; on Mac use `gzip -dc`) |

**Examples:**

```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 8
gzip -dc data/raw/toy_1.fastq.gz | wc -l
zgrep "^@" data/raw/toy_1.fastq.gz | head -n 3
```

---

## Columns, pipes, summaries

| Command | Parts | What it does |
|---------|-------|--------------|
| `cut -f 3 file` | `-f 3` = field (column) 3 | Extract one column (tab-separated) |
| `sort` | | Sort lines alphabetically |
| `uniq` | **uniq**ue | Remove adjacent duplicate lines |
| `uniq -c` | `-c` = count | Count repeated neighbouring lines |
| `cmd1 \| cmd2` | pipe | Send left output into right command |
| `cmd > file` | redirect | Save output to file (overwrites) |
| `cmd >> file` | append redirect | Add output to end of file |

**Example pipeline:**

```bash
cut -f 3 data/metadata/samples.tsv | sort | uniq -c
```

---

## awk (column filtering)

| Part | Meaning |
|------|---------|
| `awk` | Column-aware line processor |
| `-F '\t'` | Field separator = tab |
| `$1`, `$2`, `$3` | Column 1, 2, 3 |
| `NR` | **N**umber of **r**ecord (row number) |
| `NR > 1` | Skip header row |
| `{print $1}` | Output column 1 |

**Example:**

```bash
awk -F '\t' 'NR > 1 && $3 == "tumour" {print $1}' data/metadata/samples.tsv
```

---

## grep vs awk

| | grep | awk |
|---|------|-----|
| Finds text in a line | Yes | Yes |
| Works with specific columns | No | Yes |
| Skips header row easily | Awkward | `NR > 1` |
| Best question | "Lines containing X?" | "Column A where column B = X?" |

---

## Editors

| Command / key | What it does |
|---------------|--------------|
| `nano file` | Open simple editor |
| Ctrl+O (nano) | Save |
| Ctrl+X (nano) | Exit |
| `vim file` | Open vim |
| `i` (vim) | Insert mode |
| Esc (vim) | Leave insert mode |
| `:wq` (vim) | Save and quit |
| `:q!` (vim) | Quit without saving |

---

## Scripts

| Command | What it does |
|---------|--------------|
| `bash script.sh` | Run all commands in a script file |

---

## Wildcards and loops

| Syntax | What it does |
|--------|--------------|
| `*.fastq.gz` | Match all files ending in `.fastq.gz` |
| `for f in *.gz; do ...; done` | Repeat commands for each matching file |

**Example:**

```bash
for f in data/raw/*.fastq.gz; do
    gzip -dc "$f" | wc -l
done
```

---

## Keyboard

| Key | Action |
|-----|--------|
| Tab | Autocomplete path |
| ↑ | Previous command |
| Ctrl+C | Stop running command |

---

## Safety

| Level | Examples |
|-------|----------|
| Safe (read) | `head`, `grep`, `gzip -dc`, `zgrep`, `ls` |
| Careful (write) | `mkdir`, `cp`, `>`, `>>` → use `analysis/` only |
| Danger | `rm`, bare `gunzip` in `data/raw/`, `>` on raw data |

---

## Expected sanity checks

| Command | Expected |
|---------|----------|
| `wc -l analysis/01_qc/toy_1.fq` | 10000 |
| `gzip -dc data/raw/toy_1.fastq.gz \| wc -l` | 10000 |
| `grep -c "^>" data/reference/proteins_9seqs.fa` | 9 |
| Reads per FASTQ | lines ÷ 4 = 2500 |
