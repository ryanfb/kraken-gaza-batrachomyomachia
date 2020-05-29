#/bin/bash

cat batrachomyomachia_*.txt | perl -p -e 's/-\n//' > gaza-batrachomyomachia.md
