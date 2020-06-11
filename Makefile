all: gaza-batrachomyomachia.md gaza-batrachomyomachia-lineated.md

gaza-batrachomyomachia.md: gaza-batrachomyomachia.yaml nfc/batrachomyomachia_prose_*.txt make-text.sh
	./make-text.sh

gaza-batrachomyomachia-lineated.md: gaza-batrachomyomachia.md lineate.rb line-endings.csv
	./lineate.rb > gaza-batrachomyomachia-lineated.md
