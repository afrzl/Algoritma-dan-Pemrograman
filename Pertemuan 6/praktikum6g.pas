program bintang;

var
    n, i, j: integer;

begin
    write('Masukkan N: '); readln(n);
    for i := 1 to n do
        begin
            for j := 1 to i do
                write('*');
            writeln();
        end;
        
end.