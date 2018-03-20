var n: int = 1
var prev: array[0..1, int] = [1, 1]
var sum: int = 0

while (n < 4000000):
  if (n mod 2 == 0):
    sum += n
  prev[0] = prev[1]
  prev[1] = n
  n = prev[0] + prev[1]
echo "The sum of all even terms in the Fibonacci sequence below 4,000,000 is ", sum