# Copilot Instructions — kube-primer

## Project Overview

A static slide viewer for a Kubernetes technical primer. PowerPoint slides are exported as PNG images and served via a custom single-file HTML/CSS/JS viewer. Hosted on GitHub Pages at `code.benco.io/kube-primer`.

There is **no framework, bundler, or package manager** — the entire viewer is a single vanilla HTML file (`src/index.html`) with inline `<style>` and `<script>` tags. Do not introduce build tooling or external dependencies.

## What is the content?

The presentation is **"Kubernetes Technical Primer"** by Ben Coleman (v2, Feb 2026) — an 85-slide technical deck covering Kubernetes from introductory concepts through to advanced topics. It is structured into these major sections:

1. **Introduction To Kubernetes** (slides 4–10) — Why Kubernetes, core concepts & terms, simplified and internal architecture, extensibility, and when (not) to use it.
2. **Core Components** (slides 11–24) — Pods, Deployments & ReplicaSets, Services, DNS/service discovery, Volumes, PersistentVolumes, StatefulSets, DaemonSets, Jobs/CronJobs, Namespaces, and RBAC.
3. **Using Kubernetes** (slides 25–37) — kubectl CLI, common commands, the declarative model, idempotent updates & desired state, Labels & Selectors, env vars, Secrets, ConfigMaps, resource management, probes, and container arguments.
4. **Beyond The Basics** (slides 38–61) — Kubernetes ecosystem (CNCF landscape), the Kubernetes API, container runtimes & tooling, Ingress, Gateway API, NetworkPolicies, ExternalDNS, cert-manager, service mesh, debugging/troubleshooting, `kubectl describe`/logs/debug, init containers, sidecars, node selectors, affinity & taints, and pod security.
5. **Scaling** (slides 62–66) — Manual scaling, HPA, Cluster Autoscaler, and KEDA.
6. **Extending Kubernetes** (slides 67–69) — CRDs and Operators.
7. **DevOps & Observability** (slides 70–76) — Container lifecycle, GitOps, observability stack, Helm, Helm basics, and Kustomize.
8. **Azure Kubernetes Service** (slides 77–83) — AKS overview, AKS networking, Microsoft Entra Workload ID, Entra ID for RBAC, Azure Monitor Container Insights, and Cluster Auto Scaler on Azure.

## Repository Layout

- `content/` — Source PowerPoint file (`*.pptx`); edit slides here, then export as PNG
- `content/text-extract/` — Machine-extracted plain-text from each slide as individual Markdown files (`slide-1.md` … `slide-85.md`). Generated from the PPTX using `python-pptx`. These files exist so that AI agents and search tools can reference slide content without needing to parse the PowerPoint or OCR the PNG images. Each file has a `# Slide N` heading followed by the text content of that slide.
- `slides/` — Exported slide PNGs (`Slide1.PNG` … `Slide85.PNG`); naming is `Slide<N>.PNG` (uppercase extension, 1-indexed, no zero-padding)
- `src/index.html` — The entire slide viewer app (HTML + CSS + JS, ~810 lines). This is the only source file that matters for code changes
- `src/favicon.svg` — Site favicon
- `build.sh` — Bash build script that assembles `dist/` from `slides/` and `src/`
- `dist/` — Build output (gitignored), deployed to GitHub Pages
- `_archive/` — Old versions of the presentation (do not modify)
- `_logos/` — Logo assets

## Build & Deploy

**Build locally:** `./build.sh` — copies slides + HTML into `dist/`, generates thumbnail images (requires ImageMagick), and writes `slides.json` manifest with slide count.

- Override output dir: `OUT_DIR=output ./build.sh`
- Override page title: `TITLE="My Title" ./build.sh`
- Thumbnails are optional; the viewer falls back to full PNGs if `thumbs/` is missing (useful for local dev without ImageMagick)

**CI/CD:** `.github/workflows/deploy-site.yaml` deploys to GitHub Pages on push to `main` — runs `build.sh` with ImageMagick installed, then uploads `dist/` as a Pages artifact.

**Local preview without building:** Open `src/index.html` directly; the viewer will probe for slides sequentially (slower than manifest, but works). Slides must be in the same directory or adjust paths.

## Viewer Architecture (`src/index.html`)

Single IIFE at the bottom of the file. Key design:

- **Slide discovery:** Fetches `slides.json` manifest first (build-time generated); falls back to sequential image probing for local dev
- **Navigation:** Keyboard (arrows, space, pgup/pgdn, home/end), mouse click/wheel, touch swipe, and direct slide-number input
- **Thumbnails:** Sidebar loads from `thumbs/` directory; falls back to full slide images via `img.onerror`
- **CSS variables** in `:root` control theming — use these for any color/sizing changes
- **No external dependencies** — no libraries, no CDN links, everything is self-contained

## Conventions

- The `<title>` tag in source is always `Slides` — `build.sh` replaces it with the configured title via `sed`
- Slide filenames must match pattern `Slide<N>.PNG` exactly (uppercase `.PNG`, sequential from 1)
- All CSS is in a single `<style>` block; all JS is in a single `<script>` block — keep it that way
- The viewer uses `"use strict"` inside the IIFE
- Code style: 2-space indent, no semicolons omitted, Prettier-compatible formatting

## Agent Instructions

If you are an AI agent contributing code changes, please adhere to the following guidelines:

- Any Python you run will require a virtual environment; create one with `python -m venv .venv` and activate it with `source .venv/bin/activate`
- **Slide content reference:** Use the Markdown files in `content/text-extract/` to understand slide content. Each file (`slide-<N>.md`) contains the text extracted from the corresponding slide. Prefer these over OCR or image analysis — they are accurate, extracted directly from the PowerPoint source via `python-pptx`.
- If slides are added, removed, or edited in the PPTX, regenerate the text extracts by running the extraction script from a virtual environment with `python-pptx` installed. Process all slides, not just changed ones, to keep numbering consistent.
