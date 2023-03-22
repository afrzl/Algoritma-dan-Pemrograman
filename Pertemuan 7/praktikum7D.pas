{Contoh Program Continue} 
Program Contoh72; 
var
    i: integer; 
begin
    i := 0;
    repeat
        i += 1;
        if i = 4 then continue;
        writeln('Coba continue', i);
    until (i >= 6);
    readln;
end.