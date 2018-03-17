my @a;
@a.push(0).push(1);

sub fibonacci {
  while True {
    say "This program will calculate the Fibonacci sequence up to the Nth number.";
    print "Enter a number (enter 0 to quit): ";

    my $n = get;
    my $i = 1;

    while !((+$n).WHAT ~~ Int) {
      say "You must enter an integer.";
      print "Enter a number (enter 0 to quit): ";
      $n = get;
    }

    if $n == 0 {
      return False;
    }

    say $i;

    while $i < $n {
      @a[$i+1] = @a[$i-1] + @a[$i];
      say @a[$i+1];
      $i++;
    }
  }
}

fibonacci;
