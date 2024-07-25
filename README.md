# template.py

[![Documentation Status](https://readthedocs.org/projects/templatepy/badge/?version=latest)](https://templatepy.readthedocs.io/en/latest/?badge=latest)

Personal Python package template

# For Developers

## Install Packages
### Update pip, setuptools, wheel first
```
python3 -m pip install -U pip setuptools wheel
```

### Install [uv](https://github.com/astral-sh/uv)
```
python3 -m pip install uv
```

### Install packages
```
uv --preview pip install -e .
```

### Install dev packages
```
uv --preview pip install -e ".[dev]"
```

### Install doc packages
```
uv --preview pip install -e ".[doc]"
```

### Generate requirements.txt and requirements-dev.txt files
* This files are served as lock file.

```
uv --preview pip compile pyproject.toml -o requirements.txt
uv --preview pip compile pyproject.toml --extra dev -o requirements-dev.txt
uv --preview pip compile pyproject.toml --extra doc -o requirements-doc.txt
```

## Testing
### Run tests
```
pytest
```

## Development
### Linting
```
ruff check --fix .
```

### Formatting
```
ruff format .
```

### Run pre-commit
```
pre-commit run --all-files
```

### Build package
```
python3 setup.py sdist bdist_wheel
```

### Clean package
```
python3 setup.py clean --all
```

### Serve Document
```
mkdocs serve
```

### Build Document
```
mkdocs build
```

## Deployment
### Build Docker Image
```
docker build -t my-production-app .
```

### Run Docker Container
```
docker run --gpus all -p 8000:8000 my-production-app
```

# References
* [Packaging Python Projects](https://packaging.python.org/tutorials/packaging-projects/)
* [Python Packaging User Guide](https://packaging.python.org/)


# License

Copyright 2024 Jongsu Liam Kim

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
