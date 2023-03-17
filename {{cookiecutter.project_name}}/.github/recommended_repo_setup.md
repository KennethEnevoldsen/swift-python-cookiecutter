# Initial setup for the repository
## Github personal access token
For pre-commit actions to be able to commit changes to a PR, or for the Cruft update to be able to create a PR with updates from the upstream repo, you need a personal access token (PAT) with write permissions to the repo.

#### Creating the PAT
You can create a personal access token following [this guide](https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

#### Adding as a secret in the repo
By default, the actions expect the repository secret to be called `PAT`. Add the PAT as a secret by following [this guide](https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-a-repository).

## Github Repository Settings
These are all GitHub settings we recommend enabling, e.g. go to the repository's `Settings > General > Allow auto-merge`.

Feel free to delete or ignore this markdown file.

* General
  * Disallow squash and rebase commits
  * Allow auto-merge
  * Always suggest updating pull request branches 

* Branch protection rules
  * Require a pull request before merging
  * Require status checks to pass before merging
  * Require conversation resolution before merging