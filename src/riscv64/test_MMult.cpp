#include <stdio.h>
// #include <malloc.h>
#include <stdlib.h>

#include "parameters.h"

void REF_MMult(int, int, int, float *, float *, float *);
void MY_MMult(int, int, int, float *, float *, float *);
void copy_matrix(int, int, float *, float *);
void random_matrix(int, int, float *);
double compare_matrices( int, int, float *, float *);
void print_matrix( int m, int n, float *a);

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
    n = ( N == -1 ? p + 32: N );
    k = ( K == -1 ? p + 16 : K );

    gflops = 2.0 * m * n * k * 1.0e-09;

    lda = ( LDA == -1 ? k : LDA );
    ldb = ( LDB == -1 ? n : LDB );
    ldc = ( LDC == -1 ? n : LDC );

    /* Allocate space for the matrices */
    /* Note: I create an extra column in A to make sure that
       prefetching beyond the matrix does not cause a segfault */
    a = ( float * ) malloc( m * (k+1) * sizeof( float ) );
    b = ( float * ) malloc( k * ldb * sizeof( float ) );
    c = ( float * ) malloc( m * ldc * sizeof( float ) );
    cold = ( float * ) malloc( m * ldc * sizeof( float ) );
    cref = ( float * ) malloc( m * ldc * sizeof( float ) );

    /* Generate random matrices A, B, Cold */
    random_matrix( m, k, a);
    // print_matrix(m, k, a);
    random_matrix( k, n, b);
    // print_matrix(k, n, b);
    random_matrix( m, n, cold);

    copy_matrix( m, n, cold, cref);

    /* Run the reference implementation so the answers can be compared */

    REF_MMult( m, n, k, a, b, cref);
    // print_matrix(m, n, cref);
    /* Time the "optimized" implementation */
    for ( rep=0; rep<NREPEATS; rep++ ){
      copy_matrix( m, n, cold, c);

      /* Time your implementation */
      dtime = dclock();

      MY_MMult( m, n, k, a, b, c);
      // print_matrix(m, n, c);

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

