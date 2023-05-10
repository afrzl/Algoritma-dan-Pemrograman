program Soal_2021_3b;
uses crt;

var
    i, n: integer;

begin
    write('Masukkan N: '); readln(n);
    for i := 1 to n do
        write(i:2);
    for i := n - 1 downto 1 do
        write(i:2);
end.