#/bin/bash

rm -f gaza-batrachomyomachia-verse.md
line_number=1
cat nfc/batrachomyomachia_verse_*.txt | while read line; do
  echo "${line_number}. ${line}" |
  sed -e 's/ϛ/στ/g' -e 's/ȣ/ου/' | \
  uconv -x any-nfc >> gaza-batrachomyomachia-verse.md
  line_number=$((line_number+1))
done
