var
    i, n, c : longint;

begin
    readln(n);
    c := 0;
    for i := 1 to n do begin
        c += i;
    end;
    writeln(c);
end.