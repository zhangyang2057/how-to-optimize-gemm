#include <stdio.h>

#define A( i, j ) a[ (i) * n + (j) ]

void print_matrix( int m, int n, float *a)
{
  int i, j;

  for ( i=0; i<m; i++ )
  {
    for ( j=0; j<n; j++ )
      printf("%f ", A( i,j ) );
    printf("\n");
  }
  printf("\n\n");
}

