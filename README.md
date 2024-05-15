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
