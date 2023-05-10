program segitiga_pascal;
uses crt;

var
    i, j, n, a: integer;

begin
    clrscr;

    write ('Masukan Jumlah Baris. N = '); readln(n);
    for i := 0 to n do begin
        a := 1;
        for j := 0 to n-i do
            write ('':3);

        for j := 0 to i do 
            begin
                write (a:6, '');
                a := a * (i-j) div (j+1);
            end;
        writeln;
    end;
end.