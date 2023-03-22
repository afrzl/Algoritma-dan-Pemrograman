Program tabelFC;

var
    i: integer;

begin
    writeln('TABEL HARGA FOTOKOPI');
    writeln('|---------|--------|');
    writeln('|LEMBAR   |HARGA   |');
    writeln('|---------|--------|');
    i := 1;
    repeat
        begin
            writeln('|', i:9, '|', 125*i:8, '|');
            i += 1;
        end;
    until (i > 100);
    writeln('|---------|--------|');
end.