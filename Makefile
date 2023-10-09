hello:
	echo "Hello World\n"

time-python:
	time python code/sum_of_first_n_numbers.py

time-c:
	gcc -O3 code/sum_of_first_n_numbers.c -o sum_of_first_n_numbers
	time ./sum_of_first_n_numbers
	rm sum_of_first_n_numbers

time-c-arg-O3:
	gcc -O3 code/sum_of_first_n_numbers_arg.c -o sum_of_first_n_numbers_arg
	time ./sum_of_first_n_numbers_arg 6074000999
	rm sum_of_first_n_numbers_arg

time-c-arg-O0:
	gcc code/sum_of_first_n_numbers_arg.c -O0 -o sum_of_first_n_numbers_arg
	time ./sum_of_first_n_numbers_arg 6074000999
	rm sum_of_first_n_numbers_arg