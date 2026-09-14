.PHONY: setup check test docs

setup:
	uv venv .venv --python 3.11
	uv pip install --python .venv astropy pyarrow pandas mypy pytest ruff

check:
	.venv/bin/ruff check .
	.venv/bin/mypy src/

test:
	.venv/bin/pytest tests/

docs:
	quarto render
