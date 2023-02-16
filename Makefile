all: radicals.pdf

radicals.pdf: radicals.inc radicals.tex
	xelatex -shell-escape radicals.tex

radicals.inc: radicals.txt
	gawk -f texify-radicals.awk radicals.txt > radicals.inc

clean:
	rm -f *.aux *.log *.dat *.out *.pdf *.inc
