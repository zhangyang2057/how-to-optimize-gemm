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

     In this version, we accumulate in registers and put A( 0, p ) in a register */

    int p;
    register float
        /* hold contributions to
        C( 0, 0 ), C( 0, 1 ), C( 0, 2 ), C( 0, 3 ) */
        c_00_reg = 0.f, c_01_reg = 0.f, c_02_reg = 0.f, c_03_reg = 0.f,
        /* holds A( 0, p ) */
        a_0p_reg = 0.f;

    for ( p=0; p<k; p++ ){
        a_0p_reg = A( 0, p );

        c_00_reg += a_0p_reg * B( p, 0 );
        c_01_reg += a_0p_reg * B( p, 1 );
        c_02_reg += a_0p_reg * B( p, 2 );
        c_03_reg += a_0p_reg * B( p, 3 );
    }

    C( 0, 0 ) += c_00_reg;
    C( 0, 1 ) += c_01_reg;
    C( 0, 2 ) += c_02_reg;
    C( 0, 3 ) += c_03_reg;
}