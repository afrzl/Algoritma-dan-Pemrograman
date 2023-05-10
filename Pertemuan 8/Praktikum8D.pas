Program Belajar_Prosedur; 

var n,hasil:integer; 

Procedure Pangkat2(a:integer); 
    begin 
        hasil:=a*a; 
    end;

begin 
    write(' N= ');readln(n); 
    pangkat2(n); 
    writeln(' Pangkat 2 dari ',n,'= ',hasil); 
    readln 
end.