#include "interface.h"

data_t A[10][10];


data_t passPointerArray(data_t B[10][10]) {

	data_t i, j, sum;

	//Copy Array
	for(i = 0; i < 10; i++)
		for(j=0; j < 10; j++)
			A[i][j] = B[i][j];

	//Sum input
	sum = 0;
	for(i = 0; i < 10; i++)
		for(j = 0; j < 10; j++)
			sum += (A[i][j]);

	return sum;

}
