#/bin/bash

cp gaza-batrachomyomachia.yaml gaza-batrachomyomachia-verse.md && \
  cat nfc/batrachomyomachia_verse*.txt | \
  sed -e 's/ϛ/στ/g' -e 's/ȣ/ου/' | \
  uconv -x any-nfc >> gaza-batrachomyomachia-verse.md
