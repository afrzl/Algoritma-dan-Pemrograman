program cetakAngka;
var
    i, j: integer;

begin
    for i := 1 to 5 do
        for j := 0 to 9 do
            begin
                write(j, ' ');
                if j = 9 then
                    writeln;
            end;
    readln;
end.