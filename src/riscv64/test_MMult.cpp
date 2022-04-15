#include <stdio.h>
// #include <malloc.h>
#include <stdlib.h>

#include "parameters.h"

void REF_MMult(int, int, int, float *, float *, float *);
void MY_MMult(int, int, int, float *, float *, float *);
void copy_matrix(int, int, float *, float *);
void random_matrix(int, int, float *);
double compare_matrices( int, int, float *, float *);

double dclock();

int main()
{
  int
    p,
    m, n, k,
    lda, ldb, ldc,
    rep;

  double
    dtime, dtime_best,
    gflops,
    diff;

  float
    *a, *b, *c, *cref, *cold;
  printf( "MY_MMult = [\n" );

  for ( p=PFIRST; p<=PLAST; p+=PINC ){
    m = ( M == -1 ? p : M );
    n = ( N == -1 ? p : N );
    k = ( K == -1 ? p : K );

    gflops = 2.0 * m * n * k * 1.0e-09;

    lda = ( LDA == -1 ? m : LDA );
    ldb = ( LDB == -1 ? k : LDB );
    ldc = ( LDC == -1 ? m : LDC );

    /* Allocate space for the matrices */
    /* Note: I create an extra column in A to make sure that
       prefetching beyond the matrix does not cause a segfault */
    a = ( float * ) malloc( lda * (k+1) * sizeof( float ) );
    b = ( float * ) malloc( ldb * n * sizeof( float ) );
    c = ( float * ) malloc( ldc * n * sizeof( float ) );
    cold = ( float * ) malloc( ldc * n * sizeof( float ) );
    cref = ( float * ) malloc( ldc * n * sizeof( float ) );

    /* Generate random matrices A, B, Cold */
    random_matrix( m, k, a);
    random_matrix( k, n, b);
    random_matrix( m, n, cold);

    copy_matrix( m, n, cold, cref);

    /* Run the reference implementation so the answers can be compared */

    REF_MMult( m, n, k, a, b, cref);

    /* Time the "optimized" implementation */
    for ( rep=0; rep<NREPEATS; rep++ ){
      copy_matrix( m, n, cold, c);

      /* Time your implementation */
      dtime = dclock();

      MY_MMult( m, n, k, a, b, c);

      dtime = dclock() - dtime;

      if ( rep==0 )
        dtime_best = dtime;
      else
        dtime_best = ( dtime < dtime_best ? dtime : dtime_best );
    }

    diff = compare_matrices( m, n, c, cref);

    printf( "%d %le %le \n", p, gflops / dtime_best, diff );
    fflush( stdout );

    free( a );
    free( b );
    free( c );
    free( cold );
    free( cref );
  }

  printf( "];\n" );

  exit( 0 );
}

