var
    a, b: integer;

begin
    a := 13; b := 1;
    while(a < 20) do begin
        a := a + b;
        b := b + 1;
    end;
    writeln(a, ' ', b);
end.