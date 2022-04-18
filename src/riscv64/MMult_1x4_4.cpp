/* Create macros so that the matrices are stored in column-major order */

#define A(i,j) a[ (i) * k + (j) ]
#define B(i,j) b[ (i) * n + (j) ]
#define C(i,j) c[ (i) * n + (j) ]

/* Routine for computing C = A * B + C */

void AddDot1x4( int, float *, float *, int, float * );

void MY_MMult( int m, int n, int k, float *a, float *b, float *c)

{
  int i, j;
  for ( i=0; i<m; i+=1 ){        /* Loop over the rows of C */
    for ( j=0; j<n; j+=4 ){        /* Loop over the columns of C */
      /* Update the C( i,j ) with the inner product of the ith row of A
	 and the jth column of B */

      AddDot1x4( k, &A( i,0 ), &B( 0,j ), n, &C( i,j ) );
    }
  }
}


void AddDot1x4( int k, float *a, float *b, int n, float *c)
{
  /* So, this routine computes four elements of C:

           C( 0, 0 ), C( 0, 1 ), C( 0, 2 ), C( 0, 3 ).

     Notice that this routine is called with c = C( i, j ) in the
     previous routine, so these are actually the elements

           C( i, j ), C( i, j+1 ), C( i, j+2 ), C( i, j+3 )

     in the original matrix C
     In this version, we "inline" AddDot */

  int p;
//   AddDot( k, &A( 0, 0 ), &B( 0, 0 ), n, &C( 0, 0 ) );
  for (p=0; p<k; p++ ){
    C(0, 0) += A (0, p) * B( p , 0);
  }
//   AddDot( k, &A( 0, 0 ), &B( 0, 1 ), n, &C( 0, 1 ) );
  for (p=0; p<k; p++ ){
    C(0, 1) += A (0, p) * B( p , 1);
  }
//   AddDot( k, &A( 0, 0 ), &B( 0, 2 ), n, &C( 0, 2 ) );
  for (p=0; p<k; p++ ){
    C(0, 2) += A (0, p) * B( p , 2);
  }
//   AddDot( k, &A( 0, 0 ), &B( 0, 3 ), n, &C( 0, 3 ) );
  for (p=0; p<k; p++ ){
    C(0, 3) += A (0, p) * B( p , 3);
  }
}