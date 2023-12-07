# swift-python-cookiecutter
A Python package template intended for creating a package with simple yet effective workflows to start package development.

## Getting started

Install cruft
```
pip install cruft
```

Use template:
```bash
cruft create https://github.com/KennethEnevoldsen/swift-python-cookiecutter
```
This will create a folder named `{package_name}` containing all the template files.

## Updating the template
If you want to update the template, you can do so by running the following command:
```bash
cruft update
# or
make update-from-template
```

## Overview of Makefile commands
The template comes with a Makefile containing a few commands to help you get started. You are of course free to change these as you see fit.

- `make install` - Install the package in editable mode with all dependencies.
- `make lint` - Check that the `pyproject.toml` file is valid and then run [ruff] for formatting and linting.
- `make test` - Run [pytest] with coverage.
- `make static-type-checks` - Run [pyright] to check for type errors.
- `make pr` - a utility command to run `make lint`, `make test` and `make static-type-checks` in one go. This command is intended to be run before a PR is created.
- `make build-docs` and `docs-view` - Build the documentation and open it in your browser, respectively.
- `make update-from-template` - Update the template files using `cruft`.

## Using Git and GitHub
To initialize as a git repo simply use the git init command.
```bash
cd {package_name}
git init -b main    
```

If you want to add a remote like GitHub you can do so using the following command:
```
git remote add origin {repository url}
```

Where `repository url` is a link to an empty repository.

### CI and GitHub Actions

The template comes with a few GitHub actions. These are:

* `lint.yml` - Runs `make lint` on all pushes to the repository.
* `documentation.yml` - Runs `make build-docs` on all pushes to the repository.
* `release.yml` - Run semantic release on all pushes to the repository. If the commit contains either "fix:" for "feat:" it will bump the version id.
This will publish the package to pypi as well as create a release on GitHub.

**Note**:  `release.yml` requires a github secret and a that you have set up trusted publishing on pypi. See more in the documentation within the file.

If do not wish to pypi, you can just delete the `release.yml` file.


## FAQ:

- **Why don't you use pre-commit hooks?**
Pre-commit hooks can be great, but I find that I often want to commit something that does not pass the pre-commit hooks.
It also leads you to have two sets of dependencies, one for the pre-commit hooks and one for the actual package, which might be different and lead to problems and conflicts such as conflicting formatters.

- **Why do you presume the MIT license?**
It is always a good idea to consider your license before you start writing code. Luckily it is very easy to delete.

- **What is your recommend setup for the repository?**
For the repository settings I usually recommend the following:
 * Branches
   * Add a branch protection rule for "main"
     * Require a pull request before merging
     * Require status checks to pass before merging
     * Require conversation resolution before merging

- **Why don't you use poetry?**
Poetry is a great tool, but I find that it is not as widely used as pip and setuptools.
You are more than welcome to use poetry instead of pip and setuptools, but I have chosen to use pip and setuptools for this template as due to
the wider adoption.

- **Why don't you use black?**
I really like Black it is a wonderful too. However ruff implements almost the same functionality and more at the same speed or faster.
This also means that you do not need to install an extra dependency.


## Authors
- Kenneth Enevoldsen
- Martin Bernstorff


[ruff]: https://docs.astral.sh/ruff/
[pytest]: https://docs.pytest.org/en/7.4.x/
[pyright]: https://github.com/microsoft/pyright
