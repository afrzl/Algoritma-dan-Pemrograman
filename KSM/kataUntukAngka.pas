Program kataUntukAngka;

var
    A: integer;

begin
    write('Masukkan angka: '); readln(A);
    case A of
        1: write('Satu');
        2: write('Dua');
        3: write('Tiga');
        4: write('Empat');
        else write('Angka yang dimasukkan salah');
    end;
end.