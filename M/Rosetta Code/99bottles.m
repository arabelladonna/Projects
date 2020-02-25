import clib

proc start=
    for i:=99 downto 1 do
        []char b
        strcpy(&.b,(i=1|"bottle"|"bottles"))
        
        println i,&.b,"of beer on the wall"
        println i,&.b,"of beer"
        println "take one down, pass it around"
        println i-1,&.b,"of beer on the wall"
    od
end