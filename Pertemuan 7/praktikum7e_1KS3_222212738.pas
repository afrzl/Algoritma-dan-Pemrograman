program nestedLoop;
uses crt;

var
    n, i, j: integer;

begin
    clrscr;
    write('Masukkan N: '); readln(n);
    for i := 1 to n do //looping dari 1 to n
        for j := 1 to n - 1 do //looping dari 1 to n - 1
            writeln(i:4, j:4); //print i dan j
end.