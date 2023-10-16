####----Basic configurations----####
.PHONY: pre-commit
install_pre_commit: ## configure and install pre commit tool
	@poetry run pre-commit install

uninstall_pre_commit: ## configure and install pre commit tool
	@poetry run pre-commit uninstall

.PHONY: init_project
init_project: 
	@echo "📝 Creating virtual environment using pyenv and poetry"
	@poetry install --only dev --sync
	@echo "📝 Update dependencies"
	@poetry update
	@echo "👓 Show installed dependencies"
	@poetry show
	@echo "🚨 Installing pre-commit and pre-push hooks"
	@poetry run pre-commit install
	@echo "🚦 pre-commit update"
	@poetry run pre-commit autoupdate
	@echo "Ready to start🚀 🚀 🚀 🚀 🚀 🚀 "

.PHONY: check_project
check_project: ## Run code quality tools.
	@echo "🚀 Checking Poetry lock file consistency with 'pyproject.toml': Running poetry lock --check"
	@poetry check --lock
	@echo "🚀 Linting code: Running pre-commit"
	@poetry run pre-commit run -a
# echo "🚀 Checking for obsolete dependencies: Running deptry"
# poetry run deptry .

.PHONE: poetry_plugins
poetry_plugins_install: ## Install and configure the poetry plugins
	@echo "Install poetry-plugin-sort"
	@poetry self add poetry-plugin-sort
	@poetry self add poetry-plugin-up

poetry_update: ## Update the poetry environment
	@echo "🚀 Updating virtual environment using poetry"
	@poetry self update

poetry_plugins: ## Launch the poetry plugins
	@echo "Launching poetry-plugin-sort"
	@poetry sort

####----Docs----####
.PHONY: docs
docs_launch: ## Launch mkdocs documentation locally
	@poetry run mkdocs serve

docs_launch_normal: ## Launch mkdocs documentation locally
	mkdocs serve -v --config-file mkdocs.yml

docs_build: ## Build mkdocs for local test
	@poetry run mkdocs build --clean --quiet --config-file mkdocs.yml

docs_launch_local: ## Launch mkdocs documentation locally with the local building artefacts
	@poetry run mkdocs build --clean --quiet --config-file mkdocs.yml
	@poetry run mkdocs serve -v --dev-addr=0.0.0.0:8000

docs_deploy: ## Deploy mkdocs documentation to github pages
	@poetry run mkdocs build --clean --quiet --config-file mkdocs.insiders.yml
	@poetry run mkdocs gh-deploy --force

docs_public: ## Build mkdocs for official online release
	@poetry run mkdocs build -c -v --site-dir public --quiet --config-file mkdocs.insiders.yml

.DEFAULT_GOAL := help
SHELL := /bin/bash