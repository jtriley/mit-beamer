export TEXINPUTS:=${TEXINPUTS}:slides:imgs:code:.
out/main.pdf: main.tex slides/*.tex
	# you need to run pdflatex command twice if you're having issues 
	# getting TOC or top progress bar to show up in resulting pdf
	mkdir -p out
	pdflatex --output-directory=out main.tex

view-xpdf: out/main.pdf
	xpdf out/main.pdf & disown

view-okular: out/main.pdf
	okular out/main.pdf & disown > /dev/null 2>&1

view-acroread: out/main.pdf
	acroread out/main.pdf & disown

clean:
	rm -rf out
