program faktorial;

var
    i, n, hasil: integer;

begin
    hasil := 1;
    write('Masukkan n: '); readln(n);
    write(n, '! = ');
    for i := 1 to n do
    begin
        if i <> n then
            write(i, ' x ')
        else
            write(i, ' = ');
        hasil := hasil * i;
    end;
    write(hasil);
end.