---
name: extract-slides
description: Extract text from PowerPoint slides into individual Markdown files
---

# Extract Slide Text from PowerPoint

## Description

Extracts all text content from each slide of the PowerPoint file (`content/Kubernetes Technical Primer.pptx`) and writes individual Markdown files to `content/text-extract/`. Each file is named `slide-<N>.md` (1-indexed) and contains a `# Slide N` heading followed by the text content of that slide.

The Python extraction script (`extract-slides.py`) is co-located with this skill in `.github/skills/extract-slides/`.

## When to Use

- When slides are added, removed, or edited in the PPTX source file
- When the text extract files need to be regenerated to stay in sync with the presentation
- After any changes to the PowerPoint content

## Steps

1. Create a Python virtual environment if one does not already exist: `python -m venv .venv`
2. Activate it: `source .venv/bin/activate`
3. Install the required dependency: `pip install python-pptx`
4. Run the extraction script: `python .github/skills/extract-slides/extract-slides.py`
5. The script will process all slides and write/overwrite the Markdown files in `content/text-extract/`
6. Verify the output by checking the generated files match the slide count
