program cetakNAngkaMenurun;

var
    n, angka: integer;

begin
    write('Masukkan angka: '); readln(n);
    for angka := n downto 1 do
        writeln(angka);
end.