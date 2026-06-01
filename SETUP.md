# Workshop Setup Guide

## Step 1: Unzip the workshop folder

After downloading from Discord:

```text
biomed-terminal-workshop/
├── WORKSHOP_MANUAL.md
├── data/
├── exercises/
...
```

On macOS: double-click the zip file, or run:

```bash
unzip biomed-terminal-workshop.zip
```

## Step 2: Open the workshop folder

You can work in any environment that gives you a **Unix terminal** and a **Markdown viewer**:

| Environment | Open folder | Markdown preview |
|-------------|-------------|------------------|
| **VS Code** | File → Open Folder | `Cmd+Shift+V` or `Ctrl+Shift+V` |
| **JupyterLab** | File → Open from Path | Right-click `.md` → Markdown Preview |
| **GitHub Codespaces** | Open codespace from repo | Same shortcuts as VS Code |

### VS Code layout (recommended)

1. Open **VS Code**
2. **File → Open Folder** → select the workshop folder
3. **Terminal → New Terminal**

Use three panels together:

- **File explorer** (left): browse folders
- **WORKSHOP_MANUAL.md** (centre): instructions
- **Terminal** (bottom): run commands

### Read the manual as formatted text (Markdown Preview)

Raw markdown is hard to read. Open a rendered view:

1. Click `WORKSHOP_MANUAL.md` in the file explorer
2. Press **Cmd + Shift + V** (Mac) or **Ctrl + Shift + V** (Windows/Linux)

For side-by-side view (source + preview): **Cmd + K**, then **V** (Mac) or **Ctrl + K**, then **V** (Windows/Linux).

This renders headings, tables and code blocks. You can still copy commands from the preview.

## Step 3: Environment check

Run these three commands:

```bash
echo $SHELL
uname -a
pwd
```

### Expected results by platform

| Platform | `$SHELL` | `uname` | `pwd` example |
|----------|----------|---------|---------------|
| macOS | `/bin/zsh` or `/bin/bash` | `Darwin ...` | `/Users/yourname/...` |
| Linux / WSL | `/bin/bash` | `Linux ...` | `/home/yourname/...` |
| GitHub Codespaces | `/bin/bash` | `Linux ...` | `/workspaces/...` |

### If you see PowerShell (Windows)

PowerShell is **not** the right environment for this workshop.

**Option A, WSL (recommended for Windows):**

1. Install [WSL with Ubuntu](https://learn.microsoft.com/en-us/windows/wsl/install)
2. Open **Ubuntu** from the Start menu
3. Navigate to your workshop folder (often under `/mnt/c/Users/...`)
4. Or open the folder in VS Code and select **WSL** as the terminal profile

**Option B, GitHub Codespaces (no local setup):**

1. Upload this folder to GitHub (see below)
2. Open a Codespace from the repository

## Step 4: Verify required commands

```bash
which head grep cut sort uniq awk wc nano vim bash gzip zgrep
gzip -dc data/raw/toy_1.fastq.gz | head -n 4
```

All `which` commands should return a path (e.g. `/usr/bin/grep`). The last line should show the first read header starting with `@SRR925709`.

---

## Optional: Upload to your GitHub account

You do not need GitHub to participate, the zip works locally. GitHub is useful for backup, Codespaces, and continuing after the course.

### First-time setup

```bash
cd path/to/biomed-terminal-workshop
git init
git add .
git commit -m "Terminal workshop materials"
```

Create a new empty repository on GitHub (no README), then:

```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git branch -M main
git push -u origin main
```

### Open a Codespace

1. Go to your repository on GitHub
2. **Code → Codespaces → Create codespace on main**
3. Wait for the environment to build
4. Open the terminal and run `pwd`. You should see `/workspaces/...`

---

## Troubleshooting quick fixes

| Problem | Fix |
|---------|-----|
| "command not found" | Check spelling; use ↑ to edit last command |
| "No such file or directory" | Run `pwd` and `ls`, you may be in the wrong folder |
| Terminal seems frozen | Press **Ctrl + C** |
| Can't find the terminal in VS Code | **View → Terminal** or `` Ctrl + ` `` |
| Pasted command does nothing | Click inside the terminal first, then paste |

For more scenarios, ask your instructor during class.

## Command reference

See [cheatsheet/terminal_overview.md](cheatsheet/terminal_overview.md) for every command used in this workshop.
