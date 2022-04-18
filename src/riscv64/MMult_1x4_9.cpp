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

     We next use indirect addressing */

    int p;
    register float
        /* hold contributions to
        C( 0, 0 ), C( 0, 1 ), C( 0, 2 ), C( 0, 3 ) */
        c_00_reg = 0.f, c_01_reg = 0.f, c_02_reg = 0.f, c_03_reg = 0.f,
        /* holds A( 0, p ) */
        a_0p_reg = 0.f;

    float
        /* Point to the current elements in the four columns of B */
        *bp0_pntr = &B( 0, 0 ), *bp1_pntr = &B( 1, 0 ), *bp2_pntr = &B( 2, 0 ), *bp3_pntr = &B( 3, 0 );

    for ( p=0; p<k; p+=4 ){
        a_0p_reg = A( 0, p );
        bp0_pntr = &B( p, 0 );
        c_00_reg += a_0p_reg * *(bp0_pntr);
        c_01_reg += a_0p_reg * *(bp0_pntr + 1);
        c_02_reg += a_0p_reg * *(bp0_pntr + 2);
        c_03_reg += a_0p_reg * *(bp0_pntr + 3);

        a_0p_reg = A( 0, p + 1);
        bp1_pntr = &B( p + 1, 0 );
        c_00_reg += a_0p_reg * *(bp1_pntr);
        c_01_reg += a_0p_reg * *(bp1_pntr + 1);
        c_02_reg += a_0p_reg * *(bp1_pntr + 2);
        c_03_reg += a_0p_reg * *(bp1_pntr + 3);

        a_0p_reg = A( 0, p + 2);
        bp2_pntr = &B( p + 2, 0 );
        c_00_reg += a_0p_reg * *(bp2_pntr);
        c_01_reg += a_0p_reg * *(bp2_pntr + 1);
        c_02_reg += a_0p_reg * *(bp2_pntr + 2);
        c_03_reg += a_0p_reg * *(bp2_pntr + 3);

        a_0p_reg = A( 0, p + 3);
        bp3_pntr = &B( p + 3, 0 );
        c_00_reg += a_0p_reg * *(bp3_pntr);
        c_01_reg += a_0p_reg * *(bp3_pntr + 1);
        c_02_reg += a_0p_reg * *(bp3_pntr + 2);
        c_03_reg += a_0p_reg * *(bp3_pntr + 3);
    }

    C( 0, 0 ) += c_00_reg;
    C( 0, 1 ) += c_01_reg;
    C( 0, 2 ) += c_02_reg;
    C( 0, 3 ) += c_03_reg;
}