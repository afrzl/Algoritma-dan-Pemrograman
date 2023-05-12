{
    Buatlah program yang menghitung Faktorial, Permutasi dan Kombinasi dimana pada 
    subprogram permutasi dalam proses penghitungannya menggunakan sub program 
    faktorial dan sub program kombinasi menggunakan permutasi. 
    Simpan program dengan nama kelas_nim_praktikum9c.pas. 
}

Program Penugasan3;
uses crt;

var
    menu: byte;
    x, y, hasil: longInt;

function faktorial(angka: longInt):longInt;
begin
    if angka = 0 then
        faktorial := 1
    else
        faktorial := angka * faktorial(angka - 1);
end;

function permutasi(x, y: longInt):longInt;
begin
    permutasi := faktorial(x) div faktorial(x - y);
end;

function kombinasi(x, y: longInt):longInt;
begin
    kombinasi := permutasi(x, y) div faktorial(y);
end;

begin
    menu := 0;
    while(menu <> 3) do begin
        clrscr;
        writeln('Selamat datang di Kalkulator Sederhana');
        writeln('Silahkan pilih menu berikut: ');
        writeln('1. Permutasi'); 
        writeln('2. Kombinasi');
        writeln('3. Keluar');
        writeln();

        write('Pilihan Anda (1-3): '); readln(menu);
        writeln();

        if menu <> 3 then begin
            write('Masukkan angka pertama: '); readln(x);
            write('Masukkan angka kedua: '); readln(y);
            if y > x then continue;
        end;
        
        case menu of
            1: hasil := permutasi(x, y);
            2: hasil := kombinasi(x, y);
            3: exit;
            else exit;
        end;
        writeln('Hasil = ', hasil);
        readln();
    end;
end.