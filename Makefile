.PHONY: help setup lint test run

help:
	@echo "make setup  - create venv and install dev deps"
	@echo "make lint   - run ruff"
	@echo "make test   - run pytest"
	@echo "make run    - run project entry (placeholder)"

setup:
	python -m venv .venv
	@echo "Activate venv:"
	@echo "  Windows: .venv\\Scripts\\activate"
	@echo "  macOS/Linux: source .venv/bin/activate"
	@echo "Then run: pip install -r requirements-dev.txt"

lint:
	ruff check .

test:
	pytest -q

run:
	@echo "Placeholder. Replace with your project's run command, e.g.:"
	@echo "python -m src.main"