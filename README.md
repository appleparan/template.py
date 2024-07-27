# template.py

[![Documentation Status](https://readthedocs.org/projects/templatepy/badge/?version=latest)](https://templatepy.readthedocs.io/en/latest/?badge=latest)

Personal Python package template

# For Developers

## Decide to use virtual project
Virtual projects are projects which are themselves not installable Python packages, but that will sync their dependencies. They are declared like a normal python package in a pyproject.toml, but they do not create a package. [ref. rye docs](https://rye.astral.sh/guide/virtual/)

* Set `tool.rye.virtual` key to `true` in `pyproject.toml`. [ref: rye docs](https://rye.astral.sh/guide/pyproject/#toolryevirtual)


## Init package
### Setup Python version
```
rye pin 3.12
```

### [First Sync](https://rye.astral.sh/guide/basics/#first-sync)
```
rye sync
```

## Install Packages
### Install packages
```
rye sync --no-dev
```

### Install dev packages
```
rye sync
```

## Testing
### Run tests
```
rye run pytest
```

## Development
### Linting
```
rye lint --fix
```

### Formatting
```
rye fmt
```

### Run pre-commit
```
rye run pre-commit run --all-files
```

### Build package
```
rye build
```

## Documentation

### Serve Document
```
rye run mkdocs serve
```

### Build Document
```
rye run mkdocs build
```

## Container
### Build Docker Image (from source)

[ref. rye docs](https://rye.astral.sh/guide/docker/#container-from-source)

```
docker build -t TAGNAME .
```

### Build Docker Image (from package)

[ref. rye docs](https://rye.astral.sh/guide/docker/#container-from-a-python-package)

```
rye build --wheel --clean
docker build -t TAGNAME .
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
