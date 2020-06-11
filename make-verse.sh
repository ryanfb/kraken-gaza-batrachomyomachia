#/bin/bash

cp gaza-batrachomyomachia.yaml gaza-batrachomyomachia-verse.md && \
  cat nfc/batrachomyomachia_verse*.txt | \
  perl -p -e 's/-\n//' | \
  sed -e 's/ϛ/στ/g' -e 's/ȣ/ου/' | \
  uconv -x any-nfc >> gaza-batrachomyomachia-verse.md
