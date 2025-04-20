#!/bin/bash

mkdir -p output

{
  cat content/first-page.md; echo
  cat content/what-is-devsecops.md; echo
  cat content/checklist.md; echo

  echo "# Tools"; echo
  cat content/tools/precommit.md; echo
  cat content/tools/secrets-management.md; echo
  cat content/tools/sast.md; echo
  cat content/tools/dast.md; echo
  cat content/tools/dependency-management.md; echo
  cat content/tools/supply-chain.md; echo
  cat content/tools/ci-cd.md; echo
  cat content/tools/containers.md; echo
  cat content/tools/kubernetes.md; echo
  cat content/tools/cloud.md; echo
  cat content/tools/iac.md; echo
  cat content/tools/policy-as-code.md; echo
  cat content/tools/chaos.md; echo
  cat content/tools/monitoring.md; echo

  echo "# Resources"; echo
  cat content/resources/books.md; echo
  cat content/resources/labs.md; echo
  cat content/resources/vulnerable-apps.md; echo
  cat content/resources/conferences.md; echo
} > output/devsecops-vault.md
