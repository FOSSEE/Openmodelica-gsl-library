#include<stdio.h>
#include<gsl/gsl_permutation.h> 

int* gsl_per_init(size_t N, int* y, void *p) 
{
     gsl_permutation* op = (gsl_permutation*)p;
     gsl_permutation_init(op);
     y = (op -> data);
     return y;
}
