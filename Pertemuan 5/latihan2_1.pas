Program rataRata;

var
    i, N, bilangan, total: integer;

begin
    write('Masukkan jumlah bilangan N: '); readln(N);
    i := 1;

    repeat
        begin
            write('Masukkan bilangan ke-', i, ': '); readln(bilangan);
            total += bilangan;
            i += 1;
        end;
    until (i > N);
    writeln(total / N:0:2);
end.