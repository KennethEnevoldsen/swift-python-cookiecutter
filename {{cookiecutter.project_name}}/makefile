install:
	@echo "--- 🚀 Installing project ---"
	uv sync --extra dev --extra docs --extra tests
	# pip install -e ".[dev, docs, tests]" 

static-type-check:
	@echo "--- 🔍 Running static type check ---"
	uv pyright .

lint-check:
	@echo "--- 🧹 Check is project is linted ---"
	# Required for CI to work, otherwise it will just pass
	uv ruff format . --check						    # running ruff formatting
	uv ruff check **/*.py 						        # running ruff linting

lint:
	@echo "--- 🧹 Running linters ---"
	uv ruff format .  								# running ruff formatting (.ipynb, .py)
	uv ruff check **/*.py --fix  				    # running ruff linting (.py)

test:
	@echo "--- 🧪 Running tests ---"
	uv pytest tests/ -n auto --durations=5

pr:
	@echo "--- 🚀 Running PR checks ---"
	make lint
	make test
	@echo "If all tests pass, wee are ready to make a PR"

build-docs:
	@echo "--- 📚 Building docs ---"
	@echo "Builds the docs and puts them in the 'site' folder"
	uv mkdocs build

view-docs:
	@echo "--- 👀 Viewing docs ---"
	uv mkdocs serve
	
update-from-template:
	@echo "--- 🔄 Updating from template ---"
	@echo "This will update the project from the template, make sure to resolve any .rej files"
	uv cruft update --skip-apply-ask
	
