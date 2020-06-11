all: gaza-batrachomyomachia.md gaza-batrachomyomachia-verse.md gaza-batrachomyomachia-lineated.md gaza-batrachomyomachia-aligned.md

gaza-batrachomyomachia.md: gaza-batrachomyomachia.yaml nfc/batrachomyomachia_prose_*.txt make-text.sh
	./make-text.sh

gaza-batrachomyomachia-verse.md: gaza-batrachomyomachia.yaml nfc/batrachomyomachia_verse_*.txt make-verse.sh
	./make-verse.sh

gaza-batrachomyomachia-lineated.md: gaza-batrachomyomachia.md lineate.rb line-endings.csv
	./lineate.rb

gaza-batrachomyomachia-aligned.csv: gaza-batrachomyomachia.md gaza-batrachomyomachia-verse.md lineate.rb
	./lineate.rb

gaza-batrachomyomachia-aligned.md: gaza-batrachomyomachia-aligned.csv gaza-batrachomyomachia.yaml
	cp gaza-batrachomyomachia.yaml gaza-batrachomyomachia-aligned.md
	csv2md gaza-batrachomyomachia-aligned.csv >> gaza-batrachomyomachia-aligned.md
