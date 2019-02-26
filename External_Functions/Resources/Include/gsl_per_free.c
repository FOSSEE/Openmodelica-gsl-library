#include<stdio.h>
#include<gsl/gsl_permutation.h> 

void gsl_per_free(gsl_permutation *p)
{
	gsl_permutation_free(p);
}
