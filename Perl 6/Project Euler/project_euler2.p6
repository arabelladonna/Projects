my $n = 1;
my @prev = 1, 1;
my $total = 0;

while $n < 4000000 {
  if $n %% 2 {
    $total += $n;
  }

  @prev[0] = @prev[1];
  @prev[1] = $n;
  $n = @prev.sum;
}

say "The total value of all even-valued terms in the Fibonacci sequence whose values do not exceed four million is " ~ $total;
