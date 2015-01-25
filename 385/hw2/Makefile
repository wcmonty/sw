cc=g++
flags=-Wall -g
all: master worker

master: master_main.o master.o sort_child.o pipe.o messagequeue.o worker_child.o sharedmemory.o semaphore.o
	$(cc) $(flags) master_main.o master.o sort_child.o pipe.o messagequeue.o worker_child.o sharedmemory.o semaphore.o -o master

master_main.o: master_main.cpp master.h
	$(cc) $(flags) -c master_main.cpp

master.o: master.cpp master.h sort_child.h pipe.h messagequeue.h sharedmemory.h worker_child.h semaphore.h
	$(cc) $(flags) -c master.cpp

sort_child.o: sort_child.cpp sort_child.h
	$(cc) $(flags) -c sort_child.cpp

pipe.o: pipe.cpp pipe.h
	$(cc) $(flags) -c pipe.cpp

messagequeue.o: messagequeue.cpp messagequeue.h messagestruct.h
	$(cc) $(flags) -c messagequeue.cpp

sharedmemory.o: sharedmemory.cpp sharedmemory.h
	$(cc) $(flags) -c sharedmemory.cpp

semaphore.o: semaphore.cpp semaphore.h
	$(cc) $(flags) -c semaphore.cpp

worker_child.o: worker_child.cpp worker_child.h
	$(cc) $(flags) -c worker_child.cpp 

worker: worker.o messagequeue.o sharedmemory.o semaphore.o
	$(cc) $(flags) worker.o messagequeue.o sharedmemory.o semaphore.o -o worker

worker.o: worker.cpp worker.h messagequeue.h messagestruct.h semaphore.h
	$(cc) $(flags) worker.cpp -c

test: master
	./master 7 5 2.0 5.0 
	echo ###############################################
	./master 7 5 2.0 5.0 -lock

	
clean:
	rm master worker *.o

vg: master worker
	valgrind --tool=memcheck --leak-check=full --show-reachable=yes ./master 19 17 2.0 5.0
	valgrind --tool=memcheck --leak-check=full --show-reachable=yes ./master 19 17 2.0 5.0 -lock

docs: master worker *.dox README
	doxygen Doxyfile
