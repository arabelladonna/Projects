proc start=
    for i:=99 downto 1 do
        println i,(i=1|"bottle"|"bottles"),"of beer on the wall"
        println i,(i=1|"bottle"|"bottles"),"of beer"
        println "take one down, pass it around"
        println i-1,(i-1=1|"bottle"|"bottles"),"of beer on the wall"
    od
end