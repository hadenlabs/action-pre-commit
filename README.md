<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `README.yaml`
  ** 2) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

# action-pre-commit

[![GitHub release](https://img.shields.io/github/release/hadenlabs/action-pre-commit?style=flat-square)](https://github.com/hadenlabs/action-pre-commit/releases/latest) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/action-pre-commit/lint-code)](https://github.com/hadenlabs/action-pre-commit/actions?workflow=lint-code) [![CI](https://img.shields.io/github/workflow/status/hadenlabs/action-pre-commit/ci)](https://github.com/hadenlabs/action-pre-commit/actions?workflow=ci) [![Test](https://img.shields.io/github/workflow/status/hadenlabs/action-pre-commit/test)](https://github.com/hadenlabs/action-pre-commit/actions?workflow=test) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org) [![KeepAChangelog](https://img.shields.io/badge/Keep%20A%20Changelog-1.0.0-%23E05735)](https://keepachangelog.com)

a GitHub action to run [pre-commit](https://pre-commit.com)

### using this action

To use this action, make a file `.github/workflows/pre-commit.yml`. Here's a template to get started:

```yaml
name: pre-commit

on:
  pull_request:
  push:
    branches: [main]

jobs:
  pre-commit:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - id: file_changes
        uses: trilom/file-changes-action@v1.2.4
        with:
          output: ' '
      - uses: hadenlabs/action-pre-commit@v0.1.2
        with:
          args: run --files ${{ steps.file_changes.outputs.files}}
```

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/action-pre-commit/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/hadenlabs/action-pre-commit/issues) to report any bugs or file feature requests.

### Development

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork
5.  Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!

## Module Versioning

This Module follows the principles of [Semantic Versioning (SemVer)](https://semver.org/).

Using the given version number of `MAJOR.MINOR.PATCH`, we apply the following constructs:

1. Use the `MAJOR` version for incompatible changes.
1. Use the `MINOR` version when adding functionality in a backwards compatible manner.
1. Use the `PATCH` version when introducing backwards compatible bug fixes.

### Backwards compatibility in `0.0.z` and `0.y.z` version

- In the context of initial development, backwards compatibility in versions `0.0.z` is **not guaranteed** when `z` is increased. (Initial development)
- In the context of pre-release, backwards compatibility in versions `0.y.z` is **not guaranteed** when `y` is increased. (Pre-release)

## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).

## Don't forget to 🌟 Star 🌟 the repo if you like action-pre-commit

[Your feedback is appreciated](https://github.com/hadenlabs/action-pre-commit/issues)
