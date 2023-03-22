program cetak_angka;

var
    n, i, j: integer;

begin
    write('Masukkan N: '); readln(n);
    for i := n downto 1 do
        begin
            for j := 1 to i do
                write(j, ' ');
            writeln();
        end;
end.