#define A( i, j ) a[ (i)* n + (j) ]
#define B( i, j ) b[ (i)* n + (j) ]

void copy_matrix( int m, int n, float *a, float *b)
{
  int i, j;
  for ( i=0; i<m; i++ )
  for ( j=0; j<n; j++ )
      B( i,j ) = A( i,j );
}

