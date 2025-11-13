# iPhoneProductPage

A clean, Apple-inspired static frontend showcasing an iPhone product page and related site pages. This project is a small portfolio/demo site built with plain HTML, CSS and JavaScript to practice layout, responsive design, and basic interaction patterns.

## Table of contents

- About
- Features
- Files / Project structure
- Quick start (run locally)
- Development notes
- Troubleshooting
- Project contract & edge cases
- Contributing
- Contact

## About

This repository contains a simple static website that mimics an iPhone product page and supporting pages (Home, Product, Login, Register, About, Contact). It's intended as a frontend portfolio piece or a starting template for small static sites.

## Features

- Static, dependency-free HTML/CSS/JS pages
- Apple-inspired, minimal product page layout
- Ready-to-open pages or start a tiny local server via `start-server.ps1`

## Files / Project structure

Top-level files in this project:

- `home.html` — Landing / home page
- `product.html` — iPhone product showcase page
- `login.html` — Login form (demo)
- `register.html` — Registration form (demo)
- `about.html` — About page
- `contact.html` — Contact page
- `start-server.ps1`— Convenience PowerShell script to start a tiny HTTP server and open the site
- `README.md` — This file


## Quick start — run locally

Requirements:

- Windows PowerShell (this repo includes a helper PowerShell script)
- Python 3 installed and available as `py` or `python` (for the tiny HTTP server). If you don't have Python, you can open the `.html` files directly in your browser, or use an editor extension such as VS Code Live Server.

Start the included server (recommended):

1. Open PowerShell in the project folder (where `start-server.ps1` lives).
2. Run (recommended to allow script execution for this run only):

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\start-server.ps1 -Port 8000
```

This script will:

- start a simple Python http.server on the chosen port (default 8000)
- open `http://localhost:8000/home.html` in your default browser

Alternative (if `py` isn't available):

```powershell
# from the project folder
python -m http.server 8000
# then open http://localhost:8000/home.html in your browser
```

Or simply double-click `home.html` to open the page in your browser (some features may behave differently when loaded via file:// vs http://).

## Development notes

- This is a static site — there is no build step.
- Edit the HTML/CSS/JS files directly. If you add a build tool (npm, bundlers), update this README and include a `package.json`.

Suggested local workflow:

1. Start the small server (see Quick start).
2. Edit files in your editor and refresh the browser.

## Troubleshooting

- If the PowerShell script fails due to ExecutionPolicy, run it with the `-ExecutionPolicy Bypass` flag as shown above.
- If `py` is not recognized, try `python -m http.server 8000` instead, or install Python from https://python.org.
- If the browser doesn't open automatically, manually navigate to `http://localhost:8000/home.html` after starting the server.

## Project contract (mini)

- Inputs: static HTML, CSS, JS files in this folder.
- Output: a static website served via file:// or a tiny HTTP server.
- Error modes: missing assets (404), server port in use, ExecutionPolicy blocking script, missing Python runtime.

Edge cases to consider:

- Empty or missing referenced assets (images/CSS/JS) — pages will still load but with missing visuals or broken interactions.
- Running via `file://` may change behavior of fetch/XHR; prefer `http://` server for accurate testing.
- Older browsers may not support modern CSS/JS features used in the pages.

## Contributing

Contributions are welcome. Suggested process:

1. Fork the repository
2. Make changes on a feature branch
3. Open a pull request describing the change

If you'd like, I can help add a small contributions guide or a basic linting/formatting setup.


## Contact

If you have questions or want help improving this project, open an issue or contact the repository owner.
