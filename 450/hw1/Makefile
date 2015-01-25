cc=g++
flags=-Wall -g
all: myServer myClient

myServer: myserver.o message.o processor.o socket.o
	$(cc) $(flags) myserver.o message.o processor.o socket.o -o myServer

myClient: myclient.o message.o sender.o socket.o
	$(cc) $(flags) myclient.o message.o sender.o socket.o -o myClient

myserver.o: myserver.cpp message.h processor.h socket.h
	$(cc) $(flags) -c myserver.cpp

myclient.o: myclient.cpp message.h sender.h socket.h
	$(cc) $(flags) -c myclient.cpp

message.o: message.cpp message.h message_header.h
	$(cc) $(flags) -c message.cpp

processor.o: processor.cpp processor.h
	$(cc) $(flags) -c processor.cpp

sender.o: sender.cpp sender.h
	$(cc) $(flags) -c sender.cpp

socket.o: socket.cpp socket.h
	$(cc) $(flags) -c socket.cpp

clean:
	rm *.o myClient myServer

test: myServer myClient
	./myServer 
	./myClient

docs: myServer myClient *.dox README
	doxygen Doxyfile

vgserver: myServer
	valgrind ./myServer 54321 --leak-check=full

vgclient: myClient
	valgrind ./myClient --leak-check=full
