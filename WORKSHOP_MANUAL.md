# Terminal for Bioinformatics - Workshop Manual

**Duration:** 3 hours  
**Teaching rhythm:** concept → practice → tiny exercise → short debrief → next concept

> **You are not expected to memorise commands. You are expected to understand the pattern.**

---

## Table of contents

1. [What we will learn](#what-we-will-learn)
2. [How we will learn today](#how-we-will-learn-today)
3. [Before you start](#before-you-start)
4. [Section 1: Why the terminal matters](#section-1-why-the-terminal-matters-in-bioinformatics)
5. [Section 2: What the terminal actually does](#section-2-what-the-terminal-actually-does)
6. [Section 3: Command anatomy](#section-3-command-anatomy)
7. [Section 4: Reading the prompt](#section-4-reading-the-prompt-and-checking-your-environment)
8. [Section 5: Navigation](#section-5-navigation--pwd-ls-cd)
9. [Section 6: Tab, history, Ctrl+C](#section-6-tab-completion-history-and-stopping-commands)
10. [Section 7: Paths and safe project structure](#section-7-paths-and-safe-project-structure)
11. [Section 8: Inspecting plain / uncompressed files](#section-8-inspecting-biomedical-files-plain--uncompressed)
12. [Section 9: Compressed raw data (.fastq.gz)](#section-9-compressed-raw-data-fastqgz)
13. [Section 10: Deliberate error practice](#section-10-deliberate-error-practice)
14. [Section 11: Searching with grep](#section-11-searching-with-grep)
15. [Section 12: Wildcards](#section-12-wildcards--one-command-many-files)
16. [Section 13: Columns, pipes, metadata](#section-13-columns-pipes-and-metadata-summaries)
17. [Section 14: Saving outputs](#section-14-saving-outputs-with-redirection)
18. [Section 15: Editing with nano and vim](#section-15-editing-files-with-nano-and-vim)
19. [Section 16: awk for metadata](#section-16-awk-for-metadata-filtering)
20. [Section 17: Scripts and reproducibility](#section-17-scripts-and-reproducibility)
21. [Section 18: Where this leads](#section-18-where-this-leads--real-bioinformatics-tools)
22. [What we learned](#what-we-learned)
23. [Command reference](#command-reference)
24. [Optional: Trace your data in SRA/ENA](#optional-trace-your-data-in-sraena)
25. [Optional homework](#optional-homework)

---

## What we will learn

By the end of this workshop, you will be able to:

- [ ] Explain what the terminal does and **why** bioinformatics workflows depend on it
- [ ] Use the mental model: **terminal → shell → program → input file → output**
- [ ] Navigate a project folder with `pwd`, `ls`, and `cd`
- [ ] Understand relative paths and read the command prompt
- [ ] Use tab completion, command history, and **Ctrl + C** to recover from mistakes
- [ ] Inspect **compressed** FASTQ (`.fastq.gz`) without decompressing raw data on disk
- [ ] Use `gzip -dc`, `zgrep` and pipes to read `.gz` files
- [ ] Search text files with `grep` and work with many files using wildcards
- [ ] Summarise metadata tables using `cut`, `sort`, `uniq` and pipes
- [ ] Save outputs to files with `>` and filter rows with `awk`
- [ ] Edit a small file with **nano** and survive **vim** if you encounter it
- [ ] Run a bash script and understand how this prepares you for FastQC, BWA, samtools and bcftools


---

## How we will learn today

Every section follows the same rhythm:

```text
concept → practice → tiny exercise → short debrief → next concept
```

Most people are not afraid of data. They are afraid of not knowing **where they are**, **what happened**, or **how to recover**. We practise recovery deliberately.

**Anxiety reducer:** If you forget a command name, look it up. If something breaks, read the error message. The pattern matters more than memory.

**Reading code in this manual:** After most command blocks you will find a table breaking down **each part** — program names, flags like `-lh`, pipes `|`, `$variables`, and `$(command substitution)`.

---

## Before you start

### Read the manual in Preview mode (recommended)

Raw `.md` files show markup symbols like `#` and `**`. Hard to read during class. Use **Markdown Preview** for formatted headings, tables and code blocks.

**Where to open `.md` files:**

This manual is a Markdown (`.md`) file. You can read it in any of these environments:

| Environment | How to open | Markdown preview |
|-------------|-------------|-------------------|
| **VS Code** | File → Open Folder → open the workshop folder | `Cmd+Shift+V` (Mac) or `Ctrl+Shift+V` (Windows/Linux) |
| **JupyterLab** | File → Open → select `WORKSHOP_MANUAL.md` | Right-click → Open With → Markdown Preview |
| **GitHub** | Upload repo or view online | Renders automatically in the browser |
| **GitHub Codespaces** | Open repo → Create codespace | Same as VS Code |

**VS Code preview shortcuts:**

| Action | Mac | Windows / Linux |
|--------|-----|-----------------|
| Open Preview | `Cmd + Shift + V` | `Ctrl + Shift + V` |
| Preview beside editor | `Cmd + K`, then `V` | `Ctrl + K`, then `V` |
| Command Palette | `Cmd + Shift + P` → "Markdown: Open Preview" | `Ctrl + Shift + P` → same |

**Recommended layout:** Preview on one side, integrated terminal at the bottom. Copy commands from either view.

### Environment check

Open your terminal and run:

```bash
echo $SHELL
uname -a
pwd
```

| Line | Part | Meaning |
|------|------|---------|
| `echo $SHELL` | `echo` | Print text to the screen |
| | `$SHELL` | **`$` = variable.** The shell replaces `$SHELL` with the path to your current shell program (e.g. `/bin/zsh`) |
| `uname -a` | `uname` | **Unix name** — reports operating system information |
| | `-a` | **a**ll details (kernel, machine type, OS version) |
| `pwd` | `pwd` | **p**rint **w**orking **d**irectory — full path of the folder you are in now |

| Good sign | Bad sign (for this workshop) |
|-----------|------------------------------|
| `/bin/bash` or `/bin/zsh` | PowerShell |
| `Linux` or `Darwin` | `C:\Users\...` paths |

If you see PowerShell, read [SETUP.md](SETUP.md) for WSL or Codespaces instructions.

### Your project folder

```text
.
├── data/
│   ├── raw/              ← sequencing reads (see below)
│   ├── metadata/         ← samples.tsv (20 samples)
│   ├── reference/        ← proteins, chr1 excerpt
│   ├── annotation/       ← GFF, BED
│   └── variants/         ← variants.vcf
├── scripts/              ← reproducible recipes
└── exercises/
```

**You will create `analysis/` during the workshop** (Section 7). Real projects grow output folders as you work; we practise that together.

**Files in `data/raw/`:**

| File | Format | Role |
|------|--------|------|
| `toy_1.fastq.gz`, `toy_2.fastq.gz` | Gzip FASTQ | Archive downloads from run [SRR925709](https://www.ebi.ac.uk/ena/browser/view/SRR925709) |

In **Section 8** you decompress one file into `analysis/01_qc/toy_1.fq` to learn plain-text commands. The `.fastq.gz` files in `data/raw/` stay unchanged.

See [cheatsheet/terminal_overview.md](cheatsheet/terminal_overview.md) for a quick command reference.

Run `pwd` — **p**rint **w**orking **d**irectory; you should be in the workshop root (the folder containing `data/` and `WORKSHOP_MANUAL.md`).

---

# Section 1: Why the terminal matters in bioinformatics


## Goal

Understand why manual file handling does not scale in bioinformatics.

## Concept

Imagine you downloaded a sequencing project:

```text
rna_seq_project/
├── sample_01_R1.fastq.gz
├── sample_01_R2.fastq.gz
├── sample_02_R1.fastq.gz
├── sample_02_R2.fastq.gz
├── sample_03_R1.fastq.gz
├── sample_03_R2.fastq.gz
├── metadata.tsv
└── reference.fa
```

The graphical interface is wonderful when you work with **one file**. Bioinformatics often means **many files**, **large files**, and **repeated steps**.

**Why `.fastq.gz`?** Sequencing centres and public archives (ENA, SRA) compress reads to save disk space and transfer time. A study with 100 samples might mean 200 compressed files (paired-end R1 + R2). Opening each in a spreadsheet is impossible and would destroy the quality-score encoding anyway.

**Example elsewhere:** A clinical RNA-seq cohort might ship as a spreadsheet of 80 sample IDs plus a folder of 160 `.fastq.gz` files on a shared server. The terminal lets you list them all, count reads in each, and match filenames to the spreadsheet in one reproducible session.

## Discussion (2 minutes)

In pairs: *What would be annoying or dangerous to do manually?*

Expected answers: opening each file, checking filenames, counting samples, matching metadata, repeating analysis, remembering exactly what was done.

## Debrief

> The terminal is not here because it is cool. It is here because manual work does not scale.

---

# Section 2: What the terminal actually does


## Goal

Build a mental model before memorising commands.

## Concept

```text
Human
  ↓
Terminal (the window you type in)
  ↓
Shell (bash (interprets your commands))
  ↓
Program (head, grep, bwa, …)
  ↓
Input file → Output
```

**Core model:**

```text
terminal → shell → program → input file → output
```

**Example with compression (Section 9 goes deeper):**

```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 4
```

| Part | Meaning |
|------|---------|
| `gzip` | Program that works with `.gz` compressed files |
| `-d` | **d**ecompress |
| `-c` | Write result to the screen (stdout), **not** to a new file on disk |
| `data/raw/toy_1.fastq.gz` | Input file path |
| `\|` | **Pipe** — send output of the left command into the right command |
| `head` | Show the start of the text stream |
| `-n 4` | Exactly **4 lines** (one FASTQ read) |

The shell runs left to right: decompress in memory → show first 4 lines. Nothing is written back to `data/raw/`.

## Command: `head`

| Part | Meaning |
|------|---------|
| `head` | Show the **start** of a file |
| `-n 5` | **n**umber of lines: exactly 5 |
| `data/metadata/samples.tsv` | Input file path |

## Let's practice

```bash
head -n 5 data/metadata/samples.tsv
```

| Part | Meaning |
|------|---------|
| `head` | Show the **start** of a file |
| `-n 5` | **n**umber of lines: exactly 5 |
| `data/metadata/samples.tsv` | Path to the metadata table (tab-separated values) |

**Goal:** Peek at column names and a few sample rows without opening Excel.

## Debrief

> The terminal is a way to run small programs on files, combine them and save the exact recipe.

---

# Section 3: Command anatomy


## Goal

Recognise program, option, and input in any command.

## Exercise

Label each part of these commands (program / option / input):

```bash
ls -lh
head -n 10 data/metadata/samples.tsv
grep macroglobulin data/reference/proteins.fa
gzip -dc data/raw/toy_1.fastq.gz | wc -l
cut -f 1 data/metadata/samples.tsv
```

| Command | Program | Options | Input |
|---------|---------|---------|-------|
| `ls -lh` | `ls` | `-l` long format, `-h` human sizes | (current folder) |
| `head -n 10 ...` | `head` | `-n 10` first 10 lines | `data/metadata/samples.tsv` |
| `grep macroglobulin ...` | `grep` | (none) | pattern `macroglobulin`, file `proteins.fa` |
| `gzip -dc ... \| wc -l` | `gzip` then `wc` | `-dc` decompress to stdout; `-l` count lines | `.fastq.gz` file, then pipe |
| `cut -f 1 ...` | `cut` | `-f 1` first column | `samples.tsv` |

See [exercises/exercise_01_command_anatomy.md](exercises/exercise_01_command_anatomy.md).

**Tip:** Options usually start with `-` (e.g. `-n 10`, `-lh`). The input is almost always last; the input is almost always a file path. When you see `|`, everything to the left feeds the program on the right.

**Another example:** `grep -c "^>" proteins.fa`, program `grep`, option `-c` (count), pattern `"^>"`, input file `proteins.fa`. Output is a single number printed to the screen unless you redirect with `>`.

## Debrief

> Most bioinformatics commands follow the same grammar. Once you recognise the pattern, new tools become less scary.

---

# Section 4: Reading the prompt and checking your environment


## Goal

Know whether you are in the correct terminal and read the prompt.

## What does the prompt mean?

Example:

```text
user@machine ➜ /workspaces/biomed-terminal-workshop $
```

| Part | Meaning |
|------|---------|
| `user@machine` | who / where (computer) |
| `/workspaces/...` | current folder, **you are here** |
| `$` | ready for your command |

## Command spotlight

| Command | Stands for | Meaning |
|---------|------------|---------|
| `echo` | (English: echo) | Print text to the screen |
| `pwd` | **p**rint **w**orking **d**irectory | Where am I right now? |

## Let's practice

```bash
echo $SHELL
uname -a
pwd
```

| Line | Part | Meaning |
|------|------|---------|
| `echo $SHELL` | `echo` | Print text |
| | `$SHELL` | **`$` expands a variable.** `$SHELL` becomes the path to your shell (e.g. `/bin/bash`) |
| `uname -a` | `uname -a` | Print OS and kernel details |
| `pwd` | `pwd` | Print **where you are** in the folder tree |

## Your turn

Run the three commands above. Confirm you see a Unix shell and a sensible path.

**Why check `$SHELL`?** The same keyboard can run different interpreters. This workshop assumes **bash** or **zsh** (Unix). PowerShell on Windows uses different syntax; `ls` might work, but paths and many tools differ.

**Example:** On a shared HPC cluster, your prompt might show `user@login01:/scratch/project123 $`. The path tells you that you are on the login node in your project scratch space, not on your laptop.

## Debrief

> Always know where you are before blaming the command.

---

# Section 5: Navigation (pwd, ls, cd)

## Goal

Move around the project folder confidently.

## Command: `pwd`

| Part | Meaning |
|------|---------|
| `pwd` | **p**rint **w**orking **d**irectory |

Prints the full path of the folder you are in now. Run this whenever you are lost.

## Command: `ls`

| Part | Meaning |
|------|---------|
| `ls` | **l**i**s**t |

Lists file and folder **names** in the current directory. No options = short list.

## Command: `ls -lh`

| Part | Meaning |
|------|---------|
| `ls` | list program |
| `-l` | **l**ong format: permissions, owner, **size**, date |
| `-h` | **h**uman-readable sizes (KB, MB instead of bytes) |

**Goal:** See how large files are. Essential for `.fastq.gz` downloads before you analyse them.

```bash
ls -lh data/raw/
```

| Part | Meaning |
|------|---------|
| `ls` | **L**i**s**t files in a folder |
| `-l` | **L**ong format (size, date, permissions) |
| `-h` | **H**uman-readable sizes (KB, MB instead of bytes) |
| `data/raw/` | Folder to list (sequencing read downloads) |

You should see sizes like `182K` for `toy_1.fastq.gz` instead of a raw byte count.

## Command: `ls -la`

| Part | Meaning |
|------|---------|
| `ls` | list program |
| `-l` | long format (same as above) |
| `-a` | **a**ll files, including **hidden** files (names starting with `.`) |

**Goal:** See everything in a folder, including hidden config files (for example `.gitkeep`). Without `-a`, hidden files are omitted.

```bash
ls -la
```

| Part | Meaning |
|------|---------|
| `ls` | List program |
| `-l` | Long format (size, date, permissions) |
| `-a` | **A**ll files, including **hidden** names starting with `.` |

After you create `analysis/` in Section 7, `ls -la` in the project root will show that new folder alongside `data/` and `scripts/`.

## Command: `cd` and `cd ..`

| Part | Meaning |
|------|---------|
| `cd data` | **c**hange **d**irectory into the `data/` subfolder |
| `cd ..` | Go up one level to the **parent** folder |
| `cd ../..` | Go up two levels |

Paths are relative to where you stand. `cd data/raw` only works if a `data/` folder exists in your current location.

## Command spotlight (quick reference)

| Command | Stands for | Meaning |
|---------|------------|---------|
| `pwd` | print working directory | Where am I? |
| `ls` | list | File names in this folder |
| `ls -lh` | list, long, human | List with readable file sizes |
| `ls -la` | list, long, all | List all files including hidden |
| `cd` | change directory | Enter a folder |
| `cd ..` | change directory up | Go one level up |

## Let's practice

```bash
pwd
ls
ls -lh
ls -la
cd data
ls
cd raw
ls -lh
cd ../..
```

| Line | Meaning |
|------|---------|
| `pwd` | Where am I? |
| `ls` | Names in current folder |
| `ls -lh` | List with human-readable file sizes |
| `ls -la` | List all files including hidden |
| `cd data` | Move **into** the `data/` subfolder |
| `ls` | List inside `data/` |
| `cd raw` | Move into `data/raw/` |
| `ls -lh` | List FASTQ files with sizes |
| `cd ../..` | Go **up two levels** (`..` = parent folder, twice = back to workshop root) |

## Your turn: treasure hunt

1. Print your current location
2. List files in the current folder
3. Go to `data/raw/` and list FASTQ files
4. Return to the workshop root
5. Go to `data/metadata/` and find `samples.tsv`

See [exercises/exercise_02_navigation.md](exercises/exercise_02_navigation.md).

## Expected commands

```bash
pwd
ls
cd data/raw
ls
cd ../..
cd data/metadata
ls
```

| Line | Meaning |
|------|---------|
| `pwd` | Confirm starting location |
| `cd data/raw` | Enter the raw sequencing folder |
| `cd ../..` | From `data/raw/`, go up to `data/` then to workshop root |
| `cd data/metadata` | Enter metadata folder from root |
| `ls` | Confirm `samples.tsv` is listed |

## Common errors

```text
No such file or directory
```

→ Run `pwd`. You are probably in the wrong folder.

**Tip:** After `cd data/raw`, run `ls -lh`. You should see `toy_1.fastq.gz` and `toy_2.fastq.gz` with sizes around 180 KB and 160 KB. The `-lh` flags matter for compressed files: you learn how much disk space raw data consumes before any analysis.

## Debrief

> Most terminal errors are location errors. Always ask: **where am I** and **where is my file?**

---

# Section 6: Tab completion, history, and stopping commands

## Goal

Work faster and recover when something goes wrong.

## Keyboard skills (not commands)

| Key | What it does |
|-----|--------------|
| **Tab** | Autocomplete file or folder names |
| **↑** | Previous command |
| **Ctrl + C** | Stop the current command |
| `clear` | Clean the screen |

## Command spotlight

| Command | Stands for | Meaning |
|---------|------------|---------|
| `history` | (English) | List previous commands |
| `clear` | (English) | Clear the terminal screen |

## Let's practice: Tab

From the workshop root, type:

```bash
cd da
```

| Part | Meaning |
|------|---------|
| `cd` | **C**hange **d**irectory |
| `da` | Start of folder name — incomplete on purpose |

Press **Tab**. The shell **autocompletes** `da` → `data/`.

You still need to press **Enter** after Tab to run the command.

## Let's practice: deliberate hang

```bash
cat
```

| Part | Meaning |
|------|---------|
| `cat` | **Cat**enate / print input. With **no file**, it waits for you to type text |

The terminal waits for input. Press **Ctrl + C** to stop the waiting command.

**Tab on long filenames:** Type `gzip -dc data/raw/toy` and press Tab twice if needed, the shell completes `toy_1.fastq.gz` or offers both files. This saves typing and prevents typos in paths.

**Example elsewhere:** On a server with 96 samples, Tab-completion from `sample_` might cycle through `sample_01_R1.fastq.gz`, `sample_02_R1.fastq.gz`, …; faster and safer than typing each name by hand.

## Debrief

> The terminal is interactive. If something is waiting or wrong, **Ctrl + C** is your escape hatch.

---

# Section 7: Paths and safe project structure


## Goal

Understand file addresses and protect raw data.

## Concept

```bash
data/raw/toy_1.fastq.gz
```

| Part | Meaning |
|------|---------|
| `data/` | First folder from where you stand |
| `raw/` | Subfolder inside `data/` |
| `toy_1.fastq.gz` | Filename (the `/` characters are **separators**, not commands) |

This is a **path** (an address), not a command. It means: go to `data` → then `raw` → then the file `toy_1.fastq.gz`.

## Safety traffic light

| Level | Commands | Rule |
|-------|----------|------|
| 🟢 Green | `pwd`, `ls`, `head`, `grep`, `gzip -dc`, `zgrep` | Inspect or stream (safe on raw data) |
| 🟠 Orange | `mkdir`, `cp`, `mv`, `>` | Create or copy (be intentional) |
| 🔴 Red | `rm`, `>` on existing file | Delete or overwrite, dangerous |

> **Raw data are sacred.** Write new outputs into `analysis/` step folders.

## Command spotlight

| Command | Stands for | Meaning |
|---------|------------|---------|
| `mkdir` | **m**a**k**e **dir**ectory | Create a folder |
| `cp` | **c**o**p**y | Copy a file |
| `mv` | **m**o**v**e | Move or rename a file |
| `rm` | **r**e**m**ove | Delete a file (careful!) |

## Your turn: paths

Write paths to `toy_1.fastq.gz`, `samples.tsv`, and `proteins.fa`. Verify with `ls`.

See [exercises/exercise_03_paths.md](exercises/exercise_03_paths.md) and [exercises/exercise_04_file_operations.md](exercises/exercise_04_file_operations.md).

## Let's practice: create your analysis folder

Every bioinformatics project needs a place for **outputs**, separate from raw data. Create it now:

```bash
mkdir -p analysis/01_qc analysis/02_metadata
ls -la
```

| Line / part | Meaning |
|-------------|---------|
| `mkdir` | **M**a**k**e **dir**ectory (create folders) |
| `-p` | Create **p**arent folders as needed; do not error if folder already exists |
| `analysis/01_qc` | QC output folder (numbered step name) |
| `analysis/02_metadata` | Metadata summary folder |
| `ls -la` | List all files in current folder to **confirm** new folders exist |

| Folder | Purpose |
|--------|---------|
| `analysis/01_qc/` | QC outputs (line counts, later FastQC) |
| `analysis/02_metadata/` | Metadata summaries (tissue counts, sample lists) |

Numbered prefixes keep folders in pipeline order. Same idea as `analysis/01_fastqc/`, `analysis/02_alignment/` in real RNA-seq projects.

## Let's practice: safe copy

```bash
mkdir -p my_analysis/analysis/01_qc
cp data/metadata/samples.tsv my_analysis/
ls data/metadata/          # original still here
ls my_analysis/            # your copy
```

| Line | Meaning |
|------|---------|
| `mkdir -p my_analysis/analysis/01_qc` | Create a **practice project** tree in one command |
| `cp source dest` | **C**o**p**y — duplicate file; original stays |
| `data/metadata/samples.tsv` | Source file (read-only workshop data) |
| `my_analysis/` | Destination folder (your copy lands here) |
| `ls data/metadata/` | Verify original is **unchanged** |
| `ls my_analysis/` | Verify copy exists |
| `# comment` | Text after `#` is ignored by the shell (notes for humans) |

**Example:** In a real lab, you might copy a sample sheet into a new project folder while leaving the original download archive untouched on a shared drive.

## Debrief

> In real projects, preserve raw data and write new outputs elsewhere.

---

# Section 8: Inspecting biomedical files (plain / uncompressed)


## Goal

Look inside files **without Excel**, starting with **plain text** files where commands work directly on the file path.

We begin with the simplest case: **uncompressed, readable text**. Compressed FASTQ comes in Section 9.

## Start here: `samples.tsv`

The metadata table is small, human-readable, and tab-separated; ideal for your first inspection commands:

```bash
head -n 5 data/metadata/samples.tsv
wc -l data/metadata/samples.tsv
grep tumour data/metadata/samples.tsv | head -n 3
```

| Line | Meaning |
|------|---------|
| `head -n 5 ...` | First 5 lines of the table |
| `wc -l ...` | **W**ord **c**ount, **l**ines only — total rows including header |
| `grep tumour ...` | Lines containing the text `tumour` |
| `\| head -n 3` | Pipe: show only the **first 3** matching lines |

| Command | What it does on plain files |
|---------|----------------------------|
| `head -n 5 file` | First 5 lines |
| `wc -l file` | Count lines |
| `grep pattern file` | Find matching lines |

No extra steps. The shell reads the file as text.

## Protein FASTA and GFF (also plain text)

```bash
head -n 5 data/reference/proteins.fa
head -n 5 data/annotation/pseudogenes_chr1.gff
grep -c "^>" data/reference/proteins_9seqs.fa
```

| Line | Meaning |
|------|---------|
| `head -n 5 proteins.fa` | First 5 lines — FASTA headers start with `>` |
| `head -n 5 pseudogenes_chr1.gff` | First 5 lines of genome annotation |
| `grep -c "^>" proteins_9seqs.fa` | **C**ount lines starting with `>` (`^` = start of line) = number of protein sequences |

Lines starting with `#` in GFF are metadata comments; data rows describe genomic features.

## Unzip a FASTQ archive: create `toy_1.fq`

The `.fastq.gz` files in `data/raw/` are **compressed**. To work with a plain-text copy, decompress one file into your output folder (not into `data/raw/`):

```bash
gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq
ls -lh analysis/01_qc/
```

| Part | Meaning |
|------|---------|
| `gunzip` | GNU unzip program for `.gz` files |
| `-c` | Write decompressed data to **stdout** (keeps the `.gz` in `data/raw/`) |
| `>` | Save that output to a new file |
| `analysis/01_qc/toy_1.fq` | Plain FASTQ in your output folder |

**Alternative (same result):** `gzip -dc data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq`

**Note:** The `unzip` command is for `.zip` archives. Sequencing files use `.gz`; use `gunzip` or `gzip -dc`.

**Do not run** `gunzip data/raw/toy_1.fastq.gz` without `-c`. That removes the `.gz` file in place.

Now inspect the plain file:

```bash
head -n 8 analysis/01_qc/toy_1.fq
wc -l analysis/01_qc/toy_1.fq
grep -c "^@" analysis/01_qc/toy_1.fq
```

| Line | Meaning |
|------|---------|
| `head -n 8 ...` | First 8 lines = **2 reads** (FASTQ uses 4 lines per read) |
| `wc -l ...` | Total line count (expect **10000**) |
| `grep -c "^@" ...` | Count lines starting with `@` (read headers) — another way to count reads |

**Read count** = lines ÷ 4 (expect **10000** lines → **2500** reads).

## FASTQ structure (4 lines per read)

```text
@SRR925709.1 HWUSI-EAS053R_0001:7:1:1029:3856 length=76
TGCAGCANTAATATAGCCATTGCCATCCTTATCAAACACACGGAATGCTTCTNN...
+
6AA;A.0%0*00-//AA>AAAAA@@9<6;99>>B>AAAAAAA@:@>B<<>...
```

| Line | Content |
|------|---------|
| 1 | `@` + read ID |
| 2 | DNA sequence |
| 3 | `+` (separator) |
| 4 | Quality scores |

**Why `N` appears:** The sequencer could not call that base confidently (normal in real data).

## Command spotlight (plain / uncompressed files)

| Command | Meaning |
|---------|---------|
| `head` / `tail` | First / last lines |
| `less` | Scroll (`q` to quit) |
| `cat` | Print whole file (avoid on huge files) |
| `wc -l` | Count lines |
| `grep` | Search text |

## Let's practice (run in order)

```bash
head -n 5 data/metadata/samples.tsv
head -n 5 data/reference/proteins.fa
gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq
head -n 8 analysis/01_qc/toy_1.fq
wc -l analysis/01_qc/toy_1.fq
ls -lh data/raw/
ls -lh analysis/01_qc/
```

| Line | Meaning |
|------|---------|
| Lines 1–2 | Inspect plain metadata and protein files |
| `gunzip -c ... > analysis/01_qc/toy_1.fq` | Decompress to **stdout** (`-c`), **redirect** (`>`) into a new plain file in `analysis/` |
| `head -n 8 ...` | View first 2 reads in the plain file |
| `wc -l ...` | Count lines in plain FASTQ |
| `ls -lh data/raw/` | Confirm `.gz` archive still in raw data folder |
| `ls -lh analysis/01_qc/` | Confirm new `.fq` file was created |

Notice `toy_1.fastq.gz` remains in `data/raw/`. You created `toy_1.fq` in `analysis/01_qc/`. **`head` on the `.gz` file still shows gibberish** until you stream it (Section 9).

## Your turn

See [exercises/exercise_05_file_inspection.md](exercises/exercise_05_file_inspection.md) (Parts A–C).

## Debrief

> On plain files, the pattern is simple: `program file`. Same commands work on `.tsv`, `.fa`, `.gff`, and uncompressed `.fq` / `.fastq`.

---

# Section 9: Compressed raw data (.fastq.gz)


## Goal

Inspect archive downloads (`.fastq.gz`) **without decompressing them on disk** and see how commands differ from Section 8.

## Side-by-side: same task, two file types

| Task | Plain (`analysis/01_qc/toy_1.fq`) | Compressed (`data/raw/toy_1.fastq.gz`) |
|------|-----------------------------------|----------------------------------------|
| First 8 lines | `head -n 8 analysis/01_qc/toy_1.fq` | `gzip -dc data/raw/toy_1.fastq.gz \| head -n 8` |
| Count lines | `wc -l analysis/01_qc/toy_1.fq` | `gzip -dc data/raw/toy_1.fastq.gz \| wc -l` |
| Count read headers | `grep -c "^@" analysis/01_qc/toy_1.fq` | `zgrep -c "^@" data/raw/toy_1.fastq.gz` |
| Search headers | `grep "^@" analysis/01_qc/toy_1.fq \| head` | `zgrep "^@" data/raw/toy_1.fastq.gz \| head` |

**Same reads, same answers**; only the command changes because of compression.

**Real-world rule:** Keep the `.fastq.gz` archive in `data/raw/`. In Section 8 you wrote a plain copy to `analysis/01_qc/` to learn both workflows. For large projects, prefer **streaming** (below) instead of unpacking every file to disk.

## Concept: stream without writing a new file

```text
data/raw/toy_1.fastq.gz  ──gzip -dc──►  text in memory ──►  head / wc / grep
                              │
                              └── nothing written back to data/raw/
```

**Never do this on raw downloads:**

```bash
gunzip data/raw/toy_1.fastq.gz    # ❌ destroys the .gz archive in place
```

| Part | Meaning |
|------|---------|
| `gunzip file.gz` | Decompress **in place** — replaces `.gz` with plain file and **deletes** the archive |
| `# ❌ ...` | Comment explaining why this is unsafe on raw downloads |

**Instead:**

```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 8    # ✅ read first 2 reads only
```

| Part | Meaning |
|------|---------|
| `gzip -dc` | Decompress to a **stream** in memory |
| `\| head -n 8` | Take only first 8 lines (2 reads) from that stream |
| `# ✅ ...` | Comment — safe: original `.gz` untouched |

**Analogy:** A `.fastq.gz` file is like a sealed zip bag of reads. `gzip -dc` is a pipe that lets you sniff the contents without emptying the bag onto the floor.

## Command spotlight (compressed files)

| Command | Stands for | Meaning |
|---------|------------|---------|
| `gzip` | GNU zip | Compress / inspect `.gz` files |
| `gzip -dc` | gzip decompress to stdout | Stream decompressed text to terminal or pipe |
| `gunzip -c` | same as `gzip -dc` | Alternative spelling |
| `zcat` / `gzcat` | z + cat | Stream `.gz` to stdout (Linux: `zcat`; macOS: often `gzcat`) |
| `zgrep` | z + grep | Search inside `.gz` without decompressing |
| `gzip -l` | gzip list | Show compressed vs uncompressed size |

**Platform note:** On **macOS**, if `zcat` fails, use `gzip -dc` or `gzcat`. On **Linux / Codespaces**, `zcat` usually works.

## Let's practice: inspect compressed FASTQ

```bash
# File size on disk (compressed)
ls -lh data/raw/*.fastq.gz
gzip -l data/raw/toy_1.fastq.gz

# First 8 lines = first 2 reads (stream, then head)
gzip -dc data/raw/toy_1.fastq.gz | head -n 8

# Count lines (= 4 × number of reads)
gzip -dc data/raw/toy_1.fastq.gz | wc -l

# Search read headers without full decompression
zgrep "^@" data/raw/toy_1.fastq.gz | head -n 3
```

| Line | Meaning |
|------|---------|
| `ls -lh data/raw/*.fastq.gz` | List **all** `.fastq.gz` files; `*` = wildcard (any name) |
| `gzip -l file.gz` | Show compressed vs uncompressed size **without** decompressing |
| `gzip -dc ... \| head -n 8` | Stream-decompress, show first 2 reads |
| `gzip -dc ... \| wc -l` | Stream-decompress, count text lines (not compressed bytes) |
| `zgrep "^@" file.gz` | Search **inside** `.gz` for lines starting with `@` (read headers) |
| `\| head -n 3` | Show only first 3 matches |
| `# ...` | Comment — ignored by shell, notes for you |

## Expected results

| Command | Expected |
|---------|----------|
| `wc -l` on toy_1 | `10000` lines → **2500 reads** |
| `wc -l` on toy_2 | `10000` lines → **2500 reads** |
| First header | `@SRR925709.1 HWUSI-EAS053R_...` |

## Let's practice: both files with a loop

Real projects have many `.fastq.gz` files. Same pattern for each:

```bash
for f in data/raw/*.fastq.gz
do
    echo "=== $f ==="
    lines=$(gzip -dc "$f" | wc -l | tr -d ' ')
    reads=$((lines / 4))
    echo "Lines: $lines  Reads: $reads"
done
```

| Line / part | Meaning |
|-------------|---------|
| `for f in data/raw/*.fastq.gz` | **Loop:** run the block once for each matching file; store filename in variable `f` |
| `*.fastq.gz` | Wildcard — every file ending in `.fastq.gz` |
| `do` … `done` | Start and end of the loop body |
| `echo "=== $f ==="` | Print a banner line; **`$f`** = insert current filename (e.g. `=== data/raw/toy_1.fastq.gz ===`) |
| `lines=$( ... )` | **Command substitution:** run command inside `$(...)`, store its output in variable `lines` |
| `gzip -dc "$f"` | Stream-decompress the current file; **`"$f"`** = filename in quotes (safe if names have spaces) |
| `\| wc -l` | Count lines in the decompressed stream |
| `\| tr -d ' '` | **Tr**anslate/delete spaces — `wc` may pad with spaces; this keeps only digits |
| `reads=$((lines / 4))` | **Arithmetic:** `$(( ))` calculates `lines ÷ 4` (4 lines per FASTQ read) |
| `echo "Lines: $lines  Reads: $reads"` | Print results; **`$lines`** and **`$reads`** expand to stored numbers |

**About `$`:** `$name` means “replace with the value of variable `name`”. Without `$`, the shell treats `f` as plain text.

## Your turn

Complete FASTQ parts of [exercises/exercise_05_file_inspection.md](exercises/exercise_05_file_inspection.md) and [exercises/exercise_05b_compressed_fastq.md](exercises/exercise_05b_compressed_fastq.md).

## Common errors

| Mistake | What happens | Fix |
|---------|--------------|-----|
| `head toy_1.fastq.gz` | Gibberish binary | Use `gzip -dc ... \| head` |
| `gunzip` in `data/raw/` | Removes `.gz` file | Re-copy from backup; use streaming only |
| `wc -l file.gz` | Counts compressed bytes, not lines | `gzip -dc file.gz \| wc -l` |

## Debrief

> Real pipelines keep raw data gzipped. You stream, pipe, and save outputs under `analysis/`. Never rewrite `data/raw/`.

**Optional (5 min):** [Trace your data in SRA/ENA](#optional-trace-your-data-in-sraena)

---

# Section 10: Deliberate error practice


## Goal

Learn that errors are normal, interpretable, and recoverable.

## Error 1: File not found

```bash
ls wrong_folder
```

| Part | Meaning |
|------|---------|
| `ls` | List program |
| `wrong_folder` | Folder name that does **not** exist from your current location |

```text
ls: wrong_folder: No such file or directory
```

**Recovery:** `pwd` then `ls`

## Error 2: Command not found

```bash
grepp macroglobulin data/reference/proteins.fa
```

| Part | Meaning |
|------|---------|
| `grepp` | **Typo** — no program with this name exists |
| `macroglobulin` | Search pattern (would be correct with `grep`) |
| `data/reference/proteins.fa` | Input file |

```text
bash: grepp: command not found
```

**Recovery:** fix the typo → `grep`

## Error 3: Unclosed quote

```bash
grep "DDX11L1 data/annotation/pseudogenes_chr1.gff
```

| Problem | Meaning |
|---------|---------|
| Opening `"` | Shell expects a closing `"` before the command ends |
| Missing closing quote | Shell thinks you are still typing — command never finishes |

Terminal waits. **Recovery:** Ctrl + C

## Your turn

See [exercises/exercise_06_errors.md](exercises/exercise_06_errors.md).

## Debrief

> An error message is not a failure. It is information.

---

# Section 11: Searching with grep

## Goal

Search structured text files. This is a core bioinformatics skill.

## Command: `grep`

| Part | Meaning |
|------|---------|
| `grep` | **g**lobal **r**egular **e**xpression **p**rint |
| `"pattern"` | Text or regex to find (in quotes if it contains spaces or special characters) |
| `file` | Input file to search |

**Goal:** Answer "Which lines contain this text?"

```bash
grep "DDX11L1" data/annotation/pseudogenes_chr1.gff
```

| Part | Meaning |
|------|---------|
| `grep` | Search program |
| `"DDX11L1"` | Text pattern to find (quotes keep it one argument) |
| `data/annotation/pseudogenes_chr1.gff` | File to search |

## Command: `grep -c`

| Part | Meaning |
|------|---------|
| `-c` | **c**ount matching lines only (prints a number, not the lines) |

**Goal:** Answer "How many lines match?"

```bash
grep -c "^>" data/reference/proteins_9seqs.fa
```

| Part | Meaning |
|------|---------|
| `grep -c` | **C**ount matching lines only (prints a number) |
| `"^>"` | Pattern: line **starts** with `>` (FASTA header) |
| `proteins_9seqs.fa` | Protein FASTA file |

## Command: `grep -v`

| Part | Meaning |
|------|---------|
| `-v` | **v**invert match (show lines that do **not** match) |

**Goal:** Skip comment lines in VCF or GFF.

```bash
grep -v "^#" data/variants/variants.vcf
```

| Part | Meaning |
|------|---------|
| `grep -v` | **V**invert — show lines that do **not** match |
| `"^#"` | Pattern: line starts with `#` (VCF header/comment lines) |
| `variants.vcf` | Variant call file |

## Pattern: `^` (start of line)

| Pattern | Meaning |
|---------|---------|
| `^>` | Line **starts** with `>` (FASTA headers) |
| `^@` | Line **starts** with `@` (FASTQ headers) |
| `^#` | Line **starts** with `#` (comment lines) |

The caret `^` means "beginning of line" in regular expressions.

## grep vs awk (preview)

| Question | Tool |
|----------|------|
| "Lines containing tumour" | `grep` |
| "Column 1 where column 3 is tumour" | `awk` (Section 16) |

Full comparison in Section 16.

## Command spotlight (quick reference)

| Command | Meaning |
|---------|---------|
| `grep "text" file` | Find lines containing text |
| `grep -c "text" file` | Count matching lines |
| `grep -v "text" file` | Lines that do **not** match |
| `grep "^>" file` | FASTA headers |

## Let's practice

```bash
grep "^>" data/reference/proteins_9seqs.fa
grep -c "^>" data/reference/proteins_9seqs.fa
grep "macroglobulin" data/reference/proteins.fa
grep "DDX11L1" data/annotation/pseudogenes_chr1.gff
grep "pseudogene" data/annotation/pseudogenes_chr1.gff
grep -v "^#" data/variants/variants.vcf
grep -v "^#" data/annotation/pseudogenes_chr1.gff | head
```

| Line | Meaning |
|------|---------|
| `grep "^>" ...` | List FASTA header lines |
| `grep -c "^>" ...` | Count sequences (expect **9**) |
| `grep "macroglobulin" ...` | Find protein name in descriptions |
| `grep "DDX11L1" ...` | Find gene name in GFF annotation |
| `grep "pseudogene" ...` | Find feature type in GFF |
| `grep -v "^#" variants.vcf` | Show variant rows only (skip `#` header lines) |
| `grep -v "^#" gff \| head` | Non-comment GFF lines, first 10 only |

## Your turn

See [exercises/exercise_07_grep.md](exercises/exercise_07_grep.md).

Expected: **9** protein sequences; **DDX11L1** and **WASH7P** pseudogenes in GFF.

## Debrief

> Many bioinformatics formats are structured text. GFF annotation, protein FASTA, and VCF variants all reward the same grep skills.

---

# Section 12: one command, many files


## Goal

Apply one command to many files at once.

## Concept

```text
*.fastq.gz  =  all gzip-compressed FASTQ files in a folder
```

**Important:** `wc -l` does **not** count lines inside `.gz` files correctly. Wildcards still help you **list** and **loop** over many compressed files.

## Let's practice

```bash
ls -lh data/raw/*.fastq.gz
ls data/reference/*.fa
```

| Line | Meaning |
|------|---------|
| `data/raw/*.fastq.gz` | Wildcard `*` = all files matching this pattern in `data/raw/` |
| `ls -lh ...` | List those files with human-readable sizes |
| `data/reference/*.fa` | All FASTA files in `reference/` |

## Count lines in every `.fastq.gz` with a loop

```bash
for f in data/raw/*.fastq.gz
do
    lines=$(gzip -dc "$f" | wc -l | tr -d ' ')
    echo "$lines $f"
done
```

| Line / part | Meaning |
|-------------|---------|
| `for f in ...` | Loop variable `f` takes each filename in turn |
| `lines=$(gzip -dc "$f" \| wc -l \| tr -d ' ')` | Decompress, count lines, strip spaces, store in `lines` |
| `echo "$lines $f"` | Print line count and filename on one line |

Expected: **10000** lines per file → **2500 reads** each.

## Your turn

```bash
ls data/raw/*.fastq.gz
for f in data/raw/*.fastq.gz; do echo "$f"; gzip -dc "$f" | wc -l; done
```

| Line | Meaning |
|------|---------|
| `ls data/raw/*.fastq.gz` | List all compressed FASTQ files |
| `for f in ...; do ...; done` | One-line loop form (`;` separates commands on one line) |
| `echo "$f"` | Print current filename |
| `gzip -dc "$f" \| wc -l` | Line count for that file (may include leading spaces from `wc`) |

## Debrief

> Wildcards select many files; loops apply the same **streaming** command to each. That is how real QC scripts scale to 96 samples.

---

# Section 13: Columns, pipes, and metadata summaries


## Goal

Summarise metadata tables like a QC check before analysis.

## Our metadata (20 samples)

```text
sample_id    patient_id    tissue    condition    batch
S01          P001          tumour    case         B1
S02          P001          normal    control      B1
...          ...           ...       ...          ...
S20          P016          tumour    case         B5
```

Full table: `data/metadata/samples.tsv`

## Command spotlight

| Command | Stands for | Meaning |
|---------|------------|---------|
| `cut` | (English) | Extract columns |
| `sort` | (English) | Sort lines alphabetically |
| `uniq` | **uniq**ue | Remove adjacent duplicates |
| `uniq -c` | unique + count | Count repeated neighbouring lines |
| `\|` | pipe | Send output of one command into the next |

## Pipe concept

```text
cut column 3  →  sort values  →  count unique values
```

```bash
cut -f 3 data/metadata/samples.tsv | sort | uniq -c
```

| Part | Meaning |
|------|---------|
| `cut -f 3` | **Cut** column **3** (tissue) from tab-separated file |
| `\| sort` | Sort lines alphabetically so identical values sit together |
| `\| uniq -c` | **C**ount **uniq**ue neighbouring lines |

## Let's practice

```bash
cut -f 1 data/metadata/samples.tsv
cut -f 3 data/metadata/samples.tsv | sort | uniq -c
cut -f 5 data/metadata/samples.tsv | sort | uniq -c
```

| Line | Meaning |
|------|---------|
| `cut -f 1 ...` | Print column 1 only (sample IDs) |
| `cut -f 3 ... \| sort \| uniq -c` | Count samples per **tissue** type |
| `cut -f 5 ... \| sort \| uniq -c` | Count samples per **batch** |

## Your turn

See [exercises/exercise_08_metadata_summary.md](exercises/exercise_08_metadata_summary.md).

## Debrief

> This is the beginning of metadata QC. Before modelling, ask: **what samples do we actually have?**

---

# Section 14: Saving outputs with redirection


## Goal

Save results into named files in `analysis/`.

## Concept

```text
command           → prints to screen
command > file    → saves to file (overwrites!)
command >> file   → appends to file
```

## Let's practice

```bash
mkdir -p analysis/01_qc analysis/02_metadata

for f in data/raw/*.fastq.gz
do
    lines=$(gzip -dc "$f" | wc -l | tr -d ' ')
    echo "$lines $f"
done > analysis/01_qc/fastq_line_counts.txt

cut -f 3 data/metadata/samples.tsv | sort | uniq -c > analysis/02_metadata/tissue_counts.txt
cat analysis/01_qc/fastq_line_counts.txt
ls -lh analysis/01_qc/ analysis/02_metadata/
```

| Line / part | Meaning |
|-------------|---------|
| `mkdir -p ...` | Ensure output folders exist |
| `for f in ...` … `done > file` | **`>` after `done`** saves **all** loop output into the file (overwrites if file exists) |
| `echo "$lines $f"` | One line per FASTQ: count + filename |
| `cut ... > tissue_counts.txt` | Save tissue summary to metadata folder |
| `cat file` | Print saved file to screen to verify |
| `ls -lh analysis/...` | Confirm files exist with sizes |

## Your turn

1. Save FASTQ line counts to `analysis/01_qc/fastq_line_counts.txt`
2. Save tissue counts to `analysis/02_metadata/tissue_counts.txt`
3. View both with `cat`

## Common errors

Using `>` on an existing file **overwrites** it without warning. Always write to `analysis/`, never to `data/raw/` (and never gunzip there).

## Debrief

> The terminal becomes useful for science when outputs are saved, named, and organised.

---

# Section 15: Editing files with nano and vim


## Goal

Create and edit small text files in the terminal.

## nano, beginner friendly (use this in the workshop)

| Command | Stands for | Meaning |
|---------|------------|---------|
| `nano` | (editor name) | Simple terminal text editor |

```bash
nano analysis/02_metadata/workshop_notes.txt
```

| Part | Meaning |
|------|---------|
| `nano` | Simple terminal text editor |
| `analysis/02_metadata/workshop_notes.txt` | File to create or edit (path includes folder + filename) |

| Shortcut | Action |
|----------|--------|
| Type normally | Enter text |
| **Ctrl + O** | Save (write **O**ut) |
| **Enter** | Confirm filename |
| **Ctrl + X** | Exit |

### Exercise

Create `analysis/02_metadata/workshop_notes.txt` with three lines describing the tissue types in our metadata.

## vim, survival commands only

| Command | Stands for | Meaning |
|---------|------------|---------|
| `vim` | **vi** **im**proved | Powerful terminal editor (common on servers) |

You will encounter vim on remote servers and HPC clusters. You only need to survive, not master it.

```bash
vim analysis/02_metadata/workshop_notes.txt
```

| Part | Meaning |
|------|---------|
| `vim` | **Vi** **im**proved — powerful editor common on servers |
| `analysis/02_metadata/workshop_notes.txt` | Same notes file as in the nano exercise |

| Key | Action |
|-----|--------|
| `i` | Enter **Insert** mode (now you can type) |
| **Esc** | Leave Insert mode |
| `:wq` | **W**rite (save) and **q**uit |
| `:q!` | Quit **without** saving (escape hatch) |

### Exercise

Open the same file in vim. Add one line. Save with `:wq`.

## Debrief

> Use nano when you have a choice. If you are stuck in vim: **Esc**, then **:q!**

---

# Section 16: awk for metadata filtering

## Goal

Filter rows and columns in tab-separated tables.

## grep vs awk: when to use which?

Both tools read text files line by line. They solve different problems.

| | **grep** | **awk** |
|---|----------|---------|
| **Best for** | Find lines that **contain** (or exclude) a text pattern | Work with **columns** and **row conditions** |
| **Thinks in** | Lines (whole row as text) | Fields (column 1, column 2, …) |
| **Typical question** | "Which lines mention DDX11L1?" | "Print column 1 where column 3 equals tumour" |
| **Header row** | Often included unless you filter it | Skip with `NR > 1` |
| **Example** | `grep tumour samples.tsv` | `awk -F '\t' 'NR>1 && $3=="tumour" {print $1}' samples.tsv` |
| **Count matches** | `grep -c pattern file` | `awk ... \| wc -l` or awk built-in counting |
| **Combine columns** | Not designed for this | `awk '{print $1, $3}' file` |

**Rule of thumb:** If the answer depends on **which column** a value is in, use **awk**. If you only need to know whether a line **contains** text, use **grep**.

## Command: `awk`

## Key ideas

```text
-F '\t'     columns separated by tabs
$1, $2, $3  column 1, 2, 3
NR          row number
NR > 1      skip the header row
```

## Let's practice

```bash
awk -F '\t' '{print $1, $3}' data/metadata/samples.tsv
awk -F '\t' 'NR > 1 && $3 == "tumour" {print $1}' data/metadata/samples.tsv
awk -F '\t' 'NR > 1 && $3 == "tumour" {print $1}' data/metadata/samples.tsv > analysis/02_metadata/tumour_samples.txt
```

| Line / part | Meaning |
|-------------|---------|
| `awk` | Column-aware text processor |
| `-F '\t'` | **F**ield separator = tab (columns in TSV) |
| `'{print $1, $3}'` | For each row, print column 1 and column 3 |
| `$1`, `$3` | **`$` + number** = column 1, column 3 (awk field, not shell variable) |
| `NR > 1` | **N**umber of **R**ecord — skip row 1 (header) |
| `$3 == "tumour"` | Keep rows where column 3 equals `tumour` |
| `{print $1}` | Print sample ID only |
| `> analysis/02_metadata/tumour_samples.txt` | Save output to file |

## Your turn

See [exercises/exercise_09_awk.md](exercises/exercise_09_awk.md).

Expected tumour IDs: S01, S03, S05, S07, S08, S11, S12, S14, S16, S18, S20 (11 tumour samples).

## Debrief

> `awk` answers questions like: *give me rows where column 3 equals "tumour".*

---

# Section 17: Scripts and reproducibility


## Goal

Run many commands reproducibly from a script file.

## Command spotlight

| Command | Stands for | Meaning |
|---------|------------|---------|
| `bash` | **B**ourne **a**gain **sh**ell | Run commands from a script file |

## Concept

```text
manual clicking  →  one command  →  several commands  →  script  →  reproducible workflow
```

A script is a **recipe**; the exact steps, rerunnable anytime.

## Let's practice

Open and inspect the provided script:

```bash
cat scripts/basic_report.sh
bash scripts/basic_report.sh
ls -lh analysis/
cat analysis/02_metadata/tumour_samples.txt
```

| Line | Meaning |
|------|---------|
| `cat scripts/basic_report.sh` | Print the script text so you can read the recipe |
| `bash scripts/basic_report.sh` | Run the script with the **bash** shell |
| `ls -lh analysis/` | List new output files and sizes |
| `cat analysis/02_metadata/tumour_samples.txt` | View one saved result |

The script creates:

- `analysis/01_qc/fastq_line_counts.txt`
- `analysis/01_qc/protein_sequence_count.txt`
- `analysis/02_metadata/tissue_counts.txt`
- `analysis/02_metadata/tumour_samples.txt`

## Optional: tiny loop (if time allows)

```bash
for file in data/raw/*.fastq.gz
do
    echo "$file"
    wc -l "$file"
done
```

| Line / part | Meaning |
|-------------|---------|
| `for file in ...` | Loop over each `.fastq.gz` file |
| `echo "$file"` | Print filename |
| `wc -l "$file"` | Count lines **in the compressed file on disk** — **wrong for `.gz`** (counts bytes, not reads). Prefer `gzip -dc "$file" \| wc -l` |

## Debrief

> Instead of remembering what you clicked, you have a recipe that can be rerun and shared.

---

# Section 18: real bioinformatics tools


## Goal

See that today's grammar applies to professional tools.

## Same pattern everywhere

```text
program + options + input → output
```

## Examples (conceptual)

```bash
# Quality control
fastqc data/raw/toy_1.fastq.gz -o analysis/01_qc

# Alignment (later course modules)
STAR --readFilesIn toy_1.fq toy_2.fq --genomeDir STARref ...
```

| Line / part | Meaning |
|-------------|---------|
| `# Quality control` | Comment — not run today |
| `fastqc` | QC program for sequencing reads |
| `data/raw/toy_1.fastq.gz` | Input reads |
| `-o analysis/01_qc` | **O**utput folder for QC reports |
| `STAR` | RNA-seq aligner (example only) |
| `--readFilesIn toy_1.fq toy_2.fq` | Paired input files |
| `--genomeDir STARref ...` | Reference index folder (`...` = more options omitted) |

| Tool | Purpose |
|------|---------|
| FastQC | Quality control of sequencing reads |
| STAR | Splice-aware aligner (splice-aware RNA-seq aligner) |
| samtools | Work with alignment files (BAM) |
| bcftools | Work with variant files (VCF) |

You do not need to install these today. You need to recognise the **grammar**.

## Debrief

> Today we learned the grammar. Later, we use more specialised programs, with the same structure.

---

## What we learned

Check what you can now do:

- [ ] I can explain: **terminal → shell → program → file → output**
- [ ] I know where I am (`pwd`) and how to move (`cd`, `cd ..`)
- [ ] I can use Tab, ↑, and Ctrl + C
- [ ] I understand paths like `data/raw/toy_1.fastq.gz`
- [ ] I can stream **compressed** FASTQ (`.fastq.gz`) with `gzip -dc` and `zgrep` without gunzip-ing raw data
- [ ] I can inspect plain-text FASTA (`>` headers), GFF, and TSV metadata
- [ ] I can search with `grep`, summarise with `cut | sort | uniq -c`, and filter with `awk`
- [ ] I save outputs to step folders under `analysis/` and never overwrite raw data
- [ ] I can edit a file with nano and exit vim with `:q!`
- [ ] I ran a bash script and understand how this connects to FastQC and BWA

### Three things to try this week

1. Stream the first read: `gzip -dc data/raw/toy_1.fastq.gz | head -n 8`
2. Summarise any TSV with `cut -f N file | sort | uniq -c`
3. Run `bash scripts/basic_report.sh` and inspect `analysis/01_qc/` and `analysis/02_metadata/`

---

## Command reference

| Command | Stands for / origin | What it does |
|---------|---------------------|--------------|
| `pwd` | print working directory | Where am I? |
| `ls` | list | What is here? |
| `cd` | change directory | Go to a folder |
| `cp` | copy | Copy a file |
| `mv` | move | Move or rename |
| `rm` | remove | Delete (careful!) |
| `mkdir` | make directory | Create a folder |
| `cat` | concatenate | Print file contents |
| `head` |, | First lines |
| `tail` |, | Last lines |
| `less` | less is more | Scroll through file |
| `wc -l` | word count, lines | Count lines |
| `grep` | global regular expression print | Search text |
| `cut` |, | Extract columns |
| `sort` |, | Sort lines |
| `uniq -c` | unique, count | Count duplicates |
| `awk` | Aho, Weinberger, Kernighan | Column filtering |
| `echo` |, | Print text |
| `clear` |, | Clear screen |
| `history` |, | Previous commands |
| `nano` |, | Simple editor |
| `vim` | vi improved | Advanced editor |
| `bash` | Bourne again shell | Run a script |
| `gzip -dc` | gzip decompress to stdout | Stream `.gz` without removing archive |
| `gzip -l` | gzip list | Show compressed vs uncompressed size |
| `zgrep` | z + grep | Search inside `.gz` files |
| `gunzip` | GNU unzip | Decompress to disk (avoid in `data/raw/`) |
| `zcat` / `gzcat` | z + cat | Stream decompress (use `gzip -dc` on macOS) |

**Pattern reminder:**

```text
program + options + input file → output
```

See also: [cheatsheet/terminal_overview.md](cheatsheet/terminal_overview.md)

---

## Optional: Trace your data in SRA/ENA

**Goal:** Show that workshop FASTQ reads are **public, traceable, and re-downloadable** by anyone.

### Why this matters

In bioinformatics, data often comes from **open archives**, not from a private lab USB stick. If a paper or colleague gives you a file, you should be able to answer:

> *Where did this come from, and can I get the same data myself?*

Our FASTQ files contain reads from run **SRR925709**, archived in **SRA** (NCBI, USA) and **ENA** (EBI, Europe). Same data, two public mirrors.

### Step 1: Find the accession in your file (terminal)

Every FASTQ read header carries the run ID:

```bash
zgrep -m1 "^@" data/raw/toy_1.fastq.gz
```

| Part | Meaning |
|------|---------|
| `zgrep` | Search **inside** a `.gz` file (like `grep` + decompression) |
| `-m1` | Stop after **1** match (**m**ax count) |
| `"^@"` | Pattern: line starts with `@` (FASTQ read header) |
| `data/raw/toy_1.fastq.gz` | Compressed FASTQ file |

Example output:

```text
@SRR925709.1 HWUSI-EAS053R_0001:7:1:1029:3856 length=76
```

The part **`SRR925709`** is the **run accession**; your address for the public database.

Extract it with grep:

```bash
zgrep -m1 "^@" data/raw/toy_1.fastq.gz | grep -o 'SRR[0-9]*'
```

| Part | Meaning |
|------|---------|
| `zgrep -m1 "^@" ...` | First read header from compressed FASTQ |
| `\| grep -o 'SRR[0-9]*'` | Pipe to grep; **`-o`** print **o**nly the matching part |
| `'SRR[0-9]*'` | Pattern: `SRR` followed by digits (run accession) |

Expected: `SRR925709`

The `@` line is not random. `SRR` = Sequence Read Run. The number is the global catalogue ID.

### Step 2: Look up the run in a browser (no login required)

Open either mirror:

| Database | URL |
|----------|-----|
| **ENA** (Europe) | https://www.ebi.ac.uk/ena/browser/view/SRR925709 |
| **NCBI SRA** (USA) | https://www.ncbi.nlm.nih.gov/sra/?term=SRR925709 |

On the ENA page you can see:

- Organism, instrument, library strategy (metadata)
- Links to download FASTQ files (often `.fastq.gz`)
- Sample and study accessions (e.g. **SRS** = sample, **SRP** = study (one level up))

**Hierarchy (simplified):**

```text
Study (SRP…)  →  Sample (SRS…)  →  Run (SRR…)  →  FASTQ file  →  individual reads (@SRR….1, @SRR….2, …)
```

Our workshop files contain **2500 reads** per FASTQ file (`toy_1` = R1, `toy_2` = R2), gzip-compressed like ENA downloads.

### Step 3: Verify the workshop file matches the archive (terminal + browser)

Compare the **first read** in your file with what the archive describes:

```bash
gzip -dc data/raw/toy_1.fastq.gz | head -n 4
```

| Part | Meaning |
|------|---------|
| `gzip -dc` | Stream-decompress to stdout |
| `\| head -n 4` | First 4 lines = **one complete read** |

Check:

1. Header starts with `@SRR925709.1`
2. Instrument text `HWUSI-EAS053R` matches Illumina metadata on ENA
3. Read length `76` matches the `length=76` in the header

Optional, confirm ENA knows this run (requires internet):

```bash
curl -s "https://www.ebi.ac.uk/ena/portal/api/filereport?accession=SRR925709&result=read_run&fields=run_accession,fastq_bytes,fastq_ftp&format=tsv"
```

| Part | Meaning |
|------|---------|
| `curl` | Download or query a URL from the terminal |
| `-s` | **S**ilent — hide progress meter |
| `"https://..."` | ENA API URL asking for file report for run `SRR925709` |
| `format=tsv` | Response as tab-separated text |

You should see `SRR925709` in the output and FTP links to `.fastq.gz` files.

### Step 4: Anyone can download the same data (preview)

You will use dedicated tools later in the course (`prefetch`, `fasterq-dump`, or ENA FTP). The idea for today:

```text
Accession SRR925709  →  public archive  →  same FASTQ anyone can download  →  same analysis possible
```

Example commands (**not run in this workshop**; require SRA tools installed):

```bash
# NCBI SRA Toolkit (later in course)
prefetch SRR925709
fasterq-dump SRR925709 --stdout | head -n 4
```

| Line | Meaning |
|------|---------|
| `# NCBI SRA Toolkit ...` | Comment — tools not installed in this workshop |
| `prefetch SRR925709` | Download run data from NCBI SRA to local cache |
| `fasterq-dump SRR925709` | Convert SRA format to FASTQ |
| `--stdout` | Write FASTQ to screen instead of files |
| `\| head -n 4` | Show first read only |

The first four lines should match the start of our `toy_1.fastq.gz`.

### The same idea for other workshop files

| File | How to trace it |
|------|-----------------|
| FASTQ reads | `SRR925709` in read headers → ENA / SRA |
| Proteins (`proteins.fa`) | `NP_000005.3` etc. → https://www.ncbi.nlm.nih.gov/protein/NP_000005.3 |
| GFF annotation | `GRCh38.p14` / `NC_000001.11` → NCBI Genome |
| Metadata (`samples.tsv`) | Example cohort table for practising commands |

See [data/DATA_SOURCES.md](data/DATA_SOURCES.md) for a full provenance table.

### Debrief

> Open science means **traceability**. If you publish an analysis, you cite the accession (e.g. SRR925709) so others can download the exact same reads and reproduce your work.

---

## Optional homework

Complete the capstone exercise: [exercises/exercise_10_final_report.md](exercises/exercise_10_final_report.md)

Build `scripts/final_report.sh` that inspects the whole project and saves a QC report to `analysis/`.

Good luck. You already know more than you think.
