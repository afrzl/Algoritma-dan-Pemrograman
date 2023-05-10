program soal_2022_2;
uses crt;

var
    bilangan, n, jumlah: integer;

begin
    write('Masukkan N: '); readln(bilangan);
    n := bilangan;
    write('Deret untuk ', n, ': ');
    while(n <> 1) do begin
        if n mod 2 = 1 then
            n := 3*n + 1
        else
            n := round(n / 2);
        write(n, ' ');
        jumlah += 1;
    end;
    writeln;
    writeln('Jumlah suku untuk deret ', bilangan, ' = ', jumlah);
end.