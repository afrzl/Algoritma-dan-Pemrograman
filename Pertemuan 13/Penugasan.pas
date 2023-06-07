Program penugasan;
uses crt;

type 
    mhs_type = record 
        nim: string[9]; 
        nama: string[255];
        kelas: string[4];
        nilai_alpro: byte;
    end;

var
    i, j: integer;
    data_mhs: mhs_type; 
    menu: byte;

begin
    repeat
        writeln('Selamat Datang di Program Entri Mahasiswa');
        writeln('1. Input Data');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terkecil');
        writeln('4. Nilai Alpro Terbesar');
        writeln('5. Rata-rata Nilai Alpro');
        writeln('6. Cari Nilai Mahasiswa');
        writeln('7. Urutkan Berdasarkan Nama');
        writeln('8. Urutkan Berdasarkan Nilai Alpro');
        writeln('9. Keluar');
        write('>> Masukkan Menu: '); readln(menu);
        case menu of
            
        end;
    until (menu = 9);
end.