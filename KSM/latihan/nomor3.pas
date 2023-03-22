var
    i, j, n, r, c, d : longint;
begin
    readln(n, r);
    c := 0;
    for i := 1 to n do begin
        d := 1;
        for j := 1 to i do begin
            d := d * r;
        end;
        c += d;
    end;
    writeln(c);
end.