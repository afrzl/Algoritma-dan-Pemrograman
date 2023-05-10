Program Belajar_fungsi; 

var n, hasil :integer;

Function Pangkat2:integer; 
    begin
        Pangkat2:=n*n; 
    end;

begin 
    write(' N= ');readln(n);
    hasil:= Pangkat2; 
    writeln(' Pangkat 2 dari ',n,'= ',hasil); 
    readln; 
end.