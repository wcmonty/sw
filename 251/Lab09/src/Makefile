lab9: tst.o bst.o
	gcc -g tst.o bst.o -o lab9

tst.o: tst.c bst.h
	gcc -g -c tst.c -o tst.o

bst.o: bst.c bst.h
	gcc -g -c bst.c -o bst.o

test:
	./lab9
