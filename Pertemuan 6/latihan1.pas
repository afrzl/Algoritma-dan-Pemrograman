Program pangkat;

var
    a, n, i, hasil: integer;

begin
    hasil := 1;
    write('Masukkan a: '); readln(a);
    write('Masukkan n: '); readln(n);

    write(a, '^', n, ' = ');
    for i := 1 to n do
    begin
        if i <> n then
            write(a, ' x ')
        else
            write(a, ' = ');
        hasil := hasil * a;
    end;
    write(hasil);
end.