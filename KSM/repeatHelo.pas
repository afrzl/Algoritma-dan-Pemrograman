program cetakHalo;

var
    n: integer;

begin
    n := 1;
    repeat
        begin
            writeln('HALO');
            n := n + 1;
        end;
    until (n > 10);
    readln;
end.