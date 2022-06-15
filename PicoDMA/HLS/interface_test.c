#include "interface.h"

int main(){

	int din[10][10], dout;

	int i, retval = 0;

	int total = 0;
	for(i = 0; i < 100; i++){
		din[i/10][i%10] = i;
		total += i;
	}

	//Call the function
	dout = passPointerArray(din);

	if(dout == total){
		printf("TEST PASSED!");

	} else {
		printf("TEST FAILED!");
		retval = 1;
	}

	return retval;


}
