# <span style="color:#1263FF">Biomed Data School: Bioinformatics Glossary</span>
**Course:** Terminal for Bioinformatics


**Purpose:** exact definitions plus simple explanations and examples

> You are not expected to memorise every command. You are expected to recognise the pattern: **terminal → shell → program → input file → output**.

## <span style="color:#1263FF">How each glossary entry is structured</span>

Each entry uses the same four-part structure:

| Label | Meaning |
|---|---|
| **Precise definition** | Technically correct definition in clear language |
| **Simple explanation** | What this means for a learner in practical terms |
| **Bioinformatics example** | A command, file or sequencing context where the term appears |
| **Common trap** | A mistake or misconception to avoid |

## <span style="color:#1263FF">Clickable term index</span>

| Term | Simple explanation | Section |
|---|---|---|
| [Terminal](#terminal) | The terminal is the window where you type commands. It does not itself understand bioinformatics; it gives you a place to talk to the shell. | Core mental model: terminal, shell, program, file, output |
| [Terminal emulator](#terminal-emulator) | Modern computers no longer need physical terminals. Apps such as macOS Terminal, Windows Terminal, GNOME Terminal and the VS Code terminal emulate that old device. | Core mental model: terminal, shell, program, file, output |
| [Shell](#shell) | The shell is the language layer. It takes what you type, works out what you mean and starts the right program. | Core mental model: terminal, shell, program, file, output |
| [Bash](#bash) | Bash is one of the most common languages for writing terminal commands. Many bioinformatics tutorials assume Bash syntax. | Core mental model: terminal, shell, program, file, output |
| [zsh](#zsh) | zsh is common on macOS. For this workshop, most commands work the same in Bash and zsh. | Core mental model: terminal, shell, program, file, output |
| [Linux](#linux) | For bioinformatics learners, Linux usually means the environment used on servers, clusters, cloud machines and containers. | Core mental model: terminal, shell, program, file, output |
| [Kernel](#kernel) | The kernel is the part students usually do not interact with directly. It makes it possible for programs to read files, use memory and communicate with hardware. | Core mental model: terminal, shell, program, file, output |
| [Unix-like system](#unix-like-system) | Linux and macOS are Unix-like enough for the workshop. That is why commands such as `pwd`, `ls`, `grep` and pipes work. | Core mental model: terminal, shell, program, file, output |
| [macOS / Darwin](#macos-darwin) | On a Mac, you can usually use a Unix-like terminal environment for beginner bioinformatics commands. | Core mental model: terminal, shell, program, file, output |
| [Windows Subsystem for Linux (WSL)](#windows-subsystem-for-linux-wsl) | WSL gives Windows users a Linux-style command line suitable for many bioinformatics workshops. | Core mental model: terminal, shell, program, file, output |
| [PowerShell](#powershell) | PowerShell is powerful, but it is not the Unix shell assumed in this workshop. | Core mental model: terminal, shell, program, file, output |
| [GUI](#gui) | GUI means point-and-click. Finder, Windows Explorer, Excel and most web apps are GUIs. | Core mental model: terminal, shell, program, file, output |
| [CLI](#cli) | CLI means you type instructions instead of clicking buttons. | Core mental model: terminal, shell, program, file, output |
| [Program](#program) | In a terminal command, the program is usually the first word. | Core mental model: terminal, shell, program, file, output |
| [Command](#command) | A command is the full line you type and run. | Core mental model: terminal, shell, program, file, output |
| [Option / flag](#option-flag) | Options are switches. They tell the program how to behave. | Core mental model: terminal, shell, program, file, output |
| [Argument](#argument) | Arguments are the pieces of information a program needs. | Core mental model: terminal, shell, program, file, output |
| [Input](#input) | Input is what the program reads. | Core mental model: terminal, shell, program, file, output |
| [Output](#output) | Output is what the program gives back. | Core mental model: terminal, shell, program, file, output |
| [Standard input (stdin)](#standard-input-stdin) | stdin is the invisible channel where a command can receive text from a pipe or the keyboard. | Core mental model: terminal, shell, program, file, output |
| [Standard output (stdout)](#standard-output-stdout) | stdout is the normal result stream, usually displayed on screen unless redirected. | Core mental model: terminal, shell, program, file, output |
| [Standard error (stderr)](#standard-error-stderr) | stderr is where error messages go so they can be separated from real data output. | Core mental model: terminal, shell, program, file, output |
| [Pipe](#pipe) | A pipe makes commands work as a chain: first do this, then send the result to that. | Core mental model: terminal, shell, program, file, output |
| [Redirection](#redirection) | Redirection saves output to a file or reads input from a file. | Core mental model: terminal, shell, program, file, output |
| [Script](#script) | A script is a saved recipe. Instead of remembering commands, you rerun the file. | Core mental model: terminal, shell, program, file, output |
| [Reproducibility](#reproducibility) | Reproducibility means future you or another scientist can understand and repeat what happened. | Core mental model: terminal, shell, program, file, output |
| [File](#file) | A file is one item on disk: a table, FASTQ file, FASTA file, script or report. | Files, folders and paths |
| [Directory / folder](#directory-folder) | A directory is a folder. It helps organise project files. | Files, folders and paths |
| [Working directory](#working-directory) | This is where you are standing in the project. | Files, folders and paths |
| [Path](#path) | A path is an address for a file or folder. | Files, folders and paths |
| [Relative path](#relative-path) | Relative paths are short addresses from where you are now. | Files, folders and paths |
| [Absolute path](#absolute-path) | Absolute paths are full addresses. | Files, folders and paths |
| [Parent directory](#parent-directory) | The parent folder is one step up. | Files, folders and paths |
| [Root](#root) | Root can mean the top of the filesystem (`/`) or, in another context, the administrator user. In this section, it means the filesystem root. | Files, folders and paths |
| [Project root](#project-root) | It is the main workshop folder containing `data/`, `scripts/`, `exercises/` and the manual. | Files, folders and paths |
| [Hidden file](#hidden-file) | Hidden files are usually configuration files that normal `ls` hides. | Files, folders and paths |
| [File extension](#file-extension) | The extension is a hint about file type. | Files, folders and paths |
| [Plain-text file](#plain-text-file) | A plain-text file can be inspected with `head`, `less`, `grep` and `awk`. | Files, folders and paths |
| [Binary file](#binary-file) | Binary files may look like gibberish if printed to the terminal. | Files, folders and paths |
| [Compressed file](#compressed-file) | Compressed files save disk space and transfer time. | Files, folders and paths |
| [Decompression](#decompression) | Decompression opens the compressed bag so the text can be read again. | Files, folders and paths |
| [Streaming](#streaming) | Streaming lets you inspect huge files without creating massive temporary copies. | Files, folders and paths |
| [Raw data](#raw-data) | Raw data are sacred. Preserve them unchanged so analysis can be repeated. | Files, folders and paths |
| [Analysis output](#analysis-output) | These are files you create during the workshop. | Files, folders and paths |
| [Metadata](#metadata) | Metadata tell you what each sample means biologically and technically. | Files, folders and paths |
| [Prompt](#prompt) | The prompt is the shell saying: you can type now. | Command-line syntax and recovery |
| [Environment variable](#environment-variable) | Environment variables store settings that programs can read. | Command-line syntax and recovery |
| [Tab completion](#tab-completion) | Pressing Tab lets the shell finish long names for you. | Command-line syntax and recovery |
| [Command history](#command-history) | The up arrow lets you reuse earlier commands instead of retyping them. | Command-line syntax and recovery |
| [Ctrl + C](#ctrl-c) | Ctrl + C is your emergency stop for a running or waiting command. | Command-line syntax and recovery |
| [Quote](#quote) | Quotes protect text patterns and spaces from being split by the shell. | Command-line syntax and recovery |
| [Wildcard](#wildcard) | A wildcard lets one command refer to many files. | Command-line syntax and recovery |
| [Regular expression](#regular-expression) | A regex is a search pattern more powerful than plain text. | Command-line syntax and recovery |
| [Caret `^`](#caret) | It means the pattern must appear at the beginning, not just anywhere. | Command-line syntax and recovery |
| [Loop](#loop) | A loop lets you do the same task for many files. | Command-line syntax and recovery |
| [Variable](#variable) | A variable is a label for a value you want to reuse. | Command-line syntax and recovery |
| [Command substitution](#command-substitution) | It lets you capture the result of a command into another command or variable. | Command-line syntax and recovery |
| [Arithmetic expansion](#arithmetic-expansion) | It lets Bash do simple maths. | Command-line syntax and recovery |
| [Shell comment](#shell-comment) | Comments explain code for humans and are ignored by Bash. | Command-line syntax and recovery |
| [`pwd`](#pwd) | It answers: where am I right now? | Workshop commands: exact meaning plus beginner use |
| [`ls`](#ls) | It answers: what files and folders are here? | Workshop commands: exact meaning plus beginner use |
| [`ls -lh`](#ls--lh) | It shows sizes such as KB, MB and GB instead of raw byte counts. | Workshop commands: exact meaning plus beginner use |
| [`ls -la`](#ls--la) | It shows hidden files and details. | Workshop commands: exact meaning plus beginner use |
| [`cd`](#cd) | It moves you into another folder. | Workshop commands: exact meaning plus beginner use |
| [`cd ..`](#cd) | It moves one level up. | Workshop commands: exact meaning plus beginner use |
| [`mkdir`](#mkdir) | It makes new folders. | Workshop commands: exact meaning plus beginner use |
| [`cp`](#cp) | It duplicates something while leaving the original in place. | Workshop commands: exact meaning plus beginner use |
| [`mv`](#mv) | It changes where a file is or what it is called. | Workshop commands: exact meaning plus beginner use |
| [`rm`](#rm) | It deletes files. Treat it as dangerous. | Workshop commands: exact meaning plus beginner use |
| [`echo`](#echo) | It prints text or variable values to the screen. | Workshop commands: exact meaning plus beginner use |
| [`uname`](#uname) | It helps you check whether you are on Linux, Darwin/macOS or another system. | Workshop commands: exact meaning plus beginner use |
| [`head`](#head) | It lets you peek at the start of a file. | Workshop commands: exact meaning plus beginner use |
| [`tail`](#tail) | It lets you inspect the end of a file or log. | Workshop commands: exact meaning plus beginner use |
| [`less`](#less) | It lets you read a file without flooding the terminal. | Workshop commands: exact meaning plus beginner use |
| [`cat`](#cat) | It can print a small whole file or join files. | Workshop commands: exact meaning plus beginner use |
| [`wc -l`](#wc--l) | It counts lines. | Workshop commands: exact meaning plus beginner use |
| [`grep`](#grep) | It answers: which lines contain this pattern? | Workshop commands: exact meaning plus beginner use |
| [`grep -c`](#grep--c) | It answers: how many matching lines are there? | Workshop commands: exact meaning plus beginner use |
| [`grep -v`](#grep--v) | It means: show everything except lines with this pattern. | Workshop commands: exact meaning plus beginner use |
| [`cut`](#cut) | For TSV files, `cut` extracts columns. | Workshop commands: exact meaning plus beginner use |
| [`sort`](#sort) | It puts lines in order so duplicates become neighbours. | Workshop commands: exact meaning plus beginner use |
| [`uniq`](#uniq) | It removes duplicate neighbouring lines. | Workshop commands: exact meaning plus beginner use |
| [`uniq -c`](#uniq--c) | It counts repeated neighbouring values. | Workshop commands: exact meaning plus beginner use |
| [`awk`](#awk) | Use `awk` when your question depends on columns. | Workshop commands: exact meaning plus beginner use |
| [`nano`](#nano) | Use nano when you need to edit a small file on the command line. | Workshop commands: exact meaning plus beginner use |
| [`vim`](#vim) | You may encounter vim on servers. You only need survival skills at first. | Workshop commands: exact meaning plus beginner use |
| [`bash` command](#bash-command) | It can run a script as a reproducible recipe. | Workshop commands: exact meaning plus beginner use |
| [`history`](#history) | It shows commands you typed before. | Workshop commands: exact meaning plus beginner use |
| [`clear`](#clear) | It makes the visible terminal less cluttered. | Workshop commands: exact meaning plus beginner use |
| [`gzip`](#gzip) | It compresses or decompresses `.gz` files. | Workshop commands: exact meaning plus beginner use |
| [`gzip -dc`](#gzip--dc) | It opens a `.gz` file as a stream without replacing the original file. | Workshop commands: exact meaning plus beginner use |
| [`gzip -l`](#gzip--l) | It shows how large the file is compressed and approximately how large it becomes uncompressed. | Workshop commands: exact meaning plus beginner use |
| [`gunzip`](#gunzip) | Use `gunzip -c` to create a plain-text copy safely. | Workshop commands: exact meaning plus beginner use |
| [`zgrep`](#zgrep) | It searches inside `.gz` files without manually creating an uncompressed copy. | Workshop commands: exact meaning plus beginner use |
| [`zcat` / `gzcat`](#zcat-gzcat) | It is another way to stream `.gz` files. | Workshop commands: exact meaning plus beginner use |
| [`tr`](#tr) | It changes or removes simple characters in a stream. | Workshop commands: exact meaning plus beginner use |
| [`curl`](#curl) | It can download or query data from web services and APIs. | Workshop commands: exact meaning plus beginner use |
| [Bioinformatics](#bioinformatics) | It is where biology meets data and code. | Bioinformatics data concepts |
| [Biomedical data](#biomedical-data) | This includes sequencing reads, metadata, variants, images, lab values and clinical annotations. | Bioinformatics data concepts |
| [High-throughput sequencing](#high-throughput-sequencing) | It produces too much data for manual file-by-file work. | Bioinformatics data concepts |
| [NGS](#ngs) | It is the umbrella term students often hear for modern sequencing. | Bioinformatics data concepts |
| [Read](#read) | A read is one small piece measured by the sequencer. | Bioinformatics data concepts |
| [Read ID / read header](#read-id-read-header) | It is the name tag for a read. | Bioinformatics data concepts |
| [Base](#base) | A base is one letter in a DNA or RNA sequence. | Bioinformatics data concepts |
| [N base](#n-base) | `N` means the sequencer or reference could not confidently specify A, C, G or T. | Bioinformatics data concepts |
| [Quality score](#quality-score) | It tells you how confident the sequencer was for each base. | Bioinformatics data concepts |
| [Phred quality score](#phred-quality-score) | Higher Phred score means lower estimated error probability. | Bioinformatics data concepts |
| [Paired-end sequencing](#paired-end-sequencing) | You get two files per sample: R1 and R2. | Bioinformatics data concepts |
| [R1 and R2](#r1-and-r2) | R1 is the first read file and R2 is the mate-pair file. | Bioinformatics data concepts |
| [Sample](#sample) | It is the thing measured, such as tumour tissue, normal tissue or blood. | Bioinformatics data concepts |
| [Patient ID](#patient-id) | It lets you see which samples belong to the same person. | Bioinformatics data concepts |
| [Tissue](#tissue) | It says what kind of biological material the sample represents. | Bioinformatics data concepts |
| [Tumour sample](#tumour-sample) | It is the cancer tissue sample. | Bioinformatics data concepts |
| [Normal sample](#normal-sample) | It is the comparison tissue, often from the same patient in cancer genomics. | Bioinformatics data concepts |
| [Case](#case) | The case group is the group being studied for the main condition. | Bioinformatics data concepts |
| [Control](#control) | Controls help you see what is different from the case group. | Bioinformatics data concepts |
| [Batch](#batch) | Batch says what samples experienced the same technical process. | Bioinformatics data concepts |
| [Batch effect](#batch-effect) | It is a technical difference that can masquerade as biology. | Bioinformatics data concepts |
| [Metadata QC](#metadata-qc) | Before analysing reads, check whether the sample table makes sense. | Bioinformatics data concepts |
| [DNA-seq](#dna-seq) | DNA-seq asks questions about the genome. | Bioinformatics data concepts |
| [RNA-seq](#rna-seq) | RNA-seq asks what genes or transcripts are active and how much RNA is present. | Bioinformatics data concepts |
| [Library](#library) | The library is the sample prepared for the sequencer. | Bioinformatics data concepts |
| [Library strategy](#library-strategy) | It tells archives and analysts what kind of experiment produced the data. | Bioinformatics data concepts |
| [FASTQ](#fastq) | FASTQ stores reads plus quality. One read takes four lines. | Bioinformatics file formats |
| [`.fastq.gz`](#fastqgz) | This is the common raw read file you receive from sequencing centres and archives. | Bioinformatics file formats |
| [`.fq`](#fq) | It means the same kind of content as `.fastq`, usually plain text. | Bioinformatics file formats |
| [FASTA](#fasta) | FASTA stores sequence names and sequences, but no per-base quality scores. | Bioinformatics file formats |
| [FASTA definition line / header](#fasta-definition-line-header) | It is the title line for one FASTA sequence. | Bioinformatics file formats |
| [Protein FASTA](#protein-fasta) | It stores protein sequences rather than DNA bases. | Bioinformatics file formats |
| [Nucleotide FASTA](#nucleotide-fasta) | It stores genome, transcript or other nucleotide sequences. | Bioinformatics file formats |
| [TSV](#tsv) | A TSV is a spreadsheet-like table saved as clean text. | Bioinformatics file formats |
| [CSV](#csv) | CSV is another common table format. | Bioinformatics file formats |
| [GFF](#gff) | GFF files describe where genes, transcripts, exons and other features are located. | Bioinformatics file formats |
| [GFF3](#gff3) | GFF3 is a structured gene-annotation table. | Bioinformatics file formats |
| [GFF comment line](#gff-comment-line) | These lines explain the file or give metadata. | Bioinformatics file formats |
| [BED](#bed) | BED stores regions of a genome. | Bioinformatics file formats |
| [VCF](#vcf) | VCF stores differences from a reference genome. | Bioinformatics file formats |
| [VCF header](#vcf-header) | It explains what the variant table columns and annotations mean. | Bioinformatics file formats |
| [VCF record](#vcf-record) | One row usually describes one variant position or event. | Bioinformatics file formats |
| [SAM](#sam) | SAM is human-readable aligned read data. | Bioinformatics file formats |
| [BAM](#bam) | BAM stores aligned reads efficiently. | Bioinformatics file formats |
| [CRAM](#cram) | CRAM can store aligned reads more compactly than BAM. | Bioinformatics file formats |
| [Index file](#index-file) | An index is like a map for a large genomic file. | Bioinformatics file formats |
| [Log file](#log-file) | Logs tell you what happened during a run. | Bioinformatics file formats |
| [Markdown](#markdown) | Markdown lets you write readable manuals, headings, tables and code blocks in plain text. | Bioinformatics file formats |
| [Gene](#gene) | A gene is a functional unit in the genome, but its exact boundaries can depend on annotation rules. | Genomics and annotation terms |
| [Transcript](#transcript) | A transcript is an RNA version or isoform made from a gene. | Genomics and annotation terms |
| [Exon](#exon) | Exons are the transcript parts that remain after introns are removed. | Genomics and annotation terms |
| [Intron](#intron) | Introns are cut out during RNA processing. | Genomics and annotation terms |
| [Splicing](#splicing) | Splicing explains why RNA-seq reads may jump across genomic regions. | Genomics and annotation terms |
| [Pseudogene](#pseudogene) | A pseudogene looks gene-like but is usually not a normal functional copy. | Genomics and annotation terms |
| [DDX11L1](#ddx11l1) | For learners, it is a concrete string to search in a GFF file. | Genomics and annotation terms |
| [WASH7P](#wash7p) | It is another feature name you can find in a GFF file. | Genomics and annotation terms |
| [Chromosome](#chromosome) | A chromosome is one large genome piece, such as chromosome 1. | Genomics and annotation terms |
| [Coordinate](#coordinate) | Coordinates are addresses on a reference genome. | Genomics and annotation terms |
| [Reference genome](#reference-genome) | It is the map to which reads and variants are compared. | Genomics and annotation terms |
| [GRCh38](#grch38) | It is one common human genome coordinate system. | Genomics and annotation terms |
| [RefSeq](#refseq) | RefSeq provides stable-looking accessioned reference sequences. | Genomics and annotation terms |
| [Accession](#accession) | It is a stable catalogue number for data. | Genomics and annotation terms |
| [SRA](#sra) | SRA is one of the major places where sequencing reads are stored for reuse. | Public archives and provenance |
| [ENA](#ena) | ENA is the European mirror/archive where you can look up sequencing accessions. | Public archives and provenance |
| [Run accession](#run-accession) | It points to a specific sequencing run record. | Public archives and provenance |
| [Study accession](#study-accession) | It is the project-level catalogue ID. | Public archives and provenance |
| [Sample accession](#sample-accession) | It connects run data to biological metadata about the sample. | Public archives and provenance |
| [Provenance](#provenance) | It is the data’s history and chain of custody. | Public archives and provenance |
| [Traceability](#traceability) | It means you can answer: where did this file come from? | Public archives and provenance |
| [Public archive](#public-archive) | It lets other researchers download data used in a paper or workshop. | Public archives and provenance |
| [FTP](#ftp) | Many archives provide FTP-style links for large files. | Public archives and provenance |
| [API](#api) | An API lets scripts ask a database for structured information. | Public archives and provenance |
| [FastQC](#fastqc) | FastQC checks whether FASTQ files look healthy before deeper analysis. | Professional tools mentioned in the workshop |
| [BWA](#bwa) | BWA maps DNA reads onto a reference genome. | Professional tools mentioned in the workshop |
| [STAR](#star) | STAR maps RNA-seq reads even when they cross exon-exon boundaries. | Professional tools mentioned in the workshop |
| [samtools](#samtools) | samtools is the everyday toolkit for alignment files. | Professional tools mentioned in the workshop |
| [bcftools](#bcftools) | bcftools is the everyday toolkit for variant files. | Professional tools mentioned in the workshop |
| [Alignment](#alignment) | Alignment asks: where does this read belong? | Professional tools mentioned in the workshop |
| [Splice-aware aligner](#splice-aware-aligner) | It understands that mature RNA has introns removed. | Professional tools mentioned in the workshop |
| [Quality control (QC)](#quality-control-qc) | QC means checking whether data are usable and whether anything looks suspicious. | Professional tools mentioned in the workshop |
| [QC report](#qc-report) | It collects quality information so you can review it later. | Professional tools mentioned in the workshop |
| [`No such file or directory`](#no-such-file-or-directory) | The shell or program cannot find what you named. | Common errors and safety concepts |
| [`Command not found`](#command-not-found) | The shell does not know that program name. | Common errors and safety concepts |
| [`Permission denied`](#permission-denied) | The system is refusing access. | Common errors and safety concepts |
| [Hanging command](#hanging-command) | It looks stuck, but it may be waiting or working. | Common errors and safety concepts |
| [Gibberish output](#gibberish-output) | It usually means you opened a compressed or binary file the wrong way. | Common errors and safety concepts |
| [Overwrite](#overwrite) | The old file contents are lost or replaced. | Common errors and safety concepts |
| [Raw data destruction](#raw-data-destruction) | It means losing the untouched original files. | Common errors and safety concepts |

## <span style="color:#1263FF">Core mental model: terminal, shell, program, file, output</span>

<a id="terminal"></a>
### <span style="color:#1263FF">Terminal</span>

**Precise definition:** A terminal is a text-based interface, usually implemented today as a terminal emulator application, through which a user interacts with a shell or another command-line program.

**Simple explanation:** The terminal is the window where you type commands. It does not itself understand bioinformatics; it gives you a place to talk to the shell.

**Bioinformatics example:** In VS Code, the integrated terminal is the panel where you type `pwd`, `ls` and `gzip -dc data/raw/toy_1.fastq.gz | head -n 8`.

**Common trap:** Do not confuse the terminal with Bash. Terminal is the window; Bash is usually the interpreter inside it.

<a id="terminal-emulator"></a>
### <span style="color:#1263FF">Terminal emulator</span>

**Precise definition:** A terminal emulator is a software application that behaves like a historical physical terminal by sending keyboard input to a command-line program and displaying text output.

**Simple explanation:** Modern computers no longer need physical terminals. Apps such as macOS Terminal, Windows Terminal, GNOME Terminal and the VS Code terminal emulate that old device.

**Bioinformatics example:** If you open Terminal on macOS and type `echo $SHELL`, the terminal emulator displays the answer produced by the shell.

**Common trap:** The emulator is not the operating system. It is just one application running on it.

<a id="shell"></a>
### <span style="color:#1263FF">Shell</span>

**Precise definition:** A shell is a command interpreter that reads commands, expands special syntax such as variables and wildcards then executes programs or shell built-ins.

**Simple explanation:** The shell is the language layer. It takes what you type, works out what you mean and starts the right program.

**Bioinformatics example:** In `gzip -dc file.fastq.gz | head -n 8`, the shell recognises `|` as a pipe and connects two programs.

**Common trap:** The shell is not the same as the terminal window and not the same as Linux.

<a id="bash"></a>
### <span style="color:#1263FF">Bash</span>

**Precise definition:** Bash, the Bourne Again SHell, is a Unix shell and command language compatible with the Bourne shell and widely used for interactive work and scripts.

**Simple explanation:** Bash is one of the most common languages for writing terminal commands. Many bioinformatics tutorials assume Bash syntax.

**Bioinformatics example:** `bash scripts/basic_report.sh` tells Bash to run the commands saved in `basic_report.sh`.

**Common trap:** Bash is a shell, not a sequencing tool and not the same thing as Linux.

<a id="zsh"></a>
### <span style="color:#1263FF">zsh</span>

**Precise definition:** zsh is a Unix shell with interactive features and scripting syntax broadly similar to Bash for basic commands.

**Simple explanation:** zsh is common on macOS. For this workshop, most commands work the same in Bash and zsh.

**Bioinformatics example:** `echo $SHELL` may return `/bin/zsh` on macOS.

**Common trap:** zsh is fine for the workshop. PowerShell is a different shell with different syntax.

<a id="linux"></a>
### <span style="color:#1263FF">Linux</span>

**Precise definition:** Linux is the kernel at the core of many Unix-like operating systems; in everyday speech, Linux often means a complete operating-system environment built around that kernel.

**Simple explanation:** For bioinformatics learners, Linux usually means the environment used on servers, clusters, cloud machines and containers.

**Bioinformatics example:** `uname -a` may print a line containing `Linux`, which is a good sign for this workshop.

**Common trap:** Strictly, Linux is the kernel. Bash, `grep`, `awk` and your file manager are separate pieces of the wider system.

<a id="kernel"></a>
### <span style="color:#1263FF">Kernel</span>

**Precise definition:** A kernel is the privileged core of an operating system that manages hardware, memory, processes, devices and system calls for user-space programs.

**Simple explanation:** The kernel is the part students usually do not interact with directly. It makes it possible for programs to read files, use memory and communicate with hardware.

**Bioinformatics example:** When `gzip` reads a FASTQ file from disk, it asks the operating system and kernel to provide the file data.

**Common trap:** You usually do not need to know kernel details for beginner bioinformatics, but it explains why Linux is more than a terminal.

<a id="unix-like-system"></a>
### <span style="color:#1263FF">Unix-like system</span>

**Precise definition:** A Unix-like system is an operating system that follows Unix design conventions, especially hierarchical paths, processes, pipes, text streams and command-line tools.

**Simple explanation:** Linux and macOS are Unix-like enough for the workshop. That is why commands such as `pwd`, `ls`, `grep` and pipes work.

**Bioinformatics example:** A Unix-like path looks like `data/raw/toy_1.fastq.gz`, not `C:\Users\...`.

**Common trap:** Unix-like does not always mean identical. macOS and Linux sometimes differ in command options.

<a id="macos-darwin"></a>
### <span style="color:#1263FF">macOS / Darwin</span>

**Precise definition:** macOS is Apple’s operating system; Darwin is its Unix-based core operating-system layer.

**Simple explanation:** On a Mac, you can usually use a Unix-like terminal environment for beginner bioinformatics commands.

**Bioinformatics example:** `uname -a` on macOS may show `Darwin`, not `Linux`.

**Common trap:** A command can behave slightly differently on macOS than on Linux. `gzip -dc` is safer than relying on platform-specific `zcat` behaviour.

<a id="windows-subsystem-for-linux-wsl"></a>
### <span style="color:#1263FF">Windows Subsystem for Linux (WSL)</span>

**Precise definition:** WSL is a Windows feature that runs a GNU/Linux environment directly on Windows without a separate traditional virtual machine or dual-boot setup.

**Simple explanation:** WSL gives Windows users a Linux-style command line suitable for many bioinformatics workshops.

**Bioinformatics example:** If `echo $SHELL` inside WSL returns `/bin/bash`, you are likely in the right environment.

**Common trap:** Opening PowerShell is not the same as opening WSL. Use a WSL distribution such as Ubuntu when the course expects Linux commands.

<a id="powershell"></a>
### <span style="color:#1263FF">PowerShell</span>

**Precise definition:** PowerShell is Microsoft’s command shell and scripting language based on commands called cmdlets and object-oriented pipelines.

**Simple explanation:** PowerShell is powerful, but it is not the Unix shell assumed in this workshop.

**Bioinformatics example:** A path like `C:\Users\Laura\Downloads` usually indicates a Windows shell rather than a Unix shell.

**Common trap:** Some commands such as `ls` may appear to work in PowerShell but the syntax and behaviour differ.

<a id="gui"></a>
### <span style="color:#1263FF">GUI</span>

**Precise definition:** A graphical user interface is an interface that lets a user interact with a computer through visual elements such as windows, icons, menus and pointing devices.

**Simple explanation:** GUI means point-and-click. Finder, Windows Explorer, Excel and most web apps are GUIs.

**Bioinformatics example:** You can open one small metadata file in Excel, but you should not open hundreds of `.fastq.gz` files manually.

**Common trap:** The terminal is not superior for every task. It is better for repeated, large-scale and reproducible file operations.

<a id="cli"></a>
### <span style="color:#1263FF">CLI</span>

**Precise definition:** A command-line interface is an interface in which a user gives instructions by typing textual commands.

**Simple explanation:** CLI means you type instructions instead of clicking buttons.

**Bioinformatics example:** `ls -lh data/raw/` is a CLI way to inspect file sizes.

**Common trap:** CLI is the general interface style. Bash is one particular command language used in that interface.

<a id="program"></a>
### <span style="color:#1263FF">Program</span>

**Precise definition:** A program is an executable set of instructions that performs a defined computational task.

**Simple explanation:** In a terminal command, the program is usually the first word.

**Bioinformatics example:** In `head -n 5 samples.tsv`, the program is `head`.

**Common trap:** A program is not the whole command. The command includes the program plus options, patterns and file paths.

<a id="command"></a>
### <span style="color:#1263FF">Command</span>

**Precise definition:** A command is an instruction submitted to a shell, often consisting of a command name followed by options and arguments.

**Simple explanation:** A command is the full line you type and run.

**Bioinformatics example:** `grep -c '^>' data/reference/proteins_9seqs.fa` is one command.

**Common trap:** Do not copy the prompt symbol `$` from tutorials. It marks readiness; it is not part of the command.

<a id="option-flag"></a>
### <span style="color:#1263FF">Option / flag</span>

**Precise definition:** An option or flag is a command-line argument that modifies the behaviour of a program, commonly written with a leading `-` or `--`.

**Simple explanation:** Options are switches. They tell the program how to behave.

**Bioinformatics example:** In `head -n 8 file.fq`, `-n 8` means show 8 lines.

**Common trap:** Options belong to the program immediately before them. In a pipe, each program has its own options.

<a id="argument"></a>
### <span style="color:#1263FF">Argument</span>

**Precise definition:** An argument is a value passed to a command, such as a filename, pattern, number or option value.

**Simple explanation:** Arguments are the pieces of information a program needs.

**Bioinformatics example:** In `grep 'tumour' samples.tsv`, `tumour` and `samples.tsv` are arguments.

**Common trap:** An option can also take an argument. In `-n 8`, `8` is the option value.

<a id="input"></a>
### <span style="color:#1263FF">Input</span>

**Precise definition:** Input is the data supplied to a program, either as a file, standard input, keyboard input or output from another program.

**Simple explanation:** Input is what the program reads.

**Bioinformatics example:** In `head -n 5 data/metadata/samples.tsv`, the metadata file is the input.

**Common trap:** A program can receive input through a file path or through a pipe.

<a id="output"></a>
### <span style="color:#1263FF">Output</span>

**Precise definition:** Output is the data produced by a program, usually written to standard output, a file or another destination.

**Simple explanation:** Output is what the program gives back.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort | uniq -c > tissue_counts.txt` saves output into `tissue_counts.txt`.

**Common trap:** Output printed to the screen is not automatically saved unless you redirect it.

<a id="standard-input-stdin"></a>
### <span style="color:#1263FF">Standard input (stdin)</span>

**Precise definition:** Standard input is the default input stream from which a program reads when no explicit input file is used.

**Simple explanation:** stdin is the invisible channel where a command can receive text from a pipe or the keyboard.

**Bioinformatics example:** In `gzip -dc file.fastq.gz | wc -l`, `wc` reads decompressed text from standard input.

**Common trap:** Some commands wait if you run them without input because they are listening to stdin.

<a id="standard-output-stdout"></a>
### <span style="color:#1263FF">Standard output (stdout)</span>

**Precise definition:** Standard output is the default stream where a program writes normal output.

**Simple explanation:** stdout is the normal result stream, usually displayed on screen unless redirected.

**Bioinformatics example:** `echo 'hello'` writes `hello` to stdout.

**Common trap:** A pipe connects stdout from the left command to stdin of the right command.

<a id="standard-error-stderr"></a>
### <span style="color:#1263FF">Standard error (stderr)</span>

**Precise definition:** Standard error is the default stream where a program writes diagnostic messages such as warnings and errors.

**Simple explanation:** stderr is where error messages go so they can be separated from real data output.

**Bioinformatics example:** A failed `ls wrong_folder` prints an error message to stderr.

**Common trap:** Error messages can appear even when stdout is redirected to a file.

<a id="pipe"></a>
### <span style="color:#1263FF">Pipe</span>

**Precise definition:** A pipe is a shell operator, written `|`, that connects the standard output of one command to the standard input of the next command.

**Simple explanation:** A pipe makes commands work as a chain: first do this, then send the result to that.

**Bioinformatics example:** `gzip -dc data/raw/toy_1.fastq.gz | head -n 8` means decompress then show the first 8 lines.

**Common trap:** A pipe does not save a file by itself. It passes data to another command.

<a id="redirection"></a>
### <span style="color:#1263FF">Redirection</span>

**Precise definition:** Redirection is shell syntax that changes where a command reads input from or writes output to, such as `>`, `>>` and `<`.

**Simple explanation:** Redirection saves output to a file or reads input from a file.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort | uniq -c > tissue_counts.txt` writes the summary to a file.

**Common trap:** `>` overwrites existing files. Use it carefully, especially near raw data.

<a id="script"></a>
### <span style="color:#1263FF">Script</span>

**Precise definition:** A script is a text file containing commands that can be executed by an interpreter such as Bash.

**Simple explanation:** A script is a saved recipe. Instead of remembering commands, you rerun the file.

**Bioinformatics example:** `bash scripts/basic_report.sh` runs the workshop report script.

**Common trap:** A script records actions but not necessarily software versions, parameters or environment details unless you include them.

<a id="reproducibility"></a>
### <span style="color:#1263FF">Reproducibility</span>

**Precise definition:** Reproducibility is the ability to rerun an analysis with the same inputs, methods and software context to obtain the same results or verify the same conclusions.

**Simple explanation:** Reproducibility means future you or another scientist can understand and repeat what happened.

**Bioinformatics example:** Saving `fastq_line_counts.txt` from a script is more reproducible than clicking files manually.

**Common trap:** A screenshot of results is not enough; keep commands, inputs and versions.

## <span style="color:#0E9F6E">Files, folders and paths</span>

<a id="file"></a>
### <span style="color:#0E9F6E">File</span>

**Precise definition:** A file is a named data object stored in a filesystem.

**Simple explanation:** A file is one item on disk: a table, FASTQ file, FASTA file, script or report.

**Bioinformatics example:** `samples.tsv`, `toy_1.fastq.gz`, `proteins.fa` and `basic_report.sh` are files.

**Common trap:** Do not assume the file extension proves the content. A file named `.tsv` can still be malformed.

<a id="directory-folder"></a>
### <span style="color:#0E9F6E">Directory / folder</span>

**Precise definition:** A directory is a filesystem object that contains file names and links to files or other directories.

**Simple explanation:** A directory is a folder. It helps organise project files.

**Bioinformatics example:** `data/`, `analysis/`, `scripts/` and `exercises/` are directories.

**Common trap:** The terminal usually uses the word directory more often than folder.

<a id="working-directory"></a>
### <span style="color:#0E9F6E">Working directory</span>

**Precise definition:** The working directory is the current directory used by a running shell or process to resolve relative paths.

**Simple explanation:** This is where you are standing in the project.

**Bioinformatics example:** Run `pwd` to print the working directory.

**Common trap:** Most `No such file or directory` errors happen because the working directory is not what you think.

<a id="path"></a>
### <span style="color:#0E9F6E">Path</span>

**Precise definition:** A path is a string that identifies a file or directory location in a filesystem hierarchy.

**Simple explanation:** A path is an address for a file or folder.

**Bioinformatics example:** `data/raw/toy_1.fastq.gz` means go into `data`, then `raw`, then find the FASTQ archive.

**Common trap:** Spaces, capital letters and punctuation in paths can make commands harder to write safely.

<a id="relative-path"></a>
### <span style="color:#0E9F6E">Relative path</span>

**Precise definition:** A relative path is a path interpreted from the current working directory rather than from the filesystem root.

**Simple explanation:** Relative paths are short addresses from where you are now.

**Bioinformatics example:** `data/metadata/samples.tsv` works from the project root.

**Common trap:** The same relative path can fail if you move to a different directory.

<a id="absolute-path"></a>
### <span style="color:#0E9F6E">Absolute path</span>

**Precise definition:** An absolute path is a complete path from the root of the filesystem to a file or directory.

**Simple explanation:** Absolute paths are full addresses.

**Bioinformatics example:** `/workspaces/biomed-terminal-workshop/data/raw/toy_1.fastq.gz` is an absolute path.

**Common trap:** Absolute paths are clear but less portable across computers.

<a id="parent-directory"></a>
### <span style="color:#0E9F6E">Parent directory</span>

**Precise definition:** The parent directory is the directory one level above the current directory in the hierarchy.

**Simple explanation:** The parent folder is one step up.

**Bioinformatics example:** `cd ..` moves to the parent directory.

**Common trap:** `..` means parent. `.` means current directory.

<a id="root"></a>
### <span style="color:#0E9F6E">Root</span>

**Precise definition:** In a Unix-like filesystem, the root is the top-level directory of the entire filesystem hierarchy, written as `/`. Separately, `root` can also mean the privileged administrator user account on Unix-like systems.

**Simple explanation:** When talking about paths, root is the very top of the computer’s folder tree. Everything else sits underneath it. Do not confuse it with your project root, which is only the main folder of one project.

**Bioinformatics example:** `/workspaces/biomed-terminal-workshop/data/raw/toy_1.fastq.gz` starts at the filesystem root `/`, while `data/raw/toy_1.fastq.gz` starts from the current project folder.

**Common trap:** The filesystem root `/`, the root user and the project root are three different ideas.

<a id="project-root"></a>
### <span style="color:#0E9F6E">Project root</span>

**Precise definition:** A project root is the top-level directory chosen as the base for a project’s files, scripts, data and outputs.

**Simple explanation:** It is the main workshop folder containing `data/`, `scripts/`, `exercises/` and the manual.

**Bioinformatics example:** Before running workshop commands, use `pwd` and `ls` to check that you are in the project root.

**Common trap:** The project root is not necessarily the computer’s filesystem root `/`.

<a id="hidden-file"></a>
### <span style="color:#0E9F6E">Hidden file</span>

**Precise definition:** A hidden file in Unix-like systems is conventionally a file whose name begins with a dot.

**Simple explanation:** Hidden files are usually configuration files that normal `ls` hides.

**Bioinformatics example:** `ls -la` shows hidden files such as `.gitignore` or `.gitkeep`.

**Common trap:** Hidden does not mean encrypted or secure. It only means not shown by default.

<a id="file-extension"></a>
### <span style="color:#0E9F6E">File extension</span>

**Precise definition:** A file extension is a suffix in a filename, usually after the final dot, used by convention to indicate format or purpose.

**Simple explanation:** The extension is a hint about file type.

**Bioinformatics example:** `.fastq.gz` means a FASTQ file compressed with gzip.

**Common trap:** The extension is not a guarantee. Always inspect or validate important files.

<a id="plain-text-file"></a>
### <span style="color:#0E9F6E">Plain-text file</span>

**Precise definition:** A plain-text file stores characters in a text encoding rather than application-specific binary structures.

**Simple explanation:** A plain-text file can be inspected with `head`, `less`, `grep` and `awk`.

**Bioinformatics example:** TSV, FASTA, GFF and VCF are usually plain-text formats.

**Common trap:** Plain text can still be huge and should not always be opened in a GUI editor.

<a id="binary-file"></a>
### <span style="color:#0E9F6E">Binary file</span>

**Precise definition:** A binary file stores data in a format not intended to be interpreted directly as ordinary text lines.

**Simple explanation:** Binary files may look like gibberish if printed to the terminal.

**Bioinformatics example:** `.gz` compressed files and `.bam` files are binary.

**Common trap:** Use the appropriate tool, such as `gzip -dc` for `.gz` or `samtools view` for BAM.

<a id="compressed-file"></a>
### <span style="color:#0E9F6E">Compressed file</span>

**Precise definition:** A compressed file stores encoded data in fewer bytes than the original representation using a compression algorithm.

**Simple explanation:** Compressed files save disk space and transfer time.

**Bioinformatics example:** `toy_1.fastq.gz` is a gzip-compressed FASTQ file.

**Common trap:** Counting lines in a compressed file directly counts compressed data, not the decompressed FASTQ text.

<a id="decompression"></a>
### <span style="color:#0E9F6E">Decompression</span>

**Precise definition:** Decompression is the process of reconstructing original data from compressed data.

**Simple explanation:** Decompression opens the compressed bag so the text can be read again.

**Bioinformatics example:** `gzip -dc data/raw/toy_1.fastq.gz | head` decompresses as a stream.

**Common trap:** Do not decompress raw data in place unless you intentionally want to replace or expand it.

<a id="streaming"></a>
### <span style="color:#0E9F6E">Streaming</span>

**Precise definition:** Streaming is processing data sequentially as it flows through commands without first writing the full intermediate result to disk.

**Simple explanation:** Streaming lets you inspect huge files without creating massive temporary copies.

**Bioinformatics example:** `gzip -dc file.fastq.gz | wc -l` streams decompressed FASTQ into `wc`.

**Common trap:** Streaming is efficient, but intermediate output disappears unless you save it with redirection.

<a id="raw-data"></a>
### <span style="color:#0E9F6E">Raw data</span>

**Precise definition:** Raw data are original input data as received from an instrument, sequencing centre, archive or collaborator before analysis modifications.

**Simple explanation:** Raw data are sacred. Preserve them unchanged so analysis can be repeated.

**Bioinformatics example:** The workshop keeps `.fastq.gz` files in `data/raw/`.

**Common trap:** Do not run destructive commands such as `rm` or in-place `gunzip` in `data/raw/`.

<a id="analysis-output"></a>
### <span style="color:#0E9F6E">Analysis output</span>

**Precise definition:** Analysis output is data generated by processing raw data or intermediate files.

**Simple explanation:** These are files you create during the workshop.

**Bioinformatics example:** `analysis/01_qc/fastq_line_counts.txt` is an analysis output.

**Common trap:** Outputs should be organised, named clearly and reproducible from scripts.

<a id="metadata"></a>
### <span style="color:#0E9F6E">Metadata</span>

**Precise definition:** Metadata are descriptive data about other data, including sample identity, experimental design, batch, tissue, condition and provenance.

**Simple explanation:** Metadata tell you what each sample means biologically and technically.

**Bioinformatics example:** `data/metadata/samples.tsv` contains sample IDs, patient IDs, tissue, condition and batch.

**Common trap:** Bad metadata can invalidate an analysis even if the sequencing files are technically perfect.

## <span style="color:#E69F00">Command-line syntax and recovery</span>

<a id="prompt"></a>
### <span style="color:#E69F00">Prompt</span>

**Precise definition:** A prompt is the text displayed by an interactive shell to indicate that it is ready to accept a command.

**Simple explanation:** The prompt is the shell saying: you can type now.

**Bioinformatics example:** `user@machine:/project $` may show the user, computer and current folder.

**Common trap:** Do not copy the prompt symbol itself when copying commands.

<a id="environment-variable"></a>
### <span style="color:#E69F00">Environment variable</span>

**Precise definition:** An environment variable is a named value available to a process and often inherited by child processes.

**Simple explanation:** Environment variables store settings that programs can read.

**Bioinformatics example:** `echo $SHELL` prints the value of the `SHELL` environment variable.

**Common trap:** A variable name and its value are not the same thing. `$SHELL` asks for the value.

<a id="tab-completion"></a>
### <span style="color:#E69F00">Tab completion</span>

**Precise definition:** Tab completion is an interactive shell feature that completes or suggests command names, file names or directory names from a partial input.

**Simple explanation:** Pressing Tab lets the shell finish long names for you.

**Bioinformatics example:** Type `gzip -dc data/raw/toy` then press Tab to complete the FASTQ filename.

**Common trap:** If there are multiple matches, press Tab again or type more characters.

<a id="command-history"></a>
### <span style="color:#E69F00">Command history</span>

**Precise definition:** Command history is a record kept by an interactive shell of previously entered commands.

**Simple explanation:** The up arrow lets you reuse earlier commands instead of retyping them.

**Bioinformatics example:** Run `history` to list previous commands.

**Common trap:** History records what you typed, not whether every command was scientifically correct.

<a id="ctrl-c"></a>
### <span style="color:#E69F00">Ctrl + C</span>

**Precise definition:** Ctrl + C sends an interrupt signal to the foreground process in a terminal session.

**Simple explanation:** Ctrl + C is your emergency stop for a running or waiting command.

**Bioinformatics example:** Run `cat`, see it wait, then press Ctrl + C to stop it.

**Common trap:** It stops the current command; it does not usually close the terminal.

<a id="quote"></a>
### <span style="color:#E69F00">Quote</span>

**Precise definition:** A quote is shell syntax that groups characters so they are interpreted as one word or controls how special characters are expanded.

**Simple explanation:** Quotes protect text patterns and spaces from being split by the shell.

**Bioinformatics example:** `grep 'DDX11L1' data/annotation/pseudogenes_chr1.gff` searches for one pattern.

**Common trap:** An unclosed quote makes the shell wait for the closing quote.

<a id="wildcard"></a>
### <span style="color:#E69F00">Wildcard</span>

**Precise definition:** A wildcard is a shell pattern character, most commonly `*`, that expands to matching filenames before a command runs.

**Simple explanation:** A wildcard lets one command refer to many files.

**Bioinformatics example:** `ls data/raw/*.fastq.gz` lists all compressed FASTQ files in `data/raw/`.

**Common trap:** Wildcards are expanded by the shell, not usually by the program itself.

<a id="regular-expression"></a>
### <span style="color:#E69F00">Regular expression</span>

**Precise definition:** A regular expression is a formal pattern that describes a set of matching strings.

**Simple explanation:** A regex is a search pattern more powerful than plain text.

**Bioinformatics example:** `grep '^>' proteins.fa` finds FASTA header lines because `^` means start of line.

**Common trap:** Regex characters such as `^`, `.`, `*` and `[` can have special meanings.

<a id="caret"></a>
### <span style="color:#E69F00">Caret `^`</span>

**Precise definition:** In many regular-expression dialects, `^` is an anchor that matches the start of a line or string.

**Simple explanation:** It means the pattern must appear at the beginning, not just anywhere.

**Bioinformatics example:** `grep '^#' variants.vcf` finds VCF header lines.

**Common trap:** Inside square brackets, `^` can have a different meaning, so context matters.

<a id="loop"></a>
### <span style="color:#E69F00">Loop</span>

**Precise definition:** A loop is a programming construct that repeats commands for a sequence of values or while a condition holds.

**Simple explanation:** A loop lets you do the same task for many files.

**Bioinformatics example:** `for f in data/raw/*.fastq.gz; do gzip -dc "$f" | wc -l; done` counts lines for each FASTQ archive.

**Common trap:** Always quote variable file paths, as in `"$f"`, to handle unusual filenames safely.

<a id="variable"></a>
### <span style="color:#E69F00">Variable</span>

**Precise definition:** A variable is a named storage location whose value can be referenced and changed by a shell or program.

**Simple explanation:** A variable is a label for a value you want to reuse.

**Bioinformatics example:** `lines=$(gzip -dc "$f" | wc -l)` stores a line count in `lines`.

**Common trap:** In Bash, use `lines=value` to assign and `$lines` to read.

<a id="command-substitution"></a>
### <span style="color:#E69F00">Command substitution</span>

**Precise definition:** Command substitution is shell syntax that executes a command and replaces the substitution expression with that command’s output.

**Simple explanation:** It lets you capture the result of a command into another command or variable.

**Bioinformatics example:** `lines=$(wc -l < file.tsv)` stores the line count.

**Common trap:** The output may include whitespace unless you clean it or design the command carefully.

<a id="arithmetic-expansion"></a>
### <span style="color:#E69F00">Arithmetic expansion</span>

**Precise definition:** Arithmetic expansion is shell syntax that evaluates an integer arithmetic expression and substitutes the result.

**Simple explanation:** It lets Bash do simple maths.

**Bioinformatics example:** `reads=$((lines / 4))` computes FASTQ read count from line count.

**Common trap:** Bash arithmetic is integer arithmetic by default.

<a id="shell-comment"></a>
### <span style="color:#E69F00">Shell comment</span>

**Precise definition:** A shell comment begins with `#` and continues to the end of the line, except when the `#` appears inside quotes or another syntactic context.

**Simple explanation:** Comments explain code for humans and are ignored by Bash.

**Bioinformatics example:** `# Count FASTQ lines` in a script is a comment.

**Common trap:** A `#` in VCF or GFF is part of a file format header, not a shell comment.

## <span style="color:#7C3AED">Workshop commands: exact meaning plus beginner use</span>

<a id="pwd"></a>
### <span style="color:#7C3AED">pwd</span>

**Precise definition:** `pwd` prints the absolute pathname of the current working directory.

**Simple explanation:** It answers: where am I right now?

**Bioinformatics example:** `pwd`

**Common trap:** Use it before running commands if files cannot be found.

<a id="ls"></a>
### <span style="color:#7C3AED">ls</span>

**Precise definition:** `ls` lists directory contents.

**Simple explanation:** It answers: what files and folders are here?

**Bioinformatics example:** `ls -lh data/raw/`

**Common trap:** `ls` does not enter folders or inspect file content.

<a id="ls--lh"></a>
### <span style="color:#7C3AED">ls -lh</span>

**Precise definition:** `ls -lh` lists files in long format with human-readable size units.

**Simple explanation:** It shows sizes such as KB, MB and GB instead of raw byte counts.

**Bioinformatics example:** `ls -lh data/raw/*.fastq.gz`

**Common trap:** The size shown is compressed size for `.gz` files, not necessarily biological read length or read count.

<a id="ls--la"></a>
### <span style="color:#7C3AED">ls -la</span>

**Precise definition:** `ls -la` lists files in long format including directory entries whose names begin with a dot.

**Simple explanation:** It shows hidden files and details.

**Bioinformatics example:** `ls -la`

**Common trap:** Hidden files are not automatically safe or important; they are simply hidden by convention.

<a id="cd"></a>
### <span style="color:#7C3AED">cd</span>

**Precise definition:** `cd` changes the current working directory of the shell.

**Simple explanation:** It moves you into another folder.

**Bioinformatics example:** `cd data/raw`

**Common trap:** `cd` affects where relative paths start from.

<a id="cd"></a>
### <span style="color:#7C3AED">cd ..</span>

**Precise definition:** `cd ..` changes the working directory to the parent directory.

**Simple explanation:** It moves one level up.

**Bioinformatics example:** From `data/raw/`, `cd ../..` returns to the project root.

**Common trap:** Count your levels carefully. `../..` means two levels up.

<a id="mkdir"></a>
### <span style="color:#7C3AED">mkdir</span>

**Precise definition:** `mkdir` creates one or more directories.

**Simple explanation:** It makes new folders.

**Bioinformatics example:** `mkdir -p analysis/01_qc analysis/02_metadata`

**Common trap:** Use `-p` to create parent folders and avoid errors if they already exist.

<a id="cp"></a>
### <span style="color:#7C3AED">cp</span>

**Precise definition:** `cp` copies files or directories.

**Simple explanation:** It duplicates something while leaving the original in place.

**Bioinformatics example:** `cp data/metadata/samples.tsv my_analysis/`

**Common trap:** Copying raw data is safer than moving it, but can waste storage for large sequencing projects.

<a id="mv"></a>
### <span style="color:#7C3AED">mv</span>

**Precise definition:** `mv` moves or renames files and directories.

**Simple explanation:** It changes where a file is or what it is called.

**Bioinformatics example:** `mv old_name.txt new_name.txt`

**Common trap:** Moving raw files can break paths expected by scripts.

<a id="rm"></a>
### <span style="color:#7C3AED">rm</span>

**Precise definition:** `rm` removes directory entries for files and can recursively remove directories with options.

**Simple explanation:** It deletes files. Treat it as dangerous.

**Bioinformatics example:** `rm temporary_test_file.txt`

**Common trap:** There is often no recycle bin in terminal workflows. Avoid `rm` near raw data.

<a id="echo"></a>
### <span style="color:#7C3AED">echo</span>

**Precise definition:** `echo` writes its arguments to standard output.

**Simple explanation:** It prints text or variable values to the screen.

**Bioinformatics example:** `echo $SHELL`

**Common trap:** `echo` is useful for simple checks but not a robust data-export format for every case.

<a id="uname"></a>
### <span style="color:#7C3AED">uname</span>

**Precise definition:** `uname` prints selected system information about the operating system.

**Simple explanation:** It helps you check whether you are on Linux, Darwin/macOS or another system.

**Bioinformatics example:** `uname -a`

**Common trap:** `uname` tells you system information, not whether every required bioinformatics tool is installed.

<a id="head"></a>
### <span style="color:#7C3AED">head</span>

**Precise definition:** `head` outputs the first part of files, by default the first 10 lines unless configured otherwise.

**Simple explanation:** It lets you peek at the start of a file.

**Bioinformatics example:** `head -n 5 data/metadata/samples.tsv`

**Common trap:** Do not use `head` directly on `.gz` files unless you want compressed binary output.

<a id="tail"></a>
### <span style="color:#7C3AED">tail</span>

**Precise definition:** `tail` outputs the last part of files, by default the last 10 lines unless configured otherwise.

**Simple explanation:** It lets you inspect the end of a file or log.

**Bioinformatics example:** `tail -n 5 analysis/01_qc/fastq_line_counts.txt`

**Common trap:** For actively growing logs, `tail -f` follows updates, but that is beyond the beginner workshop.

<a id="less"></a>
### <span style="color:#7C3AED">less</span>

**Precise definition:** `less` is a pager that displays text one screen at a time with scrolling and search.

**Simple explanation:** It lets you read a file without flooding the terminal.

**Bioinformatics example:** `less data/metadata/samples.tsv` then press `q` to quit.

**Common trap:** `less` is for viewing, not editing.

<a id="cat"></a>
### <span style="color:#7C3AED">cat</span>

**Precise definition:** `cat` concatenates files and writes them to standard output.

**Simple explanation:** It can print a small whole file or join files.

**Bioinformatics example:** `cat analysis/02_metadata/tissue_counts.txt`

**Common trap:** Do not `cat` huge FASTQ files into the terminal.

<a id="wc--l"></a>
### <span style="color:#7C3AED">wc -l</span>

**Precise definition:** `wc -l` prints the number of newline characters in its input or file arguments.

**Simple explanation:** It counts lines.

**Bioinformatics example:** `gzip -dc data/raw/toy_1.fastq.gz | wc -l`

**Common trap:** In FASTQ, reads equal lines divided by 4 only if the file is valid four-line FASTQ.

<a id="grep"></a>
### <span style="color:#7C3AED">grep</span>

**Precise definition:** `grep` searches input for lines matching a pattern and writes matching lines to standard output.

**Simple explanation:** It answers: which lines contain this pattern?

**Bioinformatics example:** `grep 'DDX11L1' data/annotation/pseudogenes_chr1.gff`

**Common trap:** `grep tumour samples.tsv` searches whole lines. Use `awk` when you need a specific column.

<a id="grep--c"></a>
### <span style="color:#7C3AED">grep -c</span>

**Precise definition:** `grep -c` writes a count of matching lines rather than the matching lines themselves.

**Simple explanation:** It answers: how many matching lines are there?

**Bioinformatics example:** `grep -c '^>' data/reference/proteins_9seqs.fa`

**Common trap:** It counts matching lines, not necessarily biological objects unless one object equals one matching line.

<a id="grep--v"></a>
### <span style="color:#7C3AED">grep -v</span>

**Precise definition:** `grep -v` selects non-matching lines instead of matching lines.

**Simple explanation:** It means: show everything except lines with this pattern.

**Bioinformatics example:** `grep -v '^#' data/variants/variants.vcf`

**Common trap:** Be careful: it removes any line matching the pattern, including data lines if the pattern is too broad.

<a id="cut"></a>
### <span style="color:#7C3AED">cut</span>

**Precise definition:** `cut` writes selected byte positions, characters or delimited fields from each input line.

**Simple explanation:** For TSV files, `cut` extracts columns.

**Bioinformatics example:** `cut -f 3 data/metadata/samples.tsv`

**Common trap:** `cut -f` assumes tab-separated fields by default, not commas.

<a id="sort"></a>
### <span style="color:#7C3AED">sort</span>

**Precise definition:** `sort` sorts, merges or compares text lines according to a chosen ordering.

**Simple explanation:** It puts lines in order so duplicates become neighbours.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort`

**Common trap:** Sorting alphabetically is not the same as sorting numerically unless you use numeric options.

<a id="uniq"></a>
### <span style="color:#7C3AED">uniq</span>

**Precise definition:** `uniq` reports or filters repeated adjacent lines in sorted or otherwise grouped input.

**Simple explanation:** It removes duplicate neighbouring lines.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort | uniq`

**Common trap:** `uniq` only detects adjacent duplicates. Use `sort` first when counting categories.

<a id="uniq--c"></a>
### <span style="color:#7C3AED">uniq -c</span>

**Precise definition:** `uniq -c` prefixes each output line with the number of adjacent input lines that were collapsed into that line.

**Simple explanation:** It counts repeated neighbouring values.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort | uniq -c`

**Common trap:** The counts include the header unless you remove or skip it first.

<a id="awk"></a>
### <span style="color:#7C3AED">awk</span>

**Precise definition:** `awk` is a pattern-action text-processing language for selecting records and performing operations on fields.

**Simple explanation:** Use `awk` when your question depends on columns.

**Bioinformatics example:** `awk -F '\t' 'NR > 1 && $3 == "tumour" {print $1}' samples.tsv`

**Common trap:** `$3 == "tumour"` is an exact column comparison, not a whole-line text search.

<a id="nano"></a>
### <span style="color:#7C3AED">nano</span>

**Precise definition:** `nano` is a simple terminal-based text editor.

**Simple explanation:** Use nano when you need to edit a small file on the command line.

**Bioinformatics example:** `nano analysis/02_metadata/workshop_notes.txt`

**Common trap:** Save with Ctrl + O then Enter. Exit with Ctrl + X.

<a id="vim"></a>
### <span style="color:#7C3AED">vim</span>

**Precise definition:** `vim` is Vi IMproved, a modal text editor commonly installed on Unix-like systems.

**Simple explanation:** You may encounter vim on servers. You only need survival skills at first.

**Bioinformatics example:** Press Esc then type `:q!` to quit without saving.

**Common trap:** Vim has modes. If typing does not insert text, you are probably not in insert mode.

<a id="bash-command"></a>
### <span style="color:#7C3AED">bash command</span>

**Precise definition:** The `bash` command starts Bash or runs commands from a file using Bash.

**Simple explanation:** It can run a script as a reproducible recipe.

**Bioinformatics example:** `bash scripts/basic_report.sh`

**Common trap:** Running a script is not the same as opening it. Inspect scripts before running them.

<a id="history"></a>
### <span style="color:#7C3AED">history</span>

**Precise definition:** `history` displays or manipulates the shell command history list.

**Simple explanation:** It shows commands you typed before.

**Bioinformatics example:** `history | tail`

**Common trap:** Do not paste sensitive tokens or patient identifiers into commands because they may be stored in history.

<a id="clear"></a>
### <span style="color:#7C3AED">clear</span>

**Precise definition:** `clear` clears the terminal screen display.

**Simple explanation:** It makes the visible terminal less cluttered.

**Bioinformatics example:** `clear`

**Common trap:** It does not delete files or erase command history.

<a id="gzip"></a>
### <span style="color:#7C3AED">gzip</span>

**Precise definition:** `gzip` is a compression program using the gzip file format, commonly producing files with the `.gz` extension.

**Simple explanation:** It compresses or decompresses `.gz` files.

**Bioinformatics example:** `gzip -l data/raw/toy_1.fastq.gz`

**Common trap:** `gzip` is not the same as `zip`; `.gz` and `.zip` are different archive/compression formats.

<a id="gzip--dc"></a>
### <span style="color:#7C3AED">gzip -dc</span>

**Precise definition:** `gzip -dc` decompresses input and writes the decompressed data to standard output.

**Simple explanation:** It opens a `.gz` file as a stream without replacing the original file.

**Bioinformatics example:** `gzip -dc data/raw/toy_1.fastq.gz | head -n 8`

**Common trap:** This is the safest beginner pattern for inspecting `.fastq.gz` files.

<a id="gzip--l"></a>
### <span style="color:#7C3AED">gzip -l</span>

**Precise definition:** `gzip -l` lists compressed size, uncompressed size and compression ratio information for gzip files.

**Simple explanation:** It shows how large the file is compressed and approximately how large it becomes uncompressed.

**Bioinformatics example:** `gzip -l data/raw/toy_1.fastq.gz`

**Common trap:** It reports file-size information, not sequencing quality.

<a id="gunzip"></a>
### <span style="color:#7C3AED">gunzip</span>

**Precise definition:** `gunzip` decompresses gzip-compressed files; with `-c`, it writes decompressed data to standard output.

**Simple explanation:** Use `gunzip -c` to create a plain-text copy safely.

**Bioinformatics example:** `gunzip -c data/raw/toy_1.fastq.gz > analysis/01_qc/toy_1.fq`

**Common trap:** Running `gunzip file.gz` without `-c` can remove the `.gz` file in place.

<a id="zgrep"></a>
### <span style="color:#7C3AED">zgrep</span>

**Precise definition:** `zgrep` applies grep-like searching to compressed files by decompressing data as needed.

**Simple explanation:** It searches inside `.gz` files without manually creating an uncompressed copy.

**Bioinformatics example:** `zgrep -c '^@' data/raw/toy_1.fastq.gz`

**Common trap:** Counting FASTQ headers with `^@` is a useful approximation in teaching, but `@` can also appear in quality lines.

<a id="zcat-gzcat"></a>
### <span style="color:#7C3AED">zcat / gzcat</span>

**Precise definition:** `zcat` or `gzcat` writes decompressed gzip data to standard output, with naming and behaviour varying by platform.

**Simple explanation:** It is another way to stream `.gz` files.

**Bioinformatics example:** `zcat file.fastq.gz | head` on many Linux systems.

**Common trap:** On macOS, `zcat` may behave differently. Prefer `gzip -dc` for a portable workshop command.

<a id="tr"></a>
### <span style="color:#7C3AED">tr</span>

**Precise definition:** `tr` translates, squeezes or deletes characters from standard input to standard output.

**Simple explanation:** It changes or removes simple characters in a stream.

**Bioinformatics example:** `wc -l file.tsv | tr -d ' '` removes spaces from output.

**Common trap:** `tr` works character by character, not as a full table parser.

<a id="curl"></a>
### <span style="color:#7C3AED">curl</span>

**Precise definition:** `curl` transfers data to or from a server using supported network protocols such as HTTPS and FTP.

**Simple explanation:** It can download or query data from web services and APIs.

**Bioinformatics example:** `curl -s 'https://www.ebi.ac.uk/ena/portal/api/filereport?...'`

**Common trap:** Downloading data is not the same as validating its biological meaning or provenance.

## <span style="color:#D97706">Bioinformatics data concepts</span>

<a id="bioinformatics"></a>
### <span style="color:#D97706">Bioinformatics</span>

**Precise definition:** Bioinformatics is the use of computational, statistical and mathematical methods to store, process, analyse and interpret biological data.

**Simple explanation:** It is where biology meets data and code.

**Bioinformatics example:** Using `grep`, `awk` and scripts to inspect sequencing files is beginner bioinformatics.

**Common trap:** Bioinformatics is not only programming; experimental design and biological interpretation matter just as much.

<a id="biomedical-data"></a>
### <span style="color:#D97706">Biomedical data</span>

**Precise definition:** Biomedical data are data related to biological systems, health, disease, diagnosis, treatment or clinical research.

**Simple explanation:** This includes sequencing reads, metadata, variants, images, lab values and clinical annotations.

**Bioinformatics example:** The workshop uses sequencing-style files and sample metadata.

**Common trap:** Biomedical data can be sensitive even when file formats look ordinary.

<a id="high-throughput-sequencing"></a>
### <span style="color:#D97706">High-throughput sequencing</span>

**Precise definition:** High-throughput sequencing is sequencing that generates large numbers of reads in parallel from DNA or RNA-derived molecules.

**Simple explanation:** It produces too much data for manual file-by-file work.

**Bioinformatics example:** A project may contain hundreds of `.fastq.gz` files.

**Common trap:** The term is broad and includes many assay types, not one single technology.

<a id="ngs"></a>
### <span style="color:#D97706">NGS</span>

**Precise definition:** NGS, next-generation sequencing, is a broad term for massively parallel sequencing technologies that produce many short or long sequence reads.

**Simple explanation:** It is the umbrella term students often hear for modern sequencing.

**Bioinformatics example:** RNA-seq, DNA-seq and targeted panels are NGS applications.

**Common trap:** NGS does not specify the assay, organism, read length or analysis goal.

<a id="read"></a>
### <span style="color:#D97706">Read</span>

**Precise definition:** A sequencing read is the observed sequence output for one DNA or RNA-derived fragment or molecule, often with associated quality scores.

**Simple explanation:** A read is one small piece measured by the sequencer.

**Bioinformatics example:** In FASTQ, one read is represented by four lines.

**Common trap:** Reads are not genes. Many reads may come from the same gene or genomic region.

<a id="read-id-read-header"></a>
### <span style="color:#D97706">Read ID / read header</span>

**Precise definition:** A read ID is the identifier line associated with a sequencing read, often including run, instrument and positional information.

**Simple explanation:** It is the name tag for a read.

**Bioinformatics example:** `@SRR925709.1 HWUSI-EAS053R_... length=76` is a FASTQ header.

**Common trap:** The header format differs between platforms, archives and processing tools.

<a id="base"></a>
### <span style="color:#D97706">Base</span>

**Precise definition:** A base is one nucleotide symbol in DNA or RNA sequence data, typically A, C, G, T or U plus ambiguity codes.

**Simple explanation:** A base is one letter in a DNA or RNA sequence.

**Bioinformatics example:** Line 2 of a FASTQ read might contain `TGCAGCANTA...`.

**Common trap:** In sequencing files, a base is a measurement, not absolute truth.

<a id="n-base"></a>
### <span style="color:#D97706">N base</span>

**Precise definition:** `N` is an ambiguity symbol representing an unknown or unspecified nucleotide base.

**Simple explanation:** `N` means the sequencer or reference could not confidently specify A, C, G or T.

**Bioinformatics example:** A FASTQ sequence may contain `NN` where base calls were uncertain.

**Common trap:** Seeing `N` does not automatically mean the file is broken.

<a id="quality-score"></a>
### <span style="color:#D97706">Quality score</span>

**Precise definition:** A quality score is a numerical estimate of confidence in a sequence base call, usually encoded in FASTQ as printable ASCII characters.

**Simple explanation:** It tells you how confident the sequencer was for each base.

**Bioinformatics example:** Line 4 of each FASTQ record contains quality characters.

**Common trap:** Quality characters are not random punctuation. They encode numbers.

<a id="phred-quality-score"></a>
### <span style="color:#D97706">Phred quality score</span>

**Precise definition:** A Phred quality score is a logarithmic score related to the estimated probability that a base call is incorrect.

**Simple explanation:** Higher Phred score means lower estimated error probability.

**Bioinformatics example:** A base with Q30 has an estimated error probability of about 1 in 1000.

**Common trap:** Phred scores are estimates, not guarantees.

<a id="paired-end-sequencing"></a>
### <span style="color:#D97706">Paired-end sequencing</span>

**Precise definition:** Paired-end sequencing sequences both ends of a DNA or cDNA fragment, producing two related reads per fragment.

**Simple explanation:** You get two files per sample: R1 and R2.

**Bioinformatics example:** `sample_01_R1.fastq.gz` and `sample_01_R2.fastq.gz` belong together.

**Common trap:** Never mix R1 from one sample with R2 from another sample.

<a id="r1-and-r2"></a>
### <span style="color:#D97706">R1 and R2</span>

**Precise definition:** R1 and R2 denote read 1 and read 2 from paired-end sequencing of the same fragment library.

**Simple explanation:** R1 is the first read file and R2 is the mate-pair file.

**Bioinformatics example:** The workshop toy files behave like `toy_1.fastq.gz` and `toy_2.fastq.gz`.

**Common trap:** R1/R2 are not biological replicates. They are paired technical reads.

<a id="sample"></a>
### <span style="color:#D97706">Sample</span>

**Precise definition:** A sample is the biological material or derived preparation from which data are generated.

**Simple explanation:** It is the thing measured, such as tumour tissue, normal tissue or blood.

**Bioinformatics example:** `S01` in `samples.tsv` is a sample ID.

**Common trap:** A patient can have more than one sample.

<a id="patient-id"></a>
### <span style="color:#D97706">Patient ID</span>

**Precise definition:** A patient ID is an identifier linking samples or records to a patient or participant, ideally de-identified in research datasets.

**Simple explanation:** It lets you see which samples belong to the same person.

**Bioinformatics example:** Tumour and normal samples may share the same patient ID.

**Common trap:** Real patient identifiers require strict privacy handling.

<a id="tissue"></a>
### <span style="color:#D97706">Tissue</span>

**Precise definition:** Tissue is the biological source or anatomical material from which a sample was taken.

**Simple explanation:** It says what kind of biological material the sample represents.

**Bioinformatics example:** `cut -f 3 samples.tsv | sort | uniq -c` summarises tissue categories.

**Common trap:** Tissue labels must be checked because spelling differences can split categories.

<a id="tumour-sample"></a>
### <span style="color:#D97706">Tumour sample</span>

**Precise definition:** A tumour sample is biological material derived from neoplastic tissue.

**Simple explanation:** It is the cancer tissue sample.

**Bioinformatics example:** In the workshop, tumour samples are labelled in the tissue column.

**Common trap:** Tumour samples can contain non-tumour cells, so purity may matter in real analyses.

<a id="normal-sample"></a>
### <span style="color:#D97706">Normal sample</span>

**Precise definition:** A normal sample is non-tumour biological material used as a comparator or control.

**Simple explanation:** It is the comparison tissue, often from the same patient in cancer genomics.

**Bioinformatics example:** Matched tumour-normal analysis compares tumour variants against normal DNA.

**Common trap:** Normal does not always mean perfectly healthy; context matters.

<a id="case"></a>
### <span style="color:#D97706">Case</span>

**Precise definition:** A case is a subject or sample with the condition, phenotype or exposure of interest in a study design.

**Simple explanation:** The case group is the group being studied for the main condition.

**Bioinformatics example:** Tumour samples may be labelled `case` in teaching metadata.

**Common trap:** Case/control labels are study-design labels, not universal biological truths.

<a id="control"></a>
### <span style="color:#D97706">Control</span>

**Precise definition:** A control is a comparator subject, sample or condition used to interpret the effect or association of interest.

**Simple explanation:** Controls help you see what is different from the case group.

**Bioinformatics example:** Normal samples may be labelled `control` in the workshop metadata.

**Common trap:** Poorly matched controls can create misleading conclusions.

<a id="batch"></a>
### <span style="color:#D97706">Batch</span>

**Precise definition:** A batch is a group of samples processed together under shared technical conditions.

**Simple explanation:** Batch says what samples experienced the same technical process.

**Bioinformatics example:** `cut -f 5 samples.tsv | sort | uniq -c` counts samples by batch.

**Common trap:** Batch can be confounded with biology if all cases are in one batch and controls in another.

<a id="batch-effect"></a>
### <span style="color:#D97706">Batch effect</span>

**Precise definition:** A batch effect is systematic technical variation associated with processing conditions rather than the biological variable of interest.

**Simple explanation:** It is a technical difference that can masquerade as biology.

**Bioinformatics example:** If all tumour samples were sequenced in B1 and normals in B2, tissue and batch are confounded.

**Common trap:** Batch correction cannot rescue every badly designed experiment.

<a id="metadata-qc"></a>
### <span style="color:#D97706">Metadata QC</span>

**Precise definition:** Metadata QC is the systematic checking of sample annotations for completeness, consistency, plausibility and compatibility with the analysis design.

**Simple explanation:** Before analysing reads, check whether the sample table makes sense.

**Bioinformatics example:** Counting tissues and batches is a first metadata QC step.

**Common trap:** Metadata QC is not optional; it is part of scientific quality control.

<a id="dna-seq"></a>
### <span style="color:#D97706">DNA-seq</span>

**Precise definition:** DNA-seq is sequencing of DNA molecules to study genomic sequence, variants, copy number, structure or other DNA-level features.

**Simple explanation:** DNA-seq asks questions about the genome.

**Bioinformatics example:** A DNA-seq workflow may produce FASTQ, BAM and VCF files.

**Common trap:** DNA-seq is different from RNA-seq because it measures DNA rather than RNA expression.

<a id="rna-seq"></a>
### <span style="color:#D97706">RNA-seq</span>

**Precise definition:** RNA-seq is sequencing of RNA-derived molecules, usually after conversion to cDNA, to study transcript abundance, transcript structure or RNA variation.

**Simple explanation:** RNA-seq asks what genes or transcripts are active and how much RNA is present.

**Bioinformatics example:** A typical RNA-seq workflow uses FASTQ quality control, alignment or quantification then expression analysis.

**Common trap:** RNA-seq read counts are influenced by library preparation and transcript structure.

<a id="library"></a>
### <span style="color:#D97706">Library</span>

**Precise definition:** A sequencing library is a prepared collection of DNA or RNA-derived fragments with adapters and other features required for sequencing.

**Simple explanation:** The library is the sample prepared for the sequencer.

**Bioinformatics example:** A paired-end RNA-seq library can produce R1 and R2 FASTQ files.

**Common trap:** Library preparation choices shape what biological molecules are visible.

<a id="library-strategy"></a>
### <span style="color:#D97706">Library strategy</span>

**Precise definition:** Library strategy is metadata describing the sequencing assay type or experimental approach used to generate reads.

**Simple explanation:** It tells archives and analysts what kind of experiment produced the data.

**Bioinformatics example:** ENA/SRA records may list library strategy such as RNA-Seq or WGS.

**Common trap:** Do not infer library strategy only from filenames.

## <span style="color:#0891B2">Bioinformatics file formats</span>

<a id="fastq"></a>
### <span style="color:#0891B2">FASTQ</span>

**Precise definition:** FASTQ is a text format for sequence reads in which each record commonly has four lines: identifier, sequence, separator and encoded quality scores.

**Simple explanation:** FASTQ stores reads plus quality. One read takes four lines.

**Bioinformatics example:** `gzip -dc data/raw/toy_1.fastq.gz | head -n 8` shows two FASTQ records.

**Common trap:** FASTA has sequences but no per-base quality scores; FASTQ has both.

<a id="fastqgz"></a>
### <span style="color:#0891B2">`.fastq.gz`</span>

**Precise definition:** `.fastq.gz` denotes a FASTQ file compressed using gzip.

**Simple explanation:** This is the common raw read file you receive from sequencing centres and archives.

**Bioinformatics example:** `data/raw/toy_1.fastq.gz`

**Common trap:** Do not open it directly in Excel or run plain `head` on it.

<a id="fq"></a>
### <span style="color:#0891B2">`.fq`</span>

**Precise definition:** `.fq` is a conventional shortened filename extension for an uncompressed FASTQ file.

**Simple explanation:** It means the same kind of content as `.fastq`, usually plain text.

**Bioinformatics example:** `analysis/01_qc/toy_1.fq` is a teaching copy created from compressed raw data.

**Common trap:** Do not create huge uncompressed `.fq` copies unless you need them.

<a id="fasta"></a>
### <span style="color:#0891B2">FASTA</span>

**Precise definition:** FASTA is a text format for biological sequences in which each record begins with a definition line starting with `>` followed by one or more sequence lines.

**Simple explanation:** FASTA stores sequence names and sequences, but no per-base quality scores.

**Bioinformatics example:** `grep -c '^>' data/reference/proteins_9seqs.fa` counts FASTA records.

**Common trap:** A FASTA sequence can span multiple lines, so do not assume one sequence equals one line.

<a id="fasta-definition-line-header"></a>
### <span style="color:#0891B2">FASTA definition line / header</span>

**Precise definition:** A FASTA definition line is the line before a sequence, begins with `>` and contains a sequence identifier plus optional description.

**Simple explanation:** It is the title line for one FASTA sequence.

**Bioinformatics example:** `>NP_000005.3 alpha-2-macroglobulin precursor`

**Common trap:** The identifier should be unique within the file for many tools to work correctly.

<a id="protein-fasta"></a>
### <span style="color:#0891B2">Protein FASTA</span>

**Precise definition:** A protein FASTA is a FASTA file whose sequence lines use amino acid one-letter codes.

**Simple explanation:** It stores protein sequences rather than DNA bases.

**Bioinformatics example:** `data/reference/proteins.fa`

**Common trap:** Protein FASTA may contain letters such as M, K, L and V that are not DNA bases.

<a id="nucleotide-fasta"></a>
### <span style="color:#0891B2">Nucleotide FASTA</span>

**Precise definition:** A nucleotide FASTA is a FASTA file whose sequence lines represent DNA or RNA using nucleotide symbols and ambiguity codes.

**Simple explanation:** It stores genome, transcript or other nucleotide sequences.

**Bioinformatics example:** A reference genome FASTA is a nucleotide FASTA.

**Common trap:** Nucleotide FASTA does not contain quality scores.

<a id="tsv"></a>
### <span style="color:#0891B2">TSV</span>

**Precise definition:** TSV, tab-separated values, is a plain-text table format in which fields are separated by tab characters and records by newlines.

**Simple explanation:** A TSV is a spreadsheet-like table saved as clean text.

**Bioinformatics example:** `data/metadata/samples.tsv`

**Common trap:** TSV is usually easier than CSV for bioinformatics because commas may appear inside descriptions.

<a id="csv"></a>
### <span style="color:#0891B2">CSV</span>

**Precise definition:** CSV, comma-separated values, is a plain-text table format in which fields are separated by commas, with quoting rules for commas inside values.

**Simple explanation:** CSV is another common table format.

**Bioinformatics example:** A clinical export might arrive as `patients.csv`.

**Common trap:** Do not process CSV with `cut -f`; `cut -f` expects tabs unless told otherwise.

<a id="gff"></a>
### <span style="color:#0891B2">GFF</span>

**Precise definition:** GFF, General Feature Format, is a family of tabular text formats for describing sequence features and their coordinates.

**Simple explanation:** GFF files describe where genes, transcripts, exons and other features are located.

**Bioinformatics example:** `data/annotation/pseudogenes_chr1.gff`

**Common trap:** There are multiple GFF versions. Always check which version a file uses.

<a id="gff3"></a>
### <span style="color:#0891B2">GFF3</span>

**Precise definition:** GFF3 is a nine-column, tab-delimited plain-text format for genomic feature annotations with defined escaping and attribute conventions.

**Simple explanation:** GFF3 is a structured gene-annotation table.

**Bioinformatics example:** A GFF3 row can describe a gene, exon or pseudogene with chromosome, start, end, strand and attributes.

**Common trap:** Real GFF3 files from providers may have provider-specific conventions.

<a id="gff-comment-line"></a>
### <span style="color:#0891B2">GFF comment line</span>

**Precise definition:** A GFF comment or directive line begins with `#` and is not a feature row.

**Simple explanation:** These lines explain the file or give metadata.

**Bioinformatics example:** `grep -v '^#' data/annotation/pseudogenes_chr1.gff | head` hides comments.

**Common trap:** Do not delete comments from original annotation files; they may contain important metadata.

<a id="bed"></a>
### <span style="color:#0891B2">BED</span>

**Precise definition:** BED is a tab-delimited text format for genomic intervals, minimally using chromosome, start and end columns.

**Simple explanation:** BED stores regions of a genome.

**Bioinformatics example:** A BED file might mark target regions for a sequencing panel.

**Common trap:** BED start coordinates are zero-based while many other formats are one-based.

<a id="vcf"></a>
### <span style="color:#0891B2">VCF</span>

**Precise definition:** VCF, Variant Call Format, is a text format for sequence variants, genotypes and variant annotations.

**Simple explanation:** VCF stores differences from a reference genome.

**Bioinformatics example:** `grep -v '^#' data/variants/variants.vcf` shows variant rows.

**Common trap:** VCF header lines are essential for interpreting INFO and FORMAT fields.

<a id="vcf-header"></a>
### <span style="color:#0891B2">VCF header</span>

**Precise definition:** A VCF header is the metadata section beginning with `##` lines and ending with a single `#CHROM` column header line.

**Simple explanation:** It explains what the variant table columns and annotations mean.

**Bioinformatics example:** `grep '^#' data/variants/variants.vcf` shows the header.

**Common trap:** Never discard the VCF header when sharing or analysing variants.

<a id="vcf-record"></a>
### <span style="color:#0891B2">VCF record</span>

**Precise definition:** A VCF record is one data line describing a variant site with required fields such as CHROM, POS, ID, REF, ALT, QUAL, FILTER and INFO.

**Simple explanation:** One row usually describes one variant position or event.

**Bioinformatics example:** A row with `REF=A` and `ALT=G` describes an A-to-G alternate allele at that site.

**Common trap:** Multi-allelic and structural variants can make VCF records more complex than simple SNP rows.

<a id="sam"></a>
### <span style="color:#0891B2">SAM</span>

**Precise definition:** SAM, Sequence Alignment/Map, is a tab-delimited text format for storing sequence alignments against reference sequences.

**Simple explanation:** SAM is human-readable aligned read data.

**Bioinformatics example:** An aligner may output SAM before conversion to BAM.

**Common trap:** SAM files are usually large. BAM is more common for storage.

<a id="bam"></a>
### <span style="color:#0891B2">BAM</span>

**Precise definition:** BAM is the binary compressed representation of SAM alignment data.

**Simple explanation:** BAM stores aligned reads efficiently.

**Bioinformatics example:** Use `samtools view sample.bam | head` to inspect alignments.

**Common trap:** BAM is not plain text. Do not use ordinary `head` directly on BAM.

<a id="cram"></a>
### <span style="color:#0891B2">CRAM</span>

**Precise definition:** CRAM is a compressed alignment format related to SAM/BAM that can use a reference sequence to reduce file size.

**Simple explanation:** CRAM can store aligned reads more compactly than BAM.

**Bioinformatics example:** A genomic archive may provide `.cram` plus `.crai` index files.

**Common trap:** CRAM often needs the correct reference genome to decode alignments correctly.

<a id="index-file"></a>
### <span style="color:#0891B2">Index file</span>

**Precise definition:** An index file stores auxiliary information that allows software to seek rapidly to regions in a large data file.

**Simple explanation:** An index is like a map for a large genomic file.

**Bioinformatics example:** BAM uses `.bai`; CRAM uses `.crai`; compressed VCF often uses `.tbi` or `.csi`.

**Common trap:** The index must match the exact data file version.

<a id="log-file"></a>
### <span style="color:#0891B2">Log file</span>

**Precise definition:** A log file records messages from software about execution, progress, warnings, errors and summary information.

**Simple explanation:** Logs tell you what happened during a run.

**Bioinformatics example:** FastQC or aligners often produce logs or reports.

**Common trap:** A successful-looking output can still have warnings in the log.

<a id="markdown"></a>
### <span style="color:#0891B2">Markdown</span>

**Precise definition:** Markdown is a lightweight markup language for writing structured plain-text documents that can render as formatted text.

**Simple explanation:** Markdown lets you write readable manuals, headings, tables and code blocks in plain text.

**Bioinformatics example:** `WORKSHOP_MANUAL.md` and this glossary are Markdown files.

**Common trap:** Markdown formatting can vary slightly between renderers.

## <span style="color:#C026D3">Genomics and annotation terms</span>

<a id="gene"></a>
### <span style="color:#C026D3">Gene</span>

**Precise definition:** A gene is a genomic region whose sequence contributes to a functional product, such as RNA or protein, together with associated regulatory and transcript structures depending on context.

**Simple explanation:** A gene is a functional unit in the genome, but its exact boundaries can depend on annotation rules.

**Bioinformatics example:** GFF files can contain gene features.

**Common trap:** Do not treat every gene as one protein; many genes have multiple transcripts and products.

<a id="transcript"></a>
### <span style="color:#C026D3">Transcript</span>

**Precise definition:** A transcript is an RNA molecule produced from a genomic locus by transcription, potentially processed by splicing, capping or polyadenylation.

**Simple explanation:** A transcript is an RNA version or isoform made from a gene.

**Bioinformatics example:** RNA-seq may quantify transcript abundance.

**Common trap:** One gene can have many transcripts.

<a id="exon"></a>
### <span style="color:#C026D3">Exon</span>

**Precise definition:** An exon is a segment retained in the mature RNA product after splicing or represented in the final transcript structure.

**Simple explanation:** Exons are the transcript parts that remain after introns are removed.

**Bioinformatics example:** GFF/GTF annotation files often list exon coordinates.

**Common trap:** Not all exons are protein-coding.

<a id="intron"></a>
### <span style="color:#C026D3">Intron</span>

**Precise definition:** An intron is a transcribed segment removed from a precursor RNA during splicing.

**Simple explanation:** Introns are cut out during RNA processing.

**Bioinformatics example:** Splice-aware aligners handle reads spanning exon-exon junctions.

**Common trap:** Introns can still have regulatory or biological roles.

<a id="splicing"></a>
### <span style="color:#C026D3">Splicing</span>

**Precise definition:** Splicing is the RNA-processing reaction that removes introns and joins exons to form mature RNA molecules.

**Simple explanation:** Splicing explains why RNA-seq reads may jump across genomic regions.

**Bioinformatics example:** STAR can align reads across splice junctions.

**Common trap:** Alternative splicing means one gene can produce multiple transcript isoforms.

<a id="pseudogene"></a>
### <span style="color:#C026D3">Pseudogene</span>

**Precise definition:** A pseudogene is a genomic sequence similar to a known gene but generally considered non-functional or lacking the original gene’s usual coding function.

**Simple explanation:** A pseudogene looks gene-like but is usually not a normal functional copy.

**Bioinformatics example:** `grep 'pseudogene' data/annotation/pseudogenes_chr1.gff`

**Common trap:** Some pseudogenes may be transcribed or biologically relevant, so the term does not mean completely irrelevant.

<a id="ddx11l1"></a>
### <span style="color:#C026D3">DDX11L1</span>

**Precise definition:** DDX11L1 is a gene or pseudogene annotation name used in human genome annotations and in the workshop as a searchable feature name.

**Simple explanation:** For learners, it is a concrete string to search in a GFF file.

**Bioinformatics example:** `grep 'DDX11L1' data/annotation/pseudogenes_chr1.gff`

**Common trap:** The teaching goal is not memorising this gene; it is learning to search annotations.

<a id="wash7p"></a>
### <span style="color:#C026D3">WASH7P</span>

**Precise definition:** WASH7P is a pseudogene-like annotation name found in human genome annotations and used as a searchable example.

**Simple explanation:** It is another feature name you can find in a GFF file.

**Bioinformatics example:** `grep 'WASH7P' data/annotation/pseudogenes_chr1.gff`

**Common trap:** Feature names may change between annotation releases.

<a id="chromosome"></a>
### <span style="color:#C026D3">Chromosome</span>

**Precise definition:** A chromosome is a long DNA molecule packaged with proteins that carries genetic information.

**Simple explanation:** A chromosome is one large genome piece, such as chromosome 1.

**Bioinformatics example:** VCF and GFF rows usually include a chromosome or contig column.

**Common trap:** Reference naming can differ: `chr1` and `1` may refer to the same chromosome but are not identical strings.

<a id="coordinate"></a>
### <span style="color:#C026D3">Coordinate</span>

**Precise definition:** A genomic coordinate is a position or interval location defined relative to a specific reference sequence and coordinate convention.

**Simple explanation:** Coordinates are addresses on a reference genome.

**Bioinformatics example:** A VCF position might say chromosome 1, position 123456.

**Common trap:** Coordinates are meaningless without the reference assembly and coordinate system.

<a id="reference-genome"></a>
### <span style="color:#C026D3">Reference genome</span>

**Precise definition:** A reference genome is a representative assembled genome sequence used as a coordinate framework for alignment, annotation and variant reporting.

**Simple explanation:** It is the map to which reads and variants are compared.

**Bioinformatics example:** Human analyses may use GRCh38.

**Common trap:** A reference genome is not a perfect genome for every individual.

<a id="grch38"></a>
### <span style="color:#C026D3">GRCh38</span>

**Precise definition:** GRCh38 is a major human reference genome assembly released by the Genome Reference Consortium.

**Simple explanation:** It is one common human genome coordinate system.

**Bioinformatics example:** An annotation may say it is based on GRCh38.p14.

**Common trap:** Do not mix GRCh37 and GRCh38 coordinates without liftover or careful conversion.

<a id="refseq"></a>
### <span style="color:#C026D3">RefSeq</span>

**Precise definition:** RefSeq is NCBI’s curated reference sequence database for genomes, transcripts, proteins and related records.

**Simple explanation:** RefSeq provides stable-looking accessioned reference sequences.

**Bioinformatics example:** `NP_000005.3` is a RefSeq-style protein accession.

**Common trap:** Accession versions matter. `.3` and `.4` can refer to different sequence versions.

<a id="accession"></a>
### <span style="color:#C026D3">Accession</span>

**Precise definition:** An accession is a database-assigned identifier used to retrieve and cite a biological record.

**Simple explanation:** It is a stable catalogue number for data.

**Bioinformatics example:** `SRR925709` is a run accession; `NP_000005.3` is a protein accession.

**Common trap:** Always include accession versions where relevant.

## <span style="color:#DC2626">Public archives and provenance</span>

<a id="sra"></a>
### <span style="color:#DC2626">SRA</span>

**Precise definition:** The Sequence Read Archive is a public repository for high-throughput sequencing data, including raw reads and some alignment data.

**Simple explanation:** SRA is one of the major places where sequencing reads are stored for reuse.

**Bioinformatics example:** The workshop FASTQ reads trace to run accession `SRR925709`.

**Common trap:** SRA records have hierarchy; a run is not the same as a study.

<a id="ena"></a>
### <span style="color:#DC2626">ENA</span>

**Precise definition:** The European Nucleotide Archive is EMBL-EBI’s public archive for nucleotide sequence data, including raw reads, assemblies and annotations.

**Simple explanation:** ENA is the European mirror/archive where you can look up sequencing accessions.

**Bioinformatics example:** Open `SRR925709` in ENA to see run metadata and FASTQ links.

**Common trap:** ENA and SRA may expose the same INSDC records with different interfaces.

<a id="run-accession"></a>
### <span style="color:#DC2626">Run accession</span>

**Precise definition:** A run accession is an archive identifier for a sequencing run or run-level data object.

**Simple explanation:** It points to a specific sequencing run record.

**Bioinformatics example:** `SRR925709` appears in the FASTQ read header.

**Common trap:** The run accession is not the same as the individual read number after the dot.

<a id="study-accession"></a>
### <span style="color:#DC2626">Study accession</span>

**Precise definition:** A study accession identifies a higher-level archive record grouping related samples, experiments and runs.

**Simple explanation:** It is the project-level catalogue ID.

**Bioinformatics example:** A study can contain many samples and runs.

**Common trap:** Do not cite only a study if your analysis used specific runs; include run accessions too.

<a id="sample-accession"></a>
### <span style="color:#DC2626">Sample accession</span>

**Precise definition:** A sample accession identifies a biological sample record in a public archive.

**Simple explanation:** It connects run data to biological metadata about the sample.

**Bioinformatics example:** SRA/ENA records often include SRS/ERS/SAMN-style sample identifiers.

**Common trap:** Sample records can be incomplete or inconsistently annotated.

<a id="provenance"></a>
### <span style="color:#DC2626">Provenance</span>

**Precise definition:** Provenance is documented information about where data came from, how it was generated and how it was transformed.

**Simple explanation:** It is the data’s history and chain of custody.

**Bioinformatics example:** A provenance note might include ENA accession, download date, filename and processing command.

**Common trap:** Without provenance, results are hard to trust or reproduce.

<a id="traceability"></a>
### <span style="color:#DC2626">Traceability</span>

**Precise definition:** Traceability is the ability to follow data, results or decisions back to their sources and processing steps.

**Simple explanation:** It means you can answer: where did this file come from?

**Bioinformatics example:** `zgrep -m1 '^@' data/raw/toy_1.fastq.gz` reveals `SRR925709`.

**Common trap:** Traceability requires both identifiers and saved analysis steps.

<a id="public-archive"></a>
### <span style="color:#DC2626">Public archive</span>

**Precise definition:** A public archive is a repository that stores data records for community access, citation and reuse.

**Simple explanation:** It lets other researchers download data used in a paper or workshop.

**Bioinformatics example:** SRA, ENA, DDBJ and GenBank are public sequence archives.

**Common trap:** Public availability does not automatically mean unlimited ethical use.

<a id="ftp"></a>
### <span style="color:#DC2626">FTP</span>

**Precise definition:** File Transfer Protocol is a network protocol historically used for transferring files between computers.

**Simple explanation:** Many archives provide FTP-style links for large files.

**Bioinformatics example:** ENA may list FTP paths to `.fastq.gz` files.

**Common trap:** Modern workflows may use HTTPS, cloud paths or APIs instead.

<a id="api"></a>
### <span style="color:#DC2626">API</span>

**Precise definition:** An application programming interface is a defined way for software to request data or services from another system.

**Simple explanation:** An API lets scripts ask a database for structured information.

**Bioinformatics example:** The ENA Portal API can return metadata for `SRR925709`.

**Common trap:** An API response still needs validation and interpretation.

## <span style="color:#2563EB">Professional tools mentioned in the workshop</span>

<a id="fastqc"></a>
### <span style="color:#2563EB">FastQC</span>

**Precise definition:** FastQC is a software tool that generates quality-control reports for high-throughput sequencing read files.

**Simple explanation:** FastQC checks whether FASTQ files look healthy before deeper analysis.

**Bioinformatics example:** `fastqc data/raw/toy_1.fastq.gz -o analysis/01_qc`

**Common trap:** FastQC warnings are diagnostic signals, not automatic proof that data are unusable.

<a id="bwa"></a>
### <span style="color:#2563EB">BWA</span>

**Precise definition:** BWA, Burrows-Wheeler Aligner, is a software package for aligning DNA sequencing reads to a large reference genome.

**Simple explanation:** BWA maps DNA reads onto a reference genome.

**Bioinformatics example:** A DNA-seq pipeline may use BWA before variant calling.

**Common trap:** BWA is not usually the default choice for splice-aware RNA-seq alignment.

<a id="star"></a>
### <span style="color:#2563EB">STAR</span>

**Precise definition:** STAR is a splice-aware RNA-seq aligner designed to align RNA sequencing reads to a reference genome while detecting splice junctions.

**Simple explanation:** STAR maps RNA-seq reads even when they cross exon-exon boundaries.

**Bioinformatics example:** `STAR --readFilesIn toy_1.fq toy_2.fq --genomeDir STARref ...`

**Common trap:** STAR needs a prepared genome index and careful parameter choices in real analyses.

<a id="samtools"></a>
### <span style="color:#2563EB">samtools</span>

**Precise definition:** samtools is a suite of programs for reading, writing, editing, indexing and analysing SAM, BAM and CRAM files.

**Simple explanation:** samtools is the everyday toolkit for alignment files.

**Bioinformatics example:** `samtools view sample.bam | head`

**Common trap:** samtools works on alignment files, not raw FASTQ files.

<a id="bcftools"></a>
### <span style="color:#2563EB">bcftools</span>

**Precise definition:** bcftools is a suite of programs for variant calling and for reading, filtering, querying, merging and manipulating VCF/BCF files.

**Simple explanation:** bcftools is the everyday toolkit for variant files.

**Bioinformatics example:** `bcftools view variants.vcf.gz`

**Common trap:** bcftools is not a replacement for understanding variant filters and annotations.

<a id="alignment"></a>
### <span style="color:#2563EB">Alignment</span>

**Precise definition:** Alignment is the process of placing a sequence read or sequence against a reference sequence to identify its likely origin and differences.

**Simple explanation:** Alignment asks: where does this read belong?

**Bioinformatics example:** BWA and STAR perform alignment for different sequencing contexts.

**Common trap:** Good alignment depends on reference choice, read quality and parameters.

<a id="splice-aware-aligner"></a>
### <span style="color:#2563EB">Splice-aware aligner</span>

**Precise definition:** A splice-aware aligner is an aligner that can map RNA-seq reads across exon-exon junctions by allowing gaps corresponding to introns.

**Simple explanation:** It understands that mature RNA has introns removed.

**Bioinformatics example:** STAR is a splice-aware aligner.

**Common trap:** DNA-seq aligners are not automatically suitable for RNA-seq.

<a id="quality-control-qc"></a>
### <span style="color:#2563EB">Quality control (QC)</span>

**Precise definition:** Quality control is the assessment of data, metadata, processing steps or outputs against expected technical and biological criteria.

**Simple explanation:** QC means checking whether data are usable and whether anything looks suspicious.

**Bioinformatics example:** Counting FASTQ lines and inspecting metadata are simple QC steps.

**Common trap:** QC is not one tool. It is a mindset across the whole workflow.

<a id="qc-report"></a>
### <span style="color:#2563EB">QC report</span>

**Precise definition:** A QC report is a structured output summarising quality-control checks, metrics, warnings or visualisations.

**Simple explanation:** It collects quality information so you can review it later.

**Bioinformatics example:** FastQC creates HTML QC reports; the workshop script creates text QC summaries.

**Common trap:** A report needs interpretation. Passing or failing labels are not always absolute.

## <span style="color:#B91C1C">Common errors and safety concepts</span>

<a id="no-such-file-or-directory"></a>
### <span style="color:#B91C1C">`No such file or directory`</span>

**Precise definition:** This error means a command tried to access a path that does not exist from the current context or with the given spelling.

**Simple explanation:** The shell or program cannot find what you named.

**Bioinformatics example:** `ls wrong_folder` produces this error.

**Common trap:** Run `pwd` and `ls`, then check the path step by step.

<a id="command-not-found"></a>
### <span style="color:#B91C1C">`Command not found`</span>

**Precise definition:** This error means the shell could not resolve the command name to a shell function, built-in or executable program on the PATH.

**Simple explanation:** The shell does not know that program name.

**Bioinformatics example:** `grepp tumour samples.tsv` fails because `grepp` is a typo.

**Common trap:** It can also mean the program is not installed or not on your PATH.

<a id="permission-denied"></a>
### <span style="color:#B91C1C">`Permission denied`</span>

**Precise definition:** This error means the process lacks the required permission to read, write or execute the requested file or directory.

**Simple explanation:** The system is refusing access.

**Bioinformatics example:** Trying to write into a protected system folder may produce this error.

**Common trap:** Do not fix permissions blindly with `sudo`; understand why access is denied.

<a id="hanging-command"></a>
### <span style="color:#B91C1C">Hanging command</span>

**Precise definition:** A hanging command is a command that appears not to finish because it is waiting for input, blocked, running slowly or producing no visible output yet.

**Simple explanation:** It looks stuck, but it may be waiting or working.

**Bioinformatics example:** Running `cat` without a filename waits for keyboard input.

**Common trap:** Use Ctrl + C to stop a command that is waiting during practice.

<a id="gibberish-output"></a>
### <span style="color:#B91C1C">Gibberish output</span>

**Precise definition:** Gibberish output is unreadable text-like display caused by interpreting binary or compressed data as if it were plain text.

**Simple explanation:** It usually means you opened a compressed or binary file the wrong way.

**Bioinformatics example:** `head data/raw/toy_1.fastq.gz` may display unreadable characters.

**Common trap:** Use `gzip -dc file.fastq.gz | head` for gzip-compressed FASTQ.

<a id="overwrite"></a>
### <span style="color:#B91C1C">Overwrite</span>

**Precise definition:** Overwrite means replacing existing file contents with new contents at the same path.

**Simple explanation:** The old file contents are lost or replaced.

**Bioinformatics example:** `command > existing_file.txt` overwrites that file.

**Common trap:** Use clear output names and avoid redirecting into raw data folders.

<a id="raw-data-destruction"></a>
### <span style="color:#B91C1C">Raw data destruction</span>

**Precise definition:** Raw data destruction is accidental or intentional modification, deletion or replacement of original source data.

**Simple explanation:** It means losing the untouched original files.

**Bioinformatics example:** `gunzip data/raw/toy_1.fastq.gz` can replace the compressed archive with an uncompressed file.

**Common trap:** Protect `data/raw/`. Write new files to `analysis/`.

## <span style="color:#374151">High-yield contrasts</span>

<a id="terminal-vs-shell"></a>
### <span style="color:#374151">Terminal vs shell</span>

| Term | Exact distinction | Beginner version |
|---|---|---|
| Terminal | Interface application that displays text input and output | The window |
| Shell | Command interpreter running inside the terminal | The language brain |

<a id="bash-vs-linux"></a>
### <span style="color:#374151">Bash vs Linux</span>

| Term | Exact distinction | Beginner version |
|---|---|---|
| Bash | Unix shell and command language | One way to interpret commands |
| Linux | Kernel or operating-system environment | The system many servers run |

<a id="gui-vs-cli"></a>
### <span style="color:#374151">GUI vs CLI</span>

| Term | Exact distinction | Beginner version |
|---|---|---|
| GUI | Visual interface using windows, icons, menus and pointing devices | Click-based work |
| CLI | Text interface using commands | Typed, reproducible work |

<a id="fasta-vs-fastq"></a>
### <span style="color:#374151">FASTA vs FASTQ</span>

| Format | Exact content | Beginner version |
|---|---|---|
| FASTA | Sequence identifier plus biological sequence | Sequence only |
| FASTQ | Read identifier, sequence, separator and quality scores | Sequence plus quality |

<a id="grep-vs-awk"></a>
### <span style="color:#374151">grep vs awk</span>

| Tool | Exact best use | Beginner version |
|---|---|---|
| `grep` | Line pattern matching | Find lines containing text |
| `awk` | Field-aware record processing | Work with columns |

<a id="pipe-vs-redirection"></a>
### <span style="color:#374151">Pipe vs redirection</span>

| Symbol | Exact function | Beginner version |
|---|---|---|
| `|` | Connect stdout of one command to stdin of another | Pass result onward |
| `>` | Redirect stdout to a file, overwriting | Save result to file |
| `>>` | Redirect stdout to a file, appending | Add result to file |

## <span style="color:#6B7280">Source notes for exact definitions</span>

The definitions above are written in teaching language but aligned with authoritative references:

- GNU Bash Reference Manual: shell concepts, Bash behaviour, command execution, expansion, redirection and history.
- GNU Coreutils manual: `pwd`, `ls`, `cp`, `mv`, `rm`, `mkdir`, `cat`, `head`, `tail`, `wc`, `sort`, `uniq` and related utilities.
- GNU grep manual: regular expressions and `grep` behaviour.
- GNU awk / gawk manual: AWK as a pattern-action language for records and fields.
- GNU gzip manual: gzip compression, decompression and stdout streaming patterns.
- Microsoft WSL documentation: Windows Subsystem for Linux as a Linux environment on Windows.
- Apple Terminal User Guide: Terminal as an app for working with shell scripts and command-line sessions on macOS.
- Britannica: graphical user interface definition.
- NCBI FASTA documentation: FASTA definition line and sequence format.
- NCBI SRA documentation: SRA as a public high-throughput sequencing data archive.
- ENA documentation and ENA Browser: public sequence archive concepts and accession lookup.
- HTS specifications: SAM, BAM, CRAM and VCF format specifications.
- Sequence Ontology GFF3 specification: GFF3 as a nine-column tab-delimited annotation format.
- UCSC / GA4GH BED documentation: BED genomic interval conventions.

Useful links:

- GNU Bash: https://www.gnu.org/software/bash/manual/bash.html
- GNU Coreutils: https://www.gnu.org/software/coreutils/manual/coreutils.html
- GNU grep: https://www.gnu.org/software/grep/manual/grep.html
- GNU awk: https://www.gnu.org/software/gawk/manual/gawk.html
- GNU gzip: https://www.gnu.org/software/gzip/manual/gzip.html
- Microsoft WSL: https://learn.microsoft.com/en-us/windows/wsl/about
- NCBI FASTA: https://www.ncbi.nlm.nih.gov/genbank/fastaformat
- NCBI SRA: https://www.ncbi.nlm.nih.gov/sra/docs/
- ENA Browser: https://www.ebi.ac.uk/ena/browser/
- HTS specifications: https://samtools.github.io/hts-specs/
- Sequence Ontology GFF3: https://github.com/The-Sequence-Ontology/Specifications/blob/master/gff3.md
- UCSC file formats: https://genome.ucsc.edu/FAQ/FAQformat.html
