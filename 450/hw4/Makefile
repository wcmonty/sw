cc=g++
flags=-Wall -g
all: server client

server: server.o message.o processor.o udpsocket.o packetwrapper.o 
	$(cc) $(flags) server.o message.o processor.o udpsocket.o packetwrapper.o -o server

client: client.o message.o sender.o udpsocket.o packetwrapper.o timer.o
	$(cc) $(flags) client.o message.o sender.o udpsocket.o packetwrapper.o timer.o -o client

server.o: server.cpp message.h processor.h udpsocket.h chance.h
	$(cc) $(flags) -c server.cpp

client.o: client.cpp message.h sender.h udpsocket.h messageheader.h chance.h
	$(cc) $(flags) -c client.cpp

message.o: message.cpp message.h packetwrapper.h messageheader.h
	$(cc) $(flags) -c message.cpp

packetwrapper.o: packetwrapper.cpp packetwrapper.h messageheader.h
	$(cc) $(flags) -c packetwrapper.cpp
	
processor.o: processor.cpp processor.h
	$(cc) $(flags) -c processor.cpp

sender.o: sender.cpp sender.h
	$(cc) $(flags) -c sender.cpp

timer.o: timer.cpp timer.h
	$(cc) $(flags) -c timer.cpp

udpsocket.o: udpsocket.cpp udpsocket.h
	$(cc) $(flags) -c udpsocket.cpp

clean:
	rm *.o

test: server client
	./server 
	./client

docs: server client *.dox README
	doxygen Doxyfile

vgserver: server
	valgrind ./server 54321 --leak-check=full

vgclient: client
	valgrind ./client --leak-check=full
