program cetak_angka;

var
    i, j: integer;

begin
    for i := 1 to 5 do
        if i mod 2 = 0 then
            begin
                for j := 9 downto 0 do
                    begin
                        write(j,' ');
                        if j = 0 then
                            writeln;
                    end;
            end
        else
            begin
                for j := 0 to 9 do
                begin
                    write(j,' ');
                    if j = 9 then
                        writeln;
                end;
            end;
    readln;
end.