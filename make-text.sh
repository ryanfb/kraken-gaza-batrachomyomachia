#/bin/bash

cat nfc/batrachomyomachia_prose_*.txt | \
  perl -p -e 's/-\n//' | \
  sed -e 's/ϛ/στ/g' -e 's/ȣ/ου/' | \
  uconv -x any-nfc > gaza-batrachomyomachia.md
