FLAGS= -Wall -g

findIt: access.o amin.o andnode.o atime.o cmin.o contentfirstfilesearch.o ctime.o directoryfirstfilesearch.o evalnode.o filesearch.o gid.o groupnode.o largest.o links.o main.o mmin.o mtime.o notnode.o ornode.o print.o runner.o size.o smallest.o sparse.o summary.o time.o treedir.o type.o uid.o
	g++ -o findIt access.o amin.o andnode.o atime.o cmin.o contentfirstfilesearch.o ctime.o directoryfirstfilesearch.o evalnode.o filesearch.o gid.o groupnode.o largest.o links.o main.o mmin.o mtime.o notnode.o ornode.o print.o runner.o size.o smallest.o sparse.o summary.o time.o treedir.o type.o uid.o

access.o: access.cpp access.h evalnode.h
	g++ $(FLAGS) -c access.cpp -o access.o

amin.o: amin.cpp amin.h evalnode.h
	g++ $(FLAGS) -c amin.cpp -o amin.o

andnode.o: andnode.cpp andnode.h evalnode.h
	g++ $(FLAGS) -c andnode.cpp -o andnode.o

atime.o: atime.cpp atime.h  evalnode.h
	g++ $(FLAGS) -c atime.cpp -o atime.o

cmin.o: cmin.cpp cmin.h evalnode.h
	g++ $(FLAGS) -c cmin.cpp -o cmin.o

contentfirstfilesearch.o: contentfirstfilesearch.cpp contentfirstfilesearch.h
	g++ $(FLAGS) -c contentfirstfilesearch.cpp -o contentfirstfilesearch.o

ctime.o: ctime.cpp ctime.h evalnode.h
	g++ $(FLAGS) -c ctime.cpp -o ctime.o

directoryfirstfilesearch.o: directoryfirstfilesearch.cpp directoryfirstfilesearch.h
	g++ $(FLAGS) -c directoryfirstfilesearch.cpp -o directoryfirstfilesearch.o

evalnode.o: evalnode.cpp evalnode.h
	g++ $(FLAGS) -c evalnode.cpp -o evalnode.o

filesearch.o: filesearch.cpp filesearch.h
	g++ $(FLAGS) -c filesearch.cpp -o filesearch.o

gid.o: gid.cpp gid.h evalnode.h
	g++ $(FLAGS) -c gid.cpp -o gid.o

groupnode.o: groupnode.cpp groupnode.h evalnode.h
	g++ $(FLAGS) -c groupnode.cpp -o groupnode.o

largest.o: largest.cpp largest.h evalnode.h
	g++ $(FLAGS) -c largest.cpp -o largest.o

links.o: links.cpp links.h evalnode.h
	g++ $(FLAGS) -c links.cpp -o links.o

main.o: main.cpp
	g++ $(FLAGS) -c main.cpp -o main.o

mmin.o: mmin.cpp mmin.h evalnode.h
	g++ $(FLAGS) -c mmin.cpp -o mmin.o

mtime.o: mtime.cpp mtime.h evalnode.h
	g++ $(FLAGS) -c mtime.cpp -o mtime.o

notnode.o: notnode.cpp notnode.h evalnode.h
	g++ $(FLAGS) -c notnode.cpp -o notnode.o

ornode.o: ornode.cpp ornode.h evalnode.h
	g++ $(FLAGS) -c ornode.cpp -o ornode.o

print.o: print.cpp print.h evalnode.h
	g++ $(FLAGS) -c print.cpp -o print.o

runner.o: runner.cpp runner.h access.h amin.h andnode.h atime.h cmin.h contentfirstfilesearch.h ctime.h directoryfirstfilesearch.h evalnode.h filesearch.h gid.h groupnode.h largest.h links.h mmin.h mtime.h notnode.h ornode.h print.h runner.h size.h smallest.h sparse.h summary.h time.h treedir.h type.h uid.h
	g++ $(FLAGS) -c runner.cpp -o runner.o

size.o: size.cpp size.h evalnode.h
	g++ $(FLAGS) -c size.cpp -o size.o

smallest.o: smallest.cpp smallest.h evalnode.h
	g++ $(FLAGS) -c smallest.cpp -o smallest.o

sparse.o: sparse.cpp sparse.h evalnode.h
	g++ $(FLAGS) -c sparse.cpp -o sparse.o

summary.o: summary.cpp summary.h evalnode.h
	g++ $(FLAGS) -c summary.cpp -o summary.o

time.o: time.cpp time.h evalnode.h
	g++ $(FLAGS) -c time.cpp -o time.o

treedir.o: treedir.cpp treedir.h evalnode.h
	g++ $(FLAGS) -c treedir.cpp -o treedir.o

type.o: type.cpp type.h evalnode.h
	g++ $(FLAGS) -c type.cpp -o type.o

uid.o: uid.cpp uid.h evalnode.h
	g++ $(FLAGS) -c uid.cpp -o uid.o

clean:
	rm *.o findIt

test:
	./test.sh

