Program soal_2021_2;
uses crt, math;

var
    i, n, j: integer;
    huruf: char;

begin
    huruf := 'A';
    write('Masukkan input N: '); readln(n);
    for i := 1 to floor((n + 1) / 2) do begin
        for j := 1 to i do
            write(huruf:2);
        writeln;
        huruf := succ(huruf);
    end;
    for i := floor(n / 2) downto 1 do begin
        for j := 1 to i do
            write(huruf:2);
        writeln;
        huruf := succ(huruf);
    end;
end.