all: create update

create:
	touch README.md
	printf "# The Guessing Game\n\n" > README.md

update:
	printf "## Date and time last make run: $$(date)\n\n" >> README.md
	printf "## Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)\n\n" >> README.md

clean:
	rm README.md