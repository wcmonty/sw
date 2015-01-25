COMPILER=gcc
FLAGS=-g
main: main.c
	$(COMPILER) $(FLAGS) main.c -o main

test: main
	./main

gdb: main
	gdb main 
