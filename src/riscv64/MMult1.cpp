/* Create macros so that the matrices are stored in column-major order */

#define A(i,j) a[ (i) * k + (j) ]
#define B(i,j) b[ (i) * n + (j) ]
#define C(i,j) c[ (i) * n + (j) ]

/* Routine for computing C = A * B + C */

void AddDot( int, float *, float *, int, float * );

void MY_MMult( int m, int n, int k, float *a, float *b, float *c)

{
  int i, j;
  for ( i=0; i<m; i+=1 ){        /* Loop over the rows of C */
    for ( j=0; j<n; j+=1 ){        /* Loop over the columns of C */
      /* Update the C( i,j ) with the inner product of the ith row of A
	 and the jth column of B */

      AddDot( k, &A( i,0 ), &B( 0,j ), n, &C( i,j ) );
    }
  }
}


/* Create macro to let X( i ) equal the ith element of x */

#define X(i) x[ (i)*incx ]
#define Y(i) y[ (i)*incy ]

void AddDot( int k, float *x, float *y, int incy,  float *gamma )
{
  /* compute gamma := x' * y + gamma with vectors x and y of length n.

     Here x starts at location x with increment (stride) incx and y starts at location y and has (implicit) stride of 1.
  */

  int p;

  for ( p=0; p<k; p++ ){
    *gamma += x[p] * Y( p );
  }
}
