import strutils as su

echo "Enter a number greater than 1: "

var input: string = readLine(stdin)

if (not su.isDigit(input)):
  echo "ERROR: You must enter a number."
  quit()

let num: int = parseInt(input)

var count = 0
var n: int = num

if (n > 1):
  while (n != 1):
    if (n mod 2 == 0):
      n = n div 2
    else:
      n = (n * 3) + 1
    count += 1
  echo "You started with the number ", num, " and it took ", count, " steps to get to 1."
else:
  echo "ERROR: You must enter a number that is greater than 1."
