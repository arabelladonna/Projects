proc start=
    int sum:=0

    for i:=0 to 999 do
        if i rem 3=0 or i rem 5=0 then
            sum+:=i
        fi
    od

    println sum
end