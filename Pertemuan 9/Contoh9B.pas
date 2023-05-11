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

function subpro2(c:integer): integer;
    begin
        b:=c;
        writeln(b);
    end;

begin
    write(' Input nilai a= ');
    readln(a);
    subpro1(a);
    subpro2(25);
end.
