#!/bin/sh

function get_pdf_reader () {
if which okular &> /dev/null; then
    PDFVIEWER=okular
elif which xpdf &> /dev/null; then
    PDFVIEWER=xpdf
else 
    echo "Couldnt find pdf viewer (searched for xpdf/okular)"
    exit 2;
fi
return 0;
}

while getopts 'xop' OPTION
do
	case $OPTION in
		p) get_pdf_reader;;
		x) PDFVIEWER=xpdf;;
		o) PDFVIEWER=okular;;
		?) printf "Usage: %s: [-pox] args\n" $(basename $0) >&2
		exit 2
		;;
	esac
done

export TEXINPUTS=$TEXINPUTS:.. 
pdflatex ../slides.tex
# run pdflatex command twice if you're having issues 
# getting TOC or top progress bar to show up in pdf
pdflatex ../slides.tex

if [ -n "$PDFVIEWER" ];
then
	echo "Running: $PDFVIEWER slides.pdf"
	exec $PDFVIEWER slides.pdf &
	disown
fi
