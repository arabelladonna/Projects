var sum: int = 0;

for i in 1..<1000:
  if (i mod 3 == 0 or i mod 5 == 0):
    sum += i

echo "The sum of all multiples of 3 or 5 below 1000 is ", sum