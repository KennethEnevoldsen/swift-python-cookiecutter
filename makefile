
add-uv:
	@echo "--- 🚀 Installing UV ---"
	curl -LsSf https://astral.sh/uv/install.sh | sh
	# for windows:
	# powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"

install:
	@echo "--- 🚀 Installing project depenencies ---"
	uv sync

create-new-project:
	@echo "---  📦 Creating project using template ---"
	@echo "Delete the folder 'swift-python' if it exists"
	rm -rf swift-python
	@echo "Creates the folder 'swift-python'"
	uv run cruft create . -y

run-all-tests-in-project:
	@echo "--- 🧪 Running all tests in project ---"
	
	make -C swift-python install
	make -C swift-python test
	make -C swift-python lint
	make -C swift-python static-type-check
	make -C swift-python build-docs

lint:
	@echo "--- 🚀 Linting project ---"
	uv run ruff format .

test:
	@echo "--- 🧪 Testing project ---"
	@echo "Test that the project can be instantiated and that all tests pass"
	make install
	make create-new-project
	make run-all-tests-in-project

pr: 
	@echo "--- 🔍 Check if code is ready for PR ---"
	make lint
	make test
	