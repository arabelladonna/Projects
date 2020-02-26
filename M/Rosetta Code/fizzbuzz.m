proc start=
    for i:=1 to 100 do
        (i rem 15=0 | println "FizzBuzz" | (i rem 5=0 | println "Buzz" | (i rem 3=0 | println "Fizz" | nil)))
    od
end