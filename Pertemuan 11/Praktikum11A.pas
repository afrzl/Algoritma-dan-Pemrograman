type 
    struktur_mahasiswa = record 
        nim : string[10]; 
        nama : string[25]; 
        alamat : string[20]; 
        nilai : longint; 
    end; 
var 
    mahasiswa : struktur_mahasiswa; 
begin
    mahasiswa.nim := '235121'; 
    mahasiswa.nama := 'Upin Ipin'; 
    mahasiswa.alamat:= 'Jl. Otista no 64c'; 
    mahasiswa.nilai:=98; 
    writeln('NIM  :',mahasiswa.nim); 
    writeln('Nama :',mahasiswa.nama); 
    writeln('Alamat  :',mahasiswa.alamat); 
    writeln('Nilai  :',mahasiswa.nilai); 
    readln; 
end.