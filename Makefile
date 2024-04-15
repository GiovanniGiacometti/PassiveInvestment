compile:
	uv pip compile pyproject.toml -o requirements.txt --extra dev --cache-dir .uv_cache

install:
	uv pip install -r requirements.txt --cache-dir .uv_cache

lint:
	ruff format
	ruff check --fix