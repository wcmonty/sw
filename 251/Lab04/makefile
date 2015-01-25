CC=gcc
CFLAGS=-Wall

stack: main.o ll_stack.o
	$(CC) $(CFLAGS) main.o ll_stack.o -o stack

main.o: main.c stack.h
	$(CC) $(CFLAGS) -c main.c

stack.o: ll_stack.c stack.h
	$(CC) $(CFLAGS) -c ll_stack.c

clean: 
	rm -rf *.o test

