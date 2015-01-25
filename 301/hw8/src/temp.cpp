//============================================================================
// Name        : temp.cpp
// Author      : William Montgomery
// Description : HW #8-PE in C++, Ansi-style
//============================================================================

#include <iostream>
#include <exception>
using namespace std;

#define TRUE 1
#define FALSE 0

int nextchar();
void consume();
void match(int c);

void S();
void Sprime();
void A();

string  input;  // input string:
int     iindex;  // current char:
int debug = FALSE;

int main() {
	while (getline(cin, input)){
		input = input + "$";
		iindex = 0;
		cout << "Testing string:  " << input << endl;
		try {
			S();
			match('$');
			cout << "yes" << endl;
		}
		catch (...) {
			cout << "no" << endl;
		}
	}
	return 0;
}

int nextchar() {
	return input[iindex];
}

void consume() {
	iindex++;
}

void match(int c) {
	if (c == nextchar()){
		consume();
	}
	else {
		throw new exception();
	}
}

void S() {
	if (debug) cout << "In S" << endl;
	if (nextchar() == ')' || nextchar() == '$') return;
	A();
	Sprime();
}

void Sprime() {
	if (debug) cout << "In Sprime, nextchar is " << (char)nextchar() << endl;
	if (nextchar() == ')' || nextchar() == '$') return;
	A();
	Sprime();
}


void A() {
	if (debug) cout << "In A, nextchar() is " << (char)nextchar() << endl;
	if (nextchar() == 'a') {
		match('a');
	}
	else if (nextchar() == '('){
		match('(');
		A();
		Sprime();
		if (nextchar() == ')'){
			match(')');
		}
		else throw new exception();

	}
	else {
		if (debug) cout << "Throwing exception in A()" << endl;
		throw new exception();
	}
}
