
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "utils.h"
#include <pthread.h>

//matrix initialisierung mit random Werten
float** initMat(int dim_z, int dim_s)
{
	float **mat = (float **)malloc(dim_z * sizeof(float *)); 
    for (int z=0; z<dim_z; z++) 
         mat[z] = (float *)malloc(dim_s * sizeof(float)); 
    // Note that arr[i][j] is same as *(*(arr+i)+j) 
    for (int z = 0; z <  dim_z; z++)
    {
    	for (int s = 0; s < dim_s; s++)
    	{
			mat[z][s] = rand()*0.000000001;
		}
	} 
   return mat; 
}
//Vektor initialisierung mit random Werten
float* initVec(int dim)
{ 
    float *vec = (float* )malloc(dim * sizeof(float)); 
    for (int z=0; z<dim; z++) 
         vec[z] =   rand()*0.000000001;
    // Note that arr[i] is same as *(arr+i) 
    return vec; 
}
//gewoenliche Matrix-Vektgor multiplikation als Funktion
float* mult_mat_vec(float** matrix, float* vector, int dim_z, int dim_s)
{
	
	float temp = 0;
	float* erg = initVec(dim_z);
	for(int z=0; z<dim_z; z++)
	{	
		for(int s = 0; s < dim_s; s++)
		{
			temp += matrix[z][s]*vector[s];
		}
		erg[z] = temp;
	}
	return(erg);
}
//vectorausgabe
void printVec(float* vector, int dim)
{
	for(int z = 0; z < dim; z++)
	{
		printf("[%f] \n", vector[z]);
	}
}
//Matrixausgabe
void printMat(float** matrix, int dim_z, int dim_s)
{
	for(int z = 0; z < dim_z; z++)
	{
		for(int s = 0; s < dim_s; s++)
		{
			if(s == 0){	printf("[");	}
			if(s+1 ==dim_s){	printf("%.3f] \n", matrix[z][s]);	}
			else{	printf("%.3f ", matrix[z][s]);	}
		}
	}
}
pthread_t* initThreads(int count_t)
{
	pthread_t* threads =  (pthread_t* )malloc(count_t * sizeof(pthread_t));
	return(threads);
}
//struct für die Parameterübergabe an Threads
struct args {
		float* zeile;
		float* spalte;
		int dim_z;
		int dim_s;
		float erg;
	};
/*die paralelisierungsmethode für den Thradaufruf
 * es wird für jeden eintrag im Ergebnissvektor die Berechnungen parallel ausgeführt
 */
void *compute_z(void *input)
{
	float* zeile = ((struct args*)input)->zeile;
	float* spalte = ((struct args*)input)->spalte;
	//int dim_z = ((struct args*)input)->dim_z;
	int dim_s = ((struct args*)input)->dim_s;
	float temp = 0;
	
	for(int s = 0; s < dim_s; s++){
			temp += zeile[s]*spalte[s];
			}
	((struct args*)input)->erg =  temp;
	return(0);
}
//Matrix-Vektro Multiplikation mit threads
float* thread_mult(float** matrix, float* vector, int dim_z, int dim_s, int count_t)
{
	//struct aus Aurgumenten für den thread-aufruf
	struct args *Comp_args = (struct args *)malloc(sizeof(struct args));
	Comp_args->dim_z = dim_z;
	Comp_args->dim_s = dim_s;
	Comp_args->spalte = vector;
	pthread_t* threads = initThreads(count_t);
	float* erg = initVec(dim_z);
	// if(count_t >= dim_z )
	// {
		for(int z=0; z<dim_z; z++)
		{
			//für jede Zeile die Threadaufrufargumente beschreiben 
			Comp_args->erg = erg[z];
			Comp_args->zeile = matrix[z];
			//hier ist der Error bzw ich vermute ich mache hier was falsch	
			pthread_create(&threads[z%count_t], NULL, &compute_z, (void *) Comp_args);
			// pthread_join(threads[z%count_t], NULL);
		}
	// }
	return(erg);
}
//MAIN
int main(int argc, char* argv[]){
	int seed = strtol(argv[1], NULL, 10);
	int dim_z = strtol(argv[2], NULL, 10);
	int dim_s = strtol(argv[3], NULL, 10);
	int count_t = strtol(argv[4], NULL, 10);
	
	
	srand(seed);
	
 	float* vector = initVec(dim_s);
	float** matrix = initMat(dim_z, dim_s);
	//float* erg_vec = initVec(dim_z);
	// float* erg_vec = mult_mat_vec(matrix, vector, dim_z, dim_s);
	
	time_t now;
	time_t not_now;
	time_t cylces_t = 0;
	time_t cylces = 0;
	
	rdtsc(now);
	thread_mult( matrix, vector,dim_z, dim_s, count_t);
	rdtsc(not_now);
	cylces_t = not_now - now;
	printf ("Cylcles fuer Threded version  = %ld\n", cylces_t);
	rdtsc(now);
	mult_mat_vec(matrix, vector, dim_z, dim_s);
	rdtsc(not_now);
	cylces = not_now - now;
	time_t cylc_diff = cylces - cylces_t; 
	printf ("Cylcles fuer normale version  = %ld\n", cylces);
	printf ("Cylcles differenz zu normalen version  = %ld\n", cylc_diff);
	
	//printVec(erg_vec, dim_z);
	// printMat(matrix, dim_z, dim_s);
	return(0);	
}
