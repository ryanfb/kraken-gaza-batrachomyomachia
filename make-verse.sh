#/bin/bash

cat nfc/batrachomyomachia_verse*.txt | \
  sed -e 's/ϛ/στ/g' -e 's/ȣ/ου/' | \
  uconv -x any-nfc > gaza-batrachomyomachia-verse.md
