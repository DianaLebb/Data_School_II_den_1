# Terminal for Bioinformatics - Workshop

A 3-hour hands-on terminal workshop for working with sequencing data and bioinformatics files.

## Quick start

1. Unzip the workshop folder (if you received it via Discord)
2. Open this folder in **VS Code**, **JupyterLab** or another editor with Markdown preview
3. Open the integrated terminal: **Terminal → New Terminal**
4. Run the environment check (see below)
5. Open **[WORKSHOP_MANUAL.md](WORKSHOP_MANUAL.md)**, press **Cmd+Shift+V** (Mac) or **Ctrl+Shift+V** (Windows) for formatted preview in VS Code
6. Follow the manual from top to bottom

**Good signs:** `/bin/bash` or `/bin/zsh`, paths like `/Users/...` or `/workspaces/...`

**Bad sign for this workshop:** PowerShell or paths like `C:\Users\...`. See [SETUP.md](SETUP.md) for alternatives.

```bash
echo $SHELL
uname -a
pwd
```

## What's in this folder

| Folder / file | Purpose |
|---------------|---------|
| `WORKSHOP_MANUAL.md` | Main workshop. Follow this during class |
| `BDS_bioinformatics_glossary.md` | Terms and definitions |
| `cheatsheet/terminal_overview.md` | All commands used in the workshop |
| `data/` | Example files (FASTQ, metadata, reference, annotation) |
| `exercises/` | Practice tasks for each section |
| `scripts/` | Command recipes you can rerun |
| `SETUP.md` | Setup for Mac, Linux, WSL and Codespaces |

You will create an `analysis/` folder during Section 7 of the manual.

## Core message

> The terminal is a way to run small programs on files, combine them and save the exact recipe.

You are not expected to memorise commands. You are expected to understand the pattern:

```text
program + options + input file → output
```

## Optional: GitHub and Codespaces

If you uploaded this folder to GitHub, you can open a **Codespace** for a ready-made Linux environment:

1. Go to your repository on GitHub
2. Click **Code → Codespaces → Create codespace on main**

See [SETUP.md](SETUP.md) for how to push this folder to your own GitHub account.

## Optional homework

After the workshop, try [exercises/exercise_10_final_report.md](exercises/exercise_10_final_report.md) to build a complete QC report script.
