CXX		= g++
CXXFLAGS = -m64 -pipe -pthread -g -Wall -W -fPIE
INCPATH =   
####### Compile

orderSearcher: main.o runner.o chunker.o semaphore.o chunk.o
	$(CXX) $(CXXFLAGS) $(INCPATH) -o orderSearcher main.o runner.o chunker.o semaphore.o chunk.o

main.o: main.cpp runner.h \
        chunker.h \
        semaphore.h \
        chunk.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

runner.o: runner.cpp runner.h \
        chunker.h \
        semaphore.h \
        chunk.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o runner.o runner.cpp

chunker.o: chunker.cpp chunker.h \
        semaphore.h \
        chunk.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o chunker.o chunker.cpp

semaphore.o: semaphore.cpp semaphore.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o semaphore.o semaphore.cpp

chunk.o: chunk.cpp chunk.h \
        runner.h \
        chunker.h \
        semaphore.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o chunk.o chunk.cpp

test:
	./test_script

clean:
	rm *.o orderSearcher
