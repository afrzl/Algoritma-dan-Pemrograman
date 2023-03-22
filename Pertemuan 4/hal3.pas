program struktur_if_then_else;  
uses crt;

var 
    nilai:  integer;  

begin 
    clrscr;  
    nilai  :=  45; 
    if  (nilai  >  50)  then  
    begin 
        writeln('Nilai  "UTS"  lebih  besar  dari  50');      
    end 
    else 
    begin 
        writeln('Nilai  "UTS"  lebih  kecil  dari  50');     
    end;
    readln;  
end.