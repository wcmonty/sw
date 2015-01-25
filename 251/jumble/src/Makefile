CC=gcc
FLAGS=-g
jumble: ht.o wl.o jumble.o
	$(CC) $(FLAGS) ht.o wl.o jumble.o -o jumble

wl.o: wl.c wl.h ht.h
	$(CC) $(FLAGS) -c wl.c -o wl.o

ht.o: ht.c ht.h
	$(CC) $(FLAGS) -c ht.c -o ht.o

jumble.o: jumble.c wl.h
	$(CC) $(FLAGS) -c jumble.c -o jumble.o

clean:
	rm *.o
	rm jumble

test:
	./jumble test.txt 0

small:
	./jumble small.txt 1

big:
	./jumble big.txt 1

vg: jumble
	valgrind --tool=memcheck --leak-check=full ./jumble big.txt 0
