.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Project Description" >> README.md
	@echo "This project implements a guessing game where users guess the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "## Build Date and Time" >> README.md
	@date >> README.md
	@echo "" >> README.md
	@echo "## Lines of Code in guessinggame.sh" >> README.md
	@echo "The script contains $$(wc -l < guessinggame.sh) lines of code." >> README.md

clean:
	rm -f README.md
