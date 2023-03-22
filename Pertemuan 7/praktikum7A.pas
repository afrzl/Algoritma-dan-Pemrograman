{Contoh Program Break} 
Program Contoh71; 
var
    i:integer; 
begin 
    for i:=1 to 6 do begin 
        if (i=4) then break; 
        writeln('Coba Break ',i); 
    end; 
    readln;
end. 
