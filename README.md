# Introduction

This repo is a template for writing PyPI modules.
It comes with a complete CI/CD pipeline with
automated unit testing,
linting,
and semver-compatible versioning.

It also includes a .devcontainer to facilitate collaboration without needing any dependencies other than VS Code and Docker.

It also has `.vscode/tasks.json` prepared so that developers can run tests (even without installing any dependencies.)

# Usage

1. Base a repo on this template.

2. Find all instances of <MODULE_NAME> and <ORGANIZATION> in muiiltiple files and replace with your module. (Take care with `_` and `-`, use `-` in docker-compose.yaml, `_` in `pyproject.toml`)

3. Create the folders `src/` and `src/<MODULE_NAME>`.

3. Add name and email under author in `pyproject.toml`.

3. Set up PyPI repo with the <MODULE_NAME>. Set up publisher as the github repo that you created in step 1. # TODO: Add a link to a good set of instructions.

4. Update the readme.

```
--- WHEN UPDATING README.md: YOU CAN KEEP EVERYTHING BELOW THIS LINE ---
```

# 🛠️ Development

The only requirement is 🐳 Docker.

1. Clone the repo.
2. Branch out.
3. Either open in "devcontainer" on VS Code, or run the following command for unit tests:
```
docker compose -f tests/docker-compose.yaml up --build --abort-on-container-exit --exit-code-from test
```

4. When satisfied, push and open a PR. The pipeline will publish automatically when your PR is merged.