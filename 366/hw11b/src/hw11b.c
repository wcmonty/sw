/*
 * hw11b.c
 *
 *  Created on: Apr 17, 2013
 *      Author: William Montgomery
 */


void func1 (double **param1, double param2,  double param3){
	int var1;
	int var2;
	int var3;

	for (var1 = 0; var1 < 5; var1++){
		for (var2 = 0; var2 < 5; var2++){
			for (var3 = 0; var3 < 5; var3++){
				param1[var1][var2] = (var3 - 2) * 4.6;
			}
		}
	}

}

int main(){
	
	func1();
	return 0;
}
