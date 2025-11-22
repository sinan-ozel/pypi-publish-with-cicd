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

3. Create the folders `src/` and `src/<MODULE_NAME>`. `touch src/<MODULE_NAME>/__init__.py`

3. Add name and email under author in `pyproject.toml`.

3. Set up PyPI repo with the <MODULE_NAME>. Set up publisher as the github repo that you created in step 1. # TODO: Add a link to a good set of instructions.

4. Update the readme: Delete the top part, Introduction and Usage, and replace with your content.

```
--- WHEN UPDATING README.md: YOU CAN KEEP EVERYTHING BELOW THIS LINE ---
```

# 🛠️ Development

The only requirement is 🐳 Docker.
(The `.devcontainer` and `tasks.json` are prepared assuming a *nix system, but if you know the commands, this will work on Windows, too.)

1. Clone the repo.
2. Branch out.
3. Open in "devcontainer" on VS Code and start developing. Run `pytest` under `tests` to test.
4. Akternatively, if you are a fan of Test-Driven Development like me, you can run the tests without getting on a container. `.vscode/tasks.json` has the command to do so, but it's also listed here:
```
docker compose -f tests/docker-compose.yaml up --build --abort-on-container-exit --exit-code-from test
```
