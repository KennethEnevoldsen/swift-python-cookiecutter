
install:
	@echo "--- 🚀 Installing project ---"
	pip install -r requirements.txt

create-new-project:
	@echo "---  📦 Creating project using template ---"
	@echo "Creates the folder 'swift-python'"
	cruft create . -y

run-all-tests-in-project:
	@echo "--- 🧪 Running all tests in project ---"
	
	make -C swift-python test
	make -C swift-python lint
	make -C swift-python static-type-check
	make -C swift-python doc-build

lint:
	@echo "--- 🚀 Linting project ---"
	ruff format .

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
	