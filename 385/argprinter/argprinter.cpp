#include <cstdlib>
#include <iostream>

using namespace std;

int main (int argc, char **argv, char **envp) {

	int i;

	cout << "\narc = " << argc << endl;

	cout << "\nargv = \n";

	for (i = 0; i < argc; i++)
		cout << "\targv[ " << i << " ] = " << argv[ i ] << endl;

	cout << "\nenvp = \n";

	i = 0;

	for (char **e = envp; *e; e++)
		cout << "\tenvp[ " << i++ << " ] = \"" << *e << "\"\n";

	return 0;

} //main
