## Recommened setup for the repository

## Setup publishing:
Go to the release.yml to see how to setup the publishing to PyPI and git packages.

## Setup documentation:
Go to the documentation.yml to see how to setup the documentation.

### Github personal access token

### Github Repository Settings
These are all GitHub settings we recommend enabling, e.g. go to the repository's `Settings > General > Allow auto-merge`.

* General
  * Pull Requests
    * Allow auto-merge
    * Automatically delete head branches

* Branches
  * Add a branch protection rule for "main"
    * Require a pull request before merging
    * Require status checks to pass before merging
      * Require branches to be up to date before merging
      * Status checks that are required:
        * static_type_checks (type checking)
        * lint (formatting)
        * test (pytest)
    * Require conversation resolution before merging

