CC=gcc
CFLAGS=-Wall
test: test.o sort.o
	$(CC) $(CFLAGS) test.o sort.o -o test
	
test.o:  test.c sort.h
	$(CC) $(CFLAGS) -c test.c -o test.o
	
sort.o:  sort.c sort.h
	$(CC) $(CFLAGS) -c sort.c -o sort.o

clean:
	rm -f *.o test
