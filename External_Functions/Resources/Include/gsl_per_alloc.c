#include<stdio.h>
#include<gsl/gsl_permutation.h>
/*typedef struct{
size_t size;
int* data;
}OM_gsl_permutation;
*/


void* gsl_per_alloc(size_t N)
{
	gsl_permutation* p = gsl_permutation_alloc(N);
	for(int i = 0; i < N; i++)
	{
		(p->data)[i] = 0;	
	}
	return (void*) p;
	/*OM_gsl_permutation* OM_gsl_per = malloc(sizeof(OM_gsl_permutation));
	if ( OM_gsl_per == NULL ) ModelicaError("Not enough memory");
	return (void*) OM_gsl_per;*/	
}

/*void OM_gsl_permutation_free(void* p)
{
	OM_gsl_permutation* OM_gsl_per = (OM_gsl_permutation*) p;
	if (OM_gsl_per != NULL)
	{
		free(OM_gsl_per);
	}
}*/
