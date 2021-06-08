# GitHub Action: gh-action-spdx-sbom-generator

This actions generates sbom file from a package file based on language ecosystem.

## Workflow setup

```yaml
# workflow name
name: Generate sbom file

# on events
on:
  release:
    types:
        - created

# workflow tasks
jobs:
  generate:
    name: Generate sbom file
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the repository
        uses: actions/checkout@v2
      - name: Generate sbom
        uses: niravpatel27/gh-action-spdx-sbom-generator@v1
        with:
            version: '0.0.3'
```
