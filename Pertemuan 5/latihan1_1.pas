Program jmlDeret;

var
    N, total: integer;

begin
    total := 0;
    write('Masukkan nilai N: '); readln(N);
    while N >= 1 do
        begin
            total += N;
            N -= 1;
        end;
    writeln('Jumlah deret = ', total);

end.