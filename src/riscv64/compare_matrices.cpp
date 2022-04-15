#define A( i, j ) a[ (i) * n + (j) ]
#define B( i, j ) b[ (i) * n + (j) ]
#define abs( x ) ( (x) < 0.0 ? -(x) : (x) )

double compare_matrices( int m, int n, float *a, float *b)
{
  int i, j;
  double max_diff = 0.0, diff;

  for ( j=0; j<n; j++ )
    for ( i=0; i<m; i++ ){
      diff = abs( A( i,j ) - B( i,j ) );
      max_diff = ( diff > max_diff ? diff : max_diff );
    }

  return max_diff;
}

