install:
	@echo "--- 🚀 Installing project ---"
	pip install -e ".[dev, docs, tests]" 

static-type-check:
	@echo "--- 🔍 Running static type check ---"
	pyright .

lint-check:
	@echo "--- 🧹 Check is project is linted ---"
	# Required for CI to work, otherwise it will just pass
	ruff format . --check						    # running ruff formatting
	ruff check **/*.py 						        # running ruff linting

lint:
	@echo "--- 🧹 Running linters ---"
	ruff format .  								# running ruff formatting (.ipynb, .py)
	ruff check **/*.py --fix  				    # running ruff linting (.py)

test:
	@echo "--- 🧪 Running tests ---"
	pytest tests/ -n auto --durations=5

pr:
	@echo "--- 🚀 Running PR checks ---"
	make lint
	make static-type-check
	make test
	@echo "Ready to make a PR"

build-docs:
	@echo "--- 📚 Building docs ---"
	@echo "Builds the docs and puts them in the 'site' folder"
	mkdocs build

view-docs:
	@echo "--- 👀 Viewing docs ---"
	mkdocs serve
	
update-from-template:
	@echo "--- 🔄 Updating from template ---"
	@echo "This will update the project from the template, make sure to resolve any .rej files"
	uv cruft update --skip-apply-ask
	
