all: gaza-batrachomyomachia.md gaza-batrachomyomachia-verse.md gaza-batrachomyomachia-lineated.md gaza-batrachomyomachia-aligned.md gaza-batrachomyomachia-aligned.pdf

gaza-batrachomyomachia.md: nfc/batrachomyomachia_prose_*.txt make-text.sh
	./make-text.sh

gaza-batrachomyomachia-verse.md: nfc/batrachomyomachia_verse_*.txt make-verse.sh
	./make-verse.sh

gaza-batrachomyomachia-lineated.md: gaza-batrachomyomachia.md lineate.rb line-endings.csv
	./lineate.rb

gaza-batrachomyomachia-aligned.csv: gaza-batrachomyomachia.md gaza-batrachomyomachia-verse.md lineate.rb
	./lineate.rb

gaza-batrachomyomachia-aligned.md: gaza-batrachomyomachia-aligned.csv
	csv2md gaza-batrachomyomachia-aligned.csv > gaza-batrachomyomachia-aligned.md

gaza-batrachomyomachia-aligned.pdf: style.css gaza-batrachomyomachia-aligned.md
	mdpdf gaza-batrachomyomachia-aligned.md --border-left=0mm --border-right=0mm --style=style.css
