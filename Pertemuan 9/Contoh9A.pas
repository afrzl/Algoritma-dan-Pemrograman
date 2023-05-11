{Contoh program yang menunjukkan identifier lokal yang
berlaku di dalam sub program tersebut saja}
Program Contoh9A;

var x,y:integer;

procedure subpro(a:integer);
    var b:integer;
    begin
        b:=a;
        writeln(b);
    end;

begin
    write(' Input nilai a= ');
    readln(a);
    subpro(a);
end.
