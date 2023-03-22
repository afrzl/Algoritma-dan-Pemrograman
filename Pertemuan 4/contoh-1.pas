program  struktur_if_then;  
uses crt; 
var 
    nilai:  integer;  
begin 
    clrscr; 
    nilai  :=  100; 
    if  (nilai  >  50)  then  
    begin 
        writeln('Nilai  "UTS"  lebih  besar  dari  50');       
    end;  
    writeln('Mahasiswa D-III Statistika Polstat STIS'); 
    readln;  
end.