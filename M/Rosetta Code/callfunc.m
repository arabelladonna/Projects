proc start=
    int num:=0
    printx(add1(num))
end

!functions can be declared "out of order"
!functions defined with "function" return a value

function add1(int x)int=
    return x+1
end

!functions defined with "proc" do not return a value

proc printx(int x)=
    println "x is",x
end