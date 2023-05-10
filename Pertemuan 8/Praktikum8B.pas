Program Belajar_fungsi; 

var n,hasil:integer; 

Function Pangkat2(a:integer):integer; 
    begin
        Pangkat2:=a*a; 
    end; 

begin 
    write(' N= '); readln(n); 
    hasil:=pangkat2(n);
    writeln(' Pangkat 2 dari ',n,'= ',hasil); 
    readln
end.