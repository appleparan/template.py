# template.py
Personal Python package template

# For developers
## Update pip, setuptools, wheel first
```
python3 -m pip install -U pip setuptools wheel
```

## Install [uv](https://github.com/astral-sh/uv)
```
python3 -m pip install uv
```

## Install packages
```
uv --preview pip install -e .
```

## Install dev packages
```
uv --preview pip install -e ".[dev]"
```

## Generate requirements.txt and requirements-dev.txt files
* This files are served as lock file.

```
uv --preview pip compile pyproject.toml -o requirements.txt
uv --preview pip compile pyproject.toml --extra dev -o requirements-dev.txt
```
