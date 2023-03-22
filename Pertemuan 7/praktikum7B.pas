{Contoh Program Break} 
Program Contoh71; 
var
    i: integer; 
begin 
    i := 1;
    while(i <= 6) do begin
        if (i = 4) then break;
        writeln('Coba Break ', i);
        i += 1;
    end;
    readln;
end. 
