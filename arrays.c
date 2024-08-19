/*
 ============================================================================
 Name        : arrays.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

/*
 ============================================================================
 Name        : arrays.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	/*
	 ============================================================================
	 Name        : l.c
	 Author      :
	 Version     :
	 Copyright   : Your copyright notice
	 Description : Hello World in C, Ansi-style
	 ============================================================================
	 */


		float matrix1 [2][2];
		float matrix2 [2][2];

		float sum [2][2];


		printf ("enter the values of the first matrix \n");
		printf ("enter a11:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix1[0][0]);
		//printf ("%f",matrix1[0][0]);

		printf ("enter a12:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix1[0][1]);
		//printf ("%f",matrix1[0][1]);

		printf ("enter a21:");
	    fflush(stdin); fflush (stdout);
		scanf("%f",&matrix1[1][0]);
		//printf ("%f",matrix1[1][0]);

		printf ("enter a22:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix1[1][1]);
//		printf ("%f",matrix1[1][1]);



		printf ("enter the values of the second matrix \n");
		printf ("enter b11:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix2[0][0]);
	//	printf ("%f",matrix2[0][0]);

		printf ("enter b12:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix2[0][1]);
		//printf ("%f",matrix2[0][1]);

		printf ("enter b21:");
	    fflush(stdin); fflush (stdout);
		scanf("%f",&matrix2[1][0]);
		//printf ("%f",matrix2[1][0]);

		printf ("enter b22:");
		fflush(stdin); fflush (stdout);
		scanf("%f",&matrix2[1][1]);
		//printf ("%f",matrix2[1][1]);

		printf ("sum of matrix \n");
		sum[0][0]=matrix1[0][0]+matrix2[0][0];
		printf ("%f \t",sum[0][0]);

		sum[0][1]=matrix1[0][1]+matrix2[0][1];
		printf ("%f \n",sum[0][1] );

		sum[1][0]=matrix1[1][0]+matrix2[1][0];
		printf ("%f \t",sum[1][0]);


		sum[1][1]=matrix1[1][1]+matrix2[1][1];
		printf ("%f \n",sum[1][1]);









		return EXIT_SUCCESS;
	}


