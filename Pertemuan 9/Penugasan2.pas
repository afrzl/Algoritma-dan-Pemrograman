{
    2) Buat program kalkulator dengan fungsi KABATAKU(kali, bagi, tambah, kurang) 
    dimana saat program dijalankan, yang pertama muncul adalah menu seperti di 
    bawah ini: 

    Selamat datang di Kalkulator Sederhana 
    Silahkan pilih menu berikut: 
    1. Penjumlahan 
    2. Pengurangan 
    3. Perkalian 
    4. Pembagian 
    5. Keluar 
    Pilihan Anda:  

    untuk menu 1-4, buat dengan menggunakan sub program. 
    Simpan program dengan nama kelas_nim_praktikum9b.pas.
}

Program Penugasan2;
uses crt;

var
    menu: byte;
    x, y, hasil: real;

function penjumlahan(x, y: real):real;
begin
    penjumlahan := x + y;
end;

function pengurangan(x, y: real):real;
begin
    pengurangan := x - y;
end;

function perkalian(x, y: real):real;
begin
    perkalian := x * y;
end;

function pembagian(x, y: real):real;
begin
    pembagian := x / y;
end;

begin
    hasil := 0;
    menu := 0;
    while(menu <> 6) do begin
        clrscr;
        writeln('Selamat datang di Kalkulator Sederhana');
        writeln('Silahkan pilih menu berikut: ');
        writeln('1. Penjumlahan'); 
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian');
        writeln('5. Delete history');
        writeln('6. Keluar');
        writeln();
        if hasil <> 0 then writeln('History = ', hasil:0:2);

        write('Pilihan Anda (1-6): '); readln(menu);
        writeln();

        if (menu <> 5) and (menu <> 6) then begin
            if hasil = 0 then begin
                write('Masukkan angka pertama: '); readln(x);
            end
            else x := hasil;
            write('Masukkan angka kedua: '); readln(y);
        end;
        
        case menu of
            1: hasil := penjumlahan(x, y);
            2: hasil := pengurangan(x, y);
            3: hasil := perkalian(x, y);
            4: hasil := pembagian(x, y);
            5: hasil := 0;
            6: exit;
            else exit;
        end;
    end;
end.