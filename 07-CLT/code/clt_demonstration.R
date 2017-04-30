CLT_unif = function(rep, n, a, b){
  results = c();
  means = c();
  for(i in 1:rep)
  {
    x = runif(n, a, b);
    results[i] = (mean(x) - (a + b)/2)/sqrt((b - a)^2/12)*sqrt(n);
    means = c(means, mean(x));
  }
  qqnorm(results);
  qqline(results, col = 'red');
}
CLT_unif(500, 10, 1, 10);