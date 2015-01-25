flags=gcc
gw: main.o gw.o
	$(cc) $(flags) main.o gw.o -o gw
gw2: main2.o gw.o
	$(cc) $(flags) main2.o gw.o -o gw2
gw.o: gw.c gw.h
	$(cc) $(flags) -c gw.c -o gw.o
main.o: main.c gw.h
	$(cc) $(flags) -c main.c -o main.o
main2.0: main2.c gw.h
	$(cc) $(flags) -c main2.c -o main2.o

clean:
	rm *.o

vg: gw
	valgrind --tool=memcheck --leak-check=full ./gw	
vg2: gw2
	valgrind --tool=memcheck --leak-check=full ./gw2
