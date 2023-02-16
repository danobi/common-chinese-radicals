all: 100-most-common-radicals.pdf

100-most-common-radicals.pdf: 100-most-common-radicals.inc
	xelatex -shell-escape 100-most-common-radicals.tex

100-most-common-radicals.inc: 100-most-common-radicals.txt
	gawk -f texify-radicals.awk 100-most-common-radicals.txt > 100-most-common-radicals.inc
