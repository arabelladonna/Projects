proc start=
    int i,n,fnow,fnext,tempf
    n:=0
    fnow:=0
    fnext:=1

    if nsysparams>1 then
        n:=strtoint(sysparams[2])
    else
        n:=10
    fi

    i:=n
    
    while i>0 do
        tempf:=fnow+fnext
        fnow:=fnext
        fnext:=tempf
        i-:=1
    od

    println "Element",n,"of the Fibonacci Sequence is",fnext
end