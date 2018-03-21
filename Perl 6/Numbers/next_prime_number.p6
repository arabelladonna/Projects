sub nextPrimeNumber {
  say "This program will return prime numbers one at a time until you decide to exit.";
  say "Press enter to get the first prime number. Type \"end\" to exit";
  print "> ";

  my $input = checkInput(get);
  return $input if !$input;

  my $lastPrime = 0;

  while True {
    my $i = $lastPrime + 1;

    loop {
      if (isPrime($i)) {
        say $i ~ " is the next prime number.";
        $lastPrime = $i;
        last;
      } else {
        $i += 1;
      }
    }

    say "Press enter to get the next prime number. Type \"end\" to exit";
    print "> ";
    $input = checkInput(get);
    return $input if !$input;
  }
}

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

sub checkInput($i) {
  if ($i.lc ~~ "end") {
    return False;
  } else {
    return True;
  }
}

nextPrimeNumber;
