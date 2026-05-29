# Contributing Guide

Thanks for contributing! This repository follows a lightweight, consistent workflow to keep the main branch stable and the codebase easy to maintain.

## Development setup

### 1) Create and activate a virtual environment
```bash
python -m venv .venv
# Windows:
.venv\Scripts\activate
# macOS/Linux:
source .venv/bin/activate
```

### 2) Install dependencies
```bash
pip install -r requirements-dev.txt
```

## Common commands
```bash
# If this repo includes a Makefile, you can use:

make lint
make test

# Otherwise:

ruff check .
pytest -q
```

## Workflow
Branching
Create a branch for your work (avoid committing directly to main).
Suggested naming:
feat/<short-description>
fix/<short-description>
chore/<short-description>
docs/<short-description>
exp/<short-description>
Commits

Use conventional prefixes to keep history readable:

feat: new feature
fix: bug fix
chore: tooling/config/CI/structure
docs: documentation changes
test: tests only
refactor: refactor without behavior change
Pull requests
Open a PR from your branch into main.
Ensure the PR describes:
what changed
why it changed
how to test (commands)
PRs must pass CI checks before merging (lint + tests).
Code quality requirements

Before opening a PR, run:

ruff check .
pytest -q
Notes on data and large files
Do NOT commit large datasets, model weights, or generated outputs unless explicitly intended.
Prefer documenting how to obtain data (links/scripts) and keep raw data out of Git history.

## Security
Never commit secrets (API keys, tokens, passwords).
If a secret is accidentally committed, rotate it immediately and remove it from Git history.