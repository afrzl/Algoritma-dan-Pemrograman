{ Contoh program yang menunjukkan identifier global dapat
digunakan baik di dalam sub program atau di program utama
setelah dideklarasikan}
Program Contoh9C;

procedure subpro(a:integer);
    begin
        x:=a+4;
        writeln(' x= ',x);
    end;
    
var x,y:integer;
    
begin
    write(' Input nilai y= ');
    readln(y);
    subpro(y);
end.