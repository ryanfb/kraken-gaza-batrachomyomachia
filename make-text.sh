#/bin/bash

cat batrachomyomachia_*.txt | perl -p -e 's/-\n//' | sed -e 's/ϛ/στ/g' > gaza-batrachomyomachia.md
