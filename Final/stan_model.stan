
functions {
  matrix cubic_spline_basis(vector x, vector knots) {
    int N = rows(x);
    int K = rows(knots);
    matrix[N, K + 3] B;
    vector[N] x_shifted = x - knots[1];
    for (i in 1:N) {
      for (j in 1:K) {
        if (x[i] >= knots[j] && x[i] < knots[j + 1]) {
          B[i, j] = pow(x_shifted[i], 3) - 4 * pow(x_shifted[i] - knots[j], 3) * (x[i] > knots[j]);
        } else if (x[i] >= knots[j + 1] && x[i] < knots[j + 2]) {
          B[i, j] = pow(knots[j + 2] - knots[1], 3) - 4 * pow(x_shifted[i] - knots[j + 1], 3);
        } else {
          B[i, j] = 0;
        }
      }
      B[i, K + 1] = x_shifted[i] * x_shifted[i];
      B[i, K + 2] = x_shifted[i];
      B[i, K + 3] = 1;
    }
    return B;
  }
}
data {
  int<lower=0> N;
  vector[N] x;
  vector[N] y;
  int<lower=0> K;
  vector[K] knots;
}
transformed data {
  matrix[N, K + 3] B = cubic_spline_basis(x, knots);
}
parameters {
  vector[K + 3] w;
  real a;
  real<lower=0> sigma;
}
model {
  y ~ lognormal(a + B * w, sigma);
}
