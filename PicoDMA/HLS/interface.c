#include "interface.h"

data_t A[10][10];


void passPointerArray(data_t B[10][10], int* sum) {
	data_t i, j;

#pragma HLS INTERFACE mode=s_axilite port=B
#pragma HLS INTERFACE s_axilite port=sum
#pragma HLS INTERFACE s_axilite port=return

	//Copy Array
	for(i = 0; i < 10; i++)
		for(j=0; j < 10; j++)
			A[i][j] = B[i][j];

	//Sum input
	int total = 0;
	for(i = 0; i < 10; i++)
		for(j = 0; j < 10; j++)
			total += (A[i][j]);

	*sum = total;
}
