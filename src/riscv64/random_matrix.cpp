#include <random>
#include <time.h>

#define A( i,j ) a[ (i) * n + (j) ]

void random_matrix( int m, int n, float *a)
{
  static std::default_random_engine engine(time(nullptr));
  std::normal_distribution<float> dis(0.f, 1.f);
  int i,j;
  // std::generate_n(a, m * n, [&] { return dis(engine); });

  for ( i = 0; i < m; i++ )
    for ( j = 0; j < n; j++ )
      A(i, j) = dis(engine);
}
