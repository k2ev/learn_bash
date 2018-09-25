all: README.md

README.md: guessinggame.sh 
	echo  "# learn_bash \n" > README.md
	echo  "**Date and time of makefile:** $$(date) \n"  >> README.md
	echo  "**Num of loc:** $$(wc -l < guessinggame.sh) \n" >> README.md
clean:
	rm README.md
