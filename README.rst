MIT - Beamer Presentation Template
==================================

LaTeX Beamer presentation template derived from Andreas Kloeckner's brown-beamer template:

http://mathema.tician.de/software/brown-beamer

Dependencies:
-------------
* latex-beamer class 3.0.7 (http://latex-beamer.sourceforge.net)
* texlive-latex 2008+ (http://www.tug.org/texlive/)

Install:
--------
Install is simply downloading the code from github. Here we install mit-beamer at $HOME/mit-beamer::

    $ cd $HOME
    $ git clone http://github.com/jtriley/mit-beamer.git

Generating the presentation:
----------------------------
- Customize mit-beamer/slides.tex to your liking
- Then change to the 'out' directory and run make.sh::
    $ cd $HOME/mit-beamer/out
    $ ./make.sh
- If you want to preview the presentation after generating::
    $ ./make.sh -p
