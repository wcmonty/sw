main: hw8.cpp
	g++ -g hw8.cpp -o hw8

temp: temp.cpp
	g++ -g temp.cpp -o temp

test:
	./hw8 < yes.txt >test.out 2>test.out; grep no <test.out
	./hw8 < no.txt >test.out 2>test.out; grep yes <test.out
	#rm test.out
	
