flags=-O3 -std=c99
CC=gcc
tmap: tmap.o main.o ht.o bst.o
	$(CC) $(flags) tmap.o main.o ht.o bst.o -o tmap

bst: main_bst.o bst.o
	$(CC) $(flags) bst.o main_bst.o -o bst

bst.o: bst.c bst.h project.h
	$(CC) $(flags) -c bst.c -o bst.o

ht.o: ht.c ht.h project.h
	$(CC) $(flags) -c ht.c -o ht.o

tmap.o: tmap.c tmap.h ht.h bst.h project.h
	$(CC) $(flags) -c tmap.c -o tmap.o

main.o: main.c tmap.h project.h
	$(CC) $(flags) -c main.c -o main.o

main_bst.o: main_bst.c bst.h
	$(CC) $(flags) -c main_bst.c -o main_bst.o

test: tmap
	./tmap

bsttest: bst
	./bst

vg: 
	valgrind --tool=memcheck --leak-check=full ./tmap

clean:
	rm *.o tmap
