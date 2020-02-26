proc start=
    for i:=1 to 20 do
        (i rem 15=0 | println "FizzBuzz" | (i rem 7=0 | println "Baxx" | (i rem 5=0 | println "Buzz" | (i rem 3=0 | println "Fizz" | println i))))
    od
end