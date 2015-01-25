cc=g++
flags=-Wall -g
statsh: statsh.o runner.o command.o child.o pipe.o
	$(cc) $(flags) statsh.o runner.o command.o child.o pipe.o -o statsh

statsh.o: statsh.cpp runner.h
	$(cc) $(flags) -c statsh.cpp

runner.o: runner.cpp runner.h command.h
	$(cc) $(flags) -c runner.cpp

child.o: child.cpp child.h pipe.h
	$(cc) $(flags) -c child.cpp

command.o: command.cpp command.h child.h pipe.h
	$(cc) $(flags) -c command.cpp 

pipe.o: pipe.cpp pipe.h
	$(cc) $(flags) -c pipe.cpp

test: statsh
	./statsh

all: statsh
	
clean:
	rm statsh *.o *.gch

vg: statsh
	valgrind --tool=memcheck --leak-check=full ./statsh

docs: statsh *.dox README
	doxygen Doxyfile
