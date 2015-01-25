//============================================================================
// Name        : hw8.cpp
// Author      : William Montgomery
// Description : HW #8-PE in C++, Ansi-style
//============================================================================

//============================================================================
// CFG With Left Recursion:
//	<RE> -> <RE> '|' <CONCAT> | <CONCAT>
//	<CONCAT> -> <CONCAT> <KLEENE> | <KLEENE>
//	<KLEENE> -> <KLEENE> '*' | <ELEMENT>
//	<ELEMENT> -> a | b | c | d | '(' <RE> ')'
//
//
//
// CFG Without Left Recursion
//	<RE> -> <CONCAT><RE_REST>
//	<RE_REST> -> '|" <CONCAT> <RE_REST> | e
//
//	<CONCAT> -> <KLEENE> <CONCAT_REST>
//	<CONCAT_REST> -> <KLEENE> <CONCAT_REST> | e
//
//	<KLEENE> -> <ELEMENT> <KLEENE_REST>
//	<KLEENE_REST> -> '*' <KLEENE_REST> | e
//
//	<ELEMENT> -> a | b | c | d | '(' <RE> ')'
//============================================================================
#include <iostream>
#include <exception>
using namespace std;

#define TRUE 1
#define FALSE 0

// Utility functions
int nextchar();
void consume();
void match(int c);
void print_depth();

// Recursive functions
void RE();
void RE_REST();
void CONCAT();
void CONCAT_REST();
void KLEENE();
void KLEENE_REST();
void ELEMENT();

string  input;  // input string:
int     iindex;  // current char:
int depth = 0;
int debug = FALSE;

int main() {
	while (getline(cin, input)){
		input = input + "$";
		iindex = 0;
		cout << "##########################################" << endl;
		cout << "Testing string:  " << input << endl;
		try {
			depth = 0;
			RE();
			match('$');
			cout << "yes" << endl;
		}
		catch (...) {
			cout << "no" << endl;
		}
	}
	return 0;
}


//============================================================================
// Utility functions
//============================================================================
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

void print_depth(){
	int i;
	for (i = 0; i < depth; i++){
		cout << " ";
	}
}

//============================================================================
// Recursive functions
//============================================================================
void RE() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In RE, nextchar is " << (char)nextchar() << endl;
	if (nextchar() == '$') throw new exception();
	if (nextchar() == ')') throw new exception();
	CONCAT();
	RE_REST();
	depth--;
}

void RE_REST() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In RE_REST, nextchar is " << (char)nextchar() << endl;
	if (nextchar() == '$' || nextchar() == ')') return;
	if (nextchar() == '|') {
		match('|');
		CONCAT();
		RE_REST();
	}
	else throw new exception();
	depth--;
}

void CONCAT() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In CONCAT, nextchar is " << (char)nextchar() << endl;
	KLEENE();
	CONCAT_REST();
	depth--;
}

void CONCAT_REST() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In CONCAT_REST, nextchar is " << (char)nextchar() << endl;
	if(nextchar() == '$' || nextchar() == ')' || nextchar() == '|') return;
	KLEENE();
	CONCAT_REST();
	depth--;
}

void KLEENE() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In KLEENE, nextchar is " << (char)nextchar() << endl;
	ELEMENT();
	KLEENE_REST();
	depth--;
}

void KLEENE_REST() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In KLEENE_REST, nextchar is " << (char)nextchar() << endl;
	if (nextchar() == '$' || nextchar() == ')' || nextchar() == '|') return;
	if (nextchar() == '*') {
		match('*');
		KLEENE_REST();
	}
	depth--;
}

void ELEMENT() {
	depth++;
	if (debug) print_depth();
	if (debug) cout << "In ELEMENT, nextchar is " << (char)nextchar() << endl;
	if (nextchar() == 'a') {
		match('a');
	}
	else if (nextchar() == 'b') {
		match('b');
	}
	else if (nextchar() == 'c') {
		match('c');
	}
	else if (nextchar() == 'd') {
		match('d');
	}
	else if (nextchar() == '(') {
		if (debug) cout << "Found a parens" << endl;
		match('(');
		RE();
		if (nextchar() == ')') match(')');
		else throw new exception();
	}

	else {
		if (debug) cout << "nextchar is " << (char)nextchar() << endl;
		throw new exception();
	}
	depth--;
}
