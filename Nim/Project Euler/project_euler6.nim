import math

var s, sq = 0

for i in 1..100:
  s += math.`^`(i, 2)
  sq += i

sq = math.`^`(sq, 2)

echo "The difference between the square of the sums of the first 100 natural numbers and the sum of their squares is ", sq - s