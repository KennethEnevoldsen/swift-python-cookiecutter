
# FAQ


## How do I test the code?

This package comes with a test suite implemented using [pytest].
In order to run the tests, you have to clone the repository and install the package.
This will also install the required tests dependencies
and test utilities defined in the extras_require section of the :code:`pyproject.toml`.

```bash
# clone the repository
git clone https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.project_name}}

# install package and test dependencies
pip install -e ".[tests]"

# run all tests
python -m pytest
```

which will run all the test in the `tests` folder.

Specific tests can be run using:

```bash
python -m pytest tests/desired_test.py
```

If you want to check code coverage you can run the following:

``bash
python -m pytest --cov=src
```

## Does this package run on X?

This package is intended to run on all major OS, this includes Windows (latest version),
MacOS (latest) and the latest version of Linux (Ubuntu). Similarly it also tested on
python 3.7, 3.8, and 3.9. Please note these are only the systems this package is being
actively tested on, if you run on a similar system (e.g. an earlier version of Linux)
this package will likely run there as well, if not please create an issue.

## How is the documentation generated?

This package use [sphinx] to generate documentation. It uses the [Furo] theme with
custom styling.

To make the documentation you can run:


```bash
# install sphinx, themes and extensions
pip install sphinx furo sphinx-copybutton sphinxext-opengraph

# generate html from documentations

make -C docs html
```



## How is the documentation generated?

This package uses `sphinx <https://www.sphinx-doc.org/en/master/index.html>`__ to generate
documentation. It uses the `Furo <https://github.com/pradyunsg/furo>`__ theme
with custom styling.

To make the documentation you can run:

.. code-block:: bash

   # install sphinx, themes and extensions
   pip install -e ".[docs]"

   # generate html from documentations

   make -C docs html

  




### Credits

This project was generated from the [Swift Python Cookiecutter] template.

[pypi]: https://pypi.org/
[swift python cookiecutter]: https://github.com/kennethreitz/swift-python-cookiecutter
[file an issue]: https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.project_name}}/issues
[pip]: https://pip.pypa.io/
[sphinx][https://www.sphinx-doc.org/en/master/index.html] 
[Furo][https://github.com/pradyunsg/furo]
