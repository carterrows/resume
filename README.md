# Resume (LaTeX)

This project builds a single-page LaTeX resume (`resume.tex`) with:
- Ivory background close to white (`#FFFFFC`)
- Header color `#06402B`
- Body text in off-black
- Contact icon support from `icons/` SVG assets
- Section order: Education, Skills, Projects, Experience

## Files

- `resume.tex`: Main template and styling
- `cv/education.tex`
- `cv/skills.tex`
- `cv/projects.tex`
- `cv/experience.tex`
- `icons/website.svg`, `icons/email.svg`, `icons/github.svg`, `icons/linkedin.svg`
- `scripts/convert-icons.sh` (Linux/macOS)
- `scripts/convert-icons.ps1` (Windows PowerShell)

## Requirements

1. A TeX distribution:
- Linux: TeX Live
- Windows: MiKTeX or TeX Live

2. Fonts (recommended):
- Source Serif 4
- Source Sans 3
- Inter

3. Optional (for using your exact SVG icon artwork): Inkscape

If these fonts are not installed, `resume.tex` falls back to TeX Gyre fonts so builds still succeed.

## Use Your SVG Icons (Optional but Recommended)

The template auto-uses `icons/website.pdf`, `icons/email.pdf`, `icons/github.pdf`, and `icons/linkedin.pdf` if they exist.

Generate them from your SVG files in `icons/`:

Linux/macOS:

```bash
./scripts/convert-icons.sh
```

Windows PowerShell:

```powershell
.\scripts\convert-icons.ps1
```

If you skip this step, the resume still compiles and uses Font Awesome fallback icons.

## Build (Linux)

```bash
xelatex resume.tex
xelatex resume.tex
```

Second pass resolves references and layout cleanly.

## Build (Windows PowerShell)

```powershell
xelatex .\resume.tex
xelatex .\resume.tex
```

## Export to PDF

The output PDF is generated as:

- `resume.pdf`

This is the final export-ready file.

## Optional: Build with LuaLaTeX

```bash
lualatex resume.tex
lualatex resume.tex
```

If LuaLaTeX reports `luaotfload` errors, use XeLaTeX (recommended default in this repo).

## Update Personal Links

Edit these lines in `resume.tex`:
- Website
- Email
- GitHub
- LinkedIn

They are grouped in the header block under `\begin{center}`.
