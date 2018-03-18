(1..100)>>.&{
  ($_ %% 15) ?? say "FizzBuzz" !! ($_ %% 5) ?? say "Buzz" !! ($_ %% 3) ?? say "Fizz" !! say $_ ;
}
