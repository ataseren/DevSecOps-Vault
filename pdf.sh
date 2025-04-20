#!/bin/bash

pandoc output/devsecops-vault.md -o output/devsecops-vault.pdf \
  --pdf-engine=lualatex \
  -V geometry=margin=1in \
  -V mainfont="DejaVu Sans" \
  -V fontsize=11pt \
  -V linestretch=1.2 \
  -V colorlinks=true \
  -H preamble.tex \
  --resource-path=.:./imgs \
