Program Penugasan2;
uses crt;

type
    matriks_type = array[0..2, 0..2] of integer;

function perkalian(savedMatriks: matriks_type):matriks_type;
    var
        matriksA: matriks_type;

    begin
        clrscr;
        writeln('Masukkan matriks A: ');
        for i := 0 to 2 do
            for j := 0 to 2 do begin
                write('Matriks A[', i, ', ', j, ']'); readln()
            end;
                
    end;

var
    pilihan: byte;
    matriksHasil: matriks_type;

begin
    repeat
        clrscr;
        writeln('Selamat datang di aplikasi kalkulator matriks sederhana');
        writeln('Silahkan pilih menu berikut: ');
        writeln('1. Perkalian matriks');
        writeln('2. Determinan matriks');
        writeln('3. Transpose matriks');
        writeln('4. Invers matriks');
        writeln('6. Keluar');
        write('>>Pilih menu: '); readln(pilihan);
        case pilihan of
            1: perkalian
        end;
    until (pilihan = 6);
end.