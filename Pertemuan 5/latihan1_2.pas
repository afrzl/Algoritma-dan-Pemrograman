Program anakAyam;

var
    anak: integer;

begin
    write('Masukkan jumlah anak ayam: '); readln(anak);
    writeln('Anak Ayam Turun ', anak, sLineBreak);
    while anak >= 1 do
        begin
            if anak = 1 then
                writeln('Anak Ayam turun ', anak, ', mati satu tinggal induknya.')
            else
                writeln('Anak Ayam turun ', anak, ', mati satu tinggal ', anak - 1);
            anak -= 1;
        end;
end.