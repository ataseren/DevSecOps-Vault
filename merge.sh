#!/bin/bash

mkdir -p output

{
  cat README.md
  cat content/what-is-devsecops.md
  cat content/checklist.md

  echo "# Tools"
  cat content/tools/precommit.md
  cat content/tools/secrets-management.md
  cat content/tools/sast.md
  cat content/tools/dast.md
  cat content/tools/dependency-management.md
  cat content/tools/supply-chain.md
  cat content/tools/ci-cd.md
  cat content/tools/containers.md
  cat content/tools/kubernetes.md
  cat content/tools/cloud.md
  cat content/tools/iac.md
  cat content/tools/policy-as-code.md
  cat content/tools/chaos.md
  cat content/tools/monitoring.md

  echo "# Resources"
  cat content/resources/books.md
  cat content/resources/labs.md
  cat content/resources/vulnerable-apps.md
  cat content/resources/conferences.md
} > output/devsecops-vault.md
