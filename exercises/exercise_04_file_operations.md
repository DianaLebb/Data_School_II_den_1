# Exercise 4: Safe File Operations

**Rule:** Never modify files in `data/raw/`. Write new outputs elsewhere.

## Tasks

1. Create a folder structure:

```bash
mkdir -p my_analysis/data my_analysis/results my_analysis/scripts
```

2. Copy the metadata file into your new project:

```bash
cp data/metadata/samples.tsv my_analysis/data/
```

3. Rename it inside your project:

```bash
mv my_analysis/data/samples.tsv my_analysis/data/metadata.tsv
```

4. Confirm the original metadata is **still** in `data/metadata/`

5. Confirm your copy is in `my_analysis/data/metadata.tsv`

## Check

```bash
ls data/metadata/
ls my_analysis/data/
```

The original `samples.tsv` must still exist in `data/metadata/`.
