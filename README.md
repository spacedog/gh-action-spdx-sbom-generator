# GitHub Action: gh-action-spdx-sbom-generator

This actions generates sbom file from a package file based on language ecosystem.

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
            commands: '-h'
            version: '1.0.0'
```
