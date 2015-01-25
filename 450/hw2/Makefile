cc=g++
flags=-Wall -g
all: myServer myClient

myServer: myserver.o message.o processor.o udp_socket.o packetwrapper.o
	$(cc) $(flags) myserver.o message.o processor.o udp_socket.o packetwrapper.o -o myServer

myClient: myclient.o message.o sender.o udp_socket.o packetwrapper.o
	$(cc) $(flags) myclient.o message.o sender.o udp_socket.o packetwrapper.o -o myClient

myserver.o: myserver.cpp message.h processor.h udp_socket.h
	$(cc) $(flags) -c myserver.cpp

myclient.o: myclient.cpp message.h sender.h udp_socket.h
	$(cc) $(flags) -c myclient.cpp

message.o: message.cpp message.h packetwrapper.h
	$(cc) $(flags) -c message.cpp

packetwrapper.o: packetwrapper.cpp packetwrapper.h message_header.h
	$(cc) $(flags) -c packetwrapper.cpp
	

processor.o: processor.cpp processor.h
	$(cc) $(flags) -c processor.cpp

sender.o: sender.cpp sender.h
	$(cc) $(flags) -c sender.cpp

udp_socket.o: udp_socket.cpp udp_socket.h
	$(cc) $(flags) -c udp_socket.cpp

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
