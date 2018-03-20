my $largestPrime = 600851475143;

loop (my $i = Int(sqrt(600851475143)); $i > 0; $i--) {
  if isPrime($i) && 600851475143 %% $i {
    $largestPrime = $i;
    last;
  }
}

say $largestPrime ~ " is the largest prime factor of the number 600851475143.";

sub isPrime($n) {
  return False if $n <= 1;
  return True if $n <= 3;
  return False if $n %% 2 || $n %% 3;

  my $i = 5;
  while $i ** 2 <= $n {
    if $n %% $i || $n %% ($i + 2) {
      return False;
    }
    $i = $i + 6;
  }
  return True;
}
