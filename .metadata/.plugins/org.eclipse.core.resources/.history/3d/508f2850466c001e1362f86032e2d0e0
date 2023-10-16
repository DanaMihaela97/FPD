/*
 ============================================================================
 Name        : Laborator1.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello MPI World in C
 ============================================================================
 */
#include <stdio.h>
#include <string.h>
#include "mpi.h"

int main(int argc, char* argv[]){
	int  my_rank; /* rank of process */
	int  p;       /* number of processes */
	int message[400];        /* storage for message */
	int recv[100];

	/* start up MPI */

	MPI_Init(&argc, &argv);

	/* find out process rank */
	MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

	/* find out number of processes */
	MPI_Comm_size(MPI_COMM_WORLD, &p);
// bcast - distribuie acelasi vector la toti
// scatter - imparte un vector la toti, adica in bucatele egale; la final gather aduna aceste bucati
	MPI_Scatter(message, 100, MPI_INT, recv, 100, MPI_INT, 0, MPI_COMM_WORLD);
	if (my_rank !=0){
			int i =0;
			for (i =0; i<100; i++){
				recv[i]= my_rank;
			}
	}
	MPI_Gather(recv, 100, MPI_INT, message, 100, MPI_INT,0, MPI_COMM_WORLD);

	if(my_rank==0){
		int i = 0;
		int sum = 0;
		for (i = 100; i < 200; i++){
			sum+=message[i];
		}
		printf("Suma 1: %d\n",sum);

		i = 0; // resetam
		sum = 0;
		for (i = 200; i < 300; i++){
			sum+=message[i];
		}
		printf("Suma 2: %d\n",sum);

		i = 0;
		sum = 0;
		for (i = 300; i < 400; i++){
			sum+=message[i];
		}
		printf("Suma 3: %d\n",sum);

	}
	/* shut down MPI */
	MPI_Finalize();


	return 0;
}
