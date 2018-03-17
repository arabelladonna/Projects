my $count = 0;
my $num;
my $orig;

sub collatz {
  while True {
    $count = 0;

    say "This program will calculate how many steps it takes to reach 1 using the Collatz conjecture.";
    print "Enter a number that is greater than 1 (enter 0 to quit): ";

    $num = get;
    $orig = $num;

    $num = check_num($num);

    while $num < 0 {
      say "You must enter a number that is greater than 1.";
      print "Enter a number that is greater than 1 (enter 0 to quit): ";
      $num = get;
    }

    $num = check_num($num);

    if $num == 0 {
      return False;
    }

    while $num != 1 {
      if $num %% 2 {
        $num = $num / 2;
      } else {
        $num = ($num * 3) + 1;
      }
      $count += 1;
    }

    say "\nYou started with " ~ $orig ~ " and it took " ~ $count ~ " steps to reach 1.\n";
  }
}

sub check_num($n) {
  while !((+$n).WHAT ~~ Int) {
    say "You must enter an integer.";
    print "Enter a number that is greater than 1 (enter 0 to quit): ";
    $n = get;
  }

  return $n;
}

collatz;
