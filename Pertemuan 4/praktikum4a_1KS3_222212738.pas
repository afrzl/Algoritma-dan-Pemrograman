{
    NAMA        : MUH. NUR AFRIZAL
    KELAS / NO  : 1KS3 / 24
    NIM         : 222212738

    Buatlah  program  untuk  menentukan  bonus  pegawai,  berdasarkan  ketentuan  yang 
    diberikan oleh bagian personalia dan keuangan sebagai berikut:  
    • Pegawai  perusahaan  digolongkan  menjadi  dua  golongan,  yaitu  staf  dan  non 
    staf.  
    • Staf yang telah bekerja paling tidak 5 tahun, akan mendapatkan bonus sebesar 
    1  juta  rupiah  dengan  syarat  bahwa  umurnya  sudah  mencapai  50  tahun. 
    Namun, jika umurnya kurang dari 50 tahun akan mendapat bonus Rp. 500.000. 
    • Staf yang bekerja kurang dari 5 tahun, berapapun umurnya, hanya mendapat 
    bonus sebesar Rp. 300.000.  
    • Pegawai non staf akan mendapat bonus sebesar Rp. 400.000 jika telah bekerja 
    lebih dari 5 tahun dan berumur lebih dari 50 tahun.
}

Program bonusPegawai;
uses crt, sysutils; //library untuk clearscreen dan thousand separator

var //pendefinisian variabel
    golongan: string;
    waktu_kerja: Byte;
    umur: Byte;
    bonus: longWord;

begin
    while (true) do //program akan looping terus-menerus jika masukkan akhir 'Y' atau 'y'
        begin
            clrscr;
            writeln('>>>> SELAMAT DATANG DI PROGRAM BONUS PEGAWAI <<<<<', sLineBreak);
            write('>> Masukkan golongan (staf / non staf) : '); readln(golongan);
            write('>> Masukkan lama bekerja (tahun) : '); readln(waktu_kerja);
            write('>> Masukkan umur (tahun) : '); readln(umur);
            if (golongan = 'staf') or (golongan = 'non staf') then //jika golongan = staf atau non staf untuk pembeda print di line 57
                begin
                    if golongan = 'staf' then //jika golongan = staf
                        begin
                            if waktu_kerja >= 5 then //jika waktu kerja >= 5 tahun
                            begin
                                if umur >= 50 then //jika umur >= 50 tahun
                                    bonus := 1000000
                                else //jika umur < 50 tahun
                                    bonus := 500000
                            end
                            else //jika waktu kerja < 5 tahun
                                bonus := 300000
                        end
                        else if golongan = 'non staf' then //jika golongan = non staf
                        begin
                            if (waktu_kerja > 5) and (umur > 50) then //jika waktu kerja > 5 tahun dan umur > 50 tahun
                                bonus := 400000
                            else //jika waktu kerja <= 5 tahun dan umur <= 50 tahun
                                bonus := 0
                        end;
                    writeln('Bonus sebesar : ', format('%.0n',[double(bonus)])); //memformat bonus dengan thousand separator
                end
            else
                writeln('Masukan salah!'); //jika golongan != staf atau non staf
            write(sLineBreak, '>> Apakah anda akan mengulang program kembali?? (Y/N): '); readln(golongan); //input user akan mengulang program atau tidak dengan meminjam variabel golongan karena sudah tidak terpakai lagi

            if not(UpperCase(golongan) = 'Y') then //jika user tidak memasukkan 'Y' atau 'y'
                begin
                    writeln('PROGRAM KELUAR. TERIMAKASIH.');
                    break; //menghentikan looping
                end;
        end;
end.