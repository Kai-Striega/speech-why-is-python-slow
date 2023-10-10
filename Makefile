clean:
	rm -rf out/
	rm -rf bin/

install-texlive:
	sudo apt-get install texlive texlive-publishers texlive-science latexmk cm-super

slides: clean install-texlive
	mkdir out
	touch out/why_is_python_slow.log
	pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out why_is_python_slow.tex

view: slides
	evince out/why_is_python_slow.pdf

compile: clean
	mkdir bin
	clang-17 --version
	clang-17 code/sum_of_first_n_numbers_arg.c -O0 -o bin/sum_of_first_n_numbers_arg_O0
	clang-17 code/sum_of_first_n_numbers_arg.c -O3 -o bin/sum_of_first_n_numbers_arg_O3
	clang-17 code/sum_of_first_n_numbers.c -O3 -o bin/sum_of_first_n_numbers_O3

time: compile
	time bin/sum_of_first_n_numbers_arg_O0 6074000999
	time bin/sum_of_first_n_numbers_arg_O3 6074000999
	time bin/sum_of_first_n_numbers_O3
	time python code/sum_of_first_n_numbers.py
