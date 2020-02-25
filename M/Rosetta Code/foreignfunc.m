import clib
import mlib

importdll msvcrt =
    clang function  "_strdup"       (ref char)ref char
end

proc start=
    []char str
    ref char str2
    strcpy(&.str,"hello strdup")
    str2:=_strdup(&.str)
    println str2
    pcm_freestr(str2)
end