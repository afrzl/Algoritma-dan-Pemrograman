program soal_2022_1;
uses crt;

var
    x, y, hasil: integer;

begin
    hasil := 0;
    write('Masukkan nilai x dan y: '); readln(x, y);
    repeat begin
        if (x mod 2 = 1) then
            hasil := hasil + y;
        x := x div 2;
        y := y * 2;
    end
    until(x > 0);
    writeln('Hasil: ', hasil);
end.