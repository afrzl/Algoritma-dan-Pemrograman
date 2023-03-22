{
    NAMA        : MUH. NUR AFRIZAL
    KELAS / NO  : 1KS3 / 24
    NIM         : 222212738

    Buatlah program menggunakan statemen CASE-OF yang menerima masukan nama 
    hari (string) dan menuliskan mata kuliah yang diberikan pada hari tersebut,dengan 
    ketentuan sebagai berikut : 
    Senin mata kuliah yang diberikan Algoritma dan Pemrograman I 
    Selasa mata kuliah yang diberikan Kalkulus 
    Rabu mata kuliah yang diberikan Bahasa Indonesia 
    Kamis mata kuliah yang diberikan Pengantar Teknik Informasi 
    Jum’at mata kuliah yang diberikan Bahasa Inggris 
    Sabtu mata kuliah yang diberikan Basis Data
}

program tampilMatkul;
uses crt, sysutils; //library untuk clear screen dan lowercase/uppercase

var //deklarasi variabel
    nama_hari: string;

begin
    while (true) do
        begin
            clrscr;
            writeln('>>>>> PROGRAM MENENTUKAN MATA KULIAH <<<<<');
            write('>> Masukkan nama hari: '); readln(nama_hari); //input nama hari
            write('Mata kuliah hari ini adalah ');
            case LowerCase(nama_hari) of //pemilihan nama matkul bergantung dari variabel nama_hari yang diinput user
                'senin': writeln('Algoritma dan Pemrograman I');
                'selasa' : writeln('Kalkulus');
                'rabu' : writeln('Bahasa Indonesia');
                'kamis' : writeln('Pengantar Teknik Informasi');
                'jumat' : writeln('Bahasa Inggris');
                'sabtu' : writeln('Basis Data');
                else writeln('Masukan salah!');
            end;
            write(sLineBreak, '>> Apakah anda akan mengulang program kembali?? (Y/N): '); readln(nama_hari); //input user akan mengulang program atau tidak dengan meminjam variabel nama_hari karena sudah tidak terpakai lagi
            if not(UpperCase(nama_hari) = 'Y') then //jika user tidak memasukkan 'Y' atau 'y'
                begin
                    writeln('PROGRAM KELUAR. TERIMAKASIH.');
                    break; //menghentikan looping
                end;
        end;
end.