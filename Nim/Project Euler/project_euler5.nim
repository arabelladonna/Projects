var n: int = 20
var found: bool = false

while (not found):
  for i in countdown(20, 1):
    if (n mod i == 0):
      if (i == 1):
        found = true;
    else:
      break
  if (not found):
    n += 20

echo "The smallest positive number that is evenly divisible by all numbers from 1 to 20 is ", n