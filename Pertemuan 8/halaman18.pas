Program halaman18;

var
    x, y, z: integer;

procedure Hitung(Var a, b, c: integer);
begin
    c := a + b;
end;

begin
    x := 2; y := 3;
    Hitung(x, y, z);
    writeln('X = ', x, ', Y = ', y, ', Z = ', z);
end.