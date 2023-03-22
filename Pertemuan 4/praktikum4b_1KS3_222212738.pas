{
    NAMA        : MUH. NUR AFRIZAL
    KELAS / NO  : 1KS3 / 24
    NIM         : 222212738

    2. Buatlah program untuk mengetahui denda jika perpustakaan kampus menerapkan 
        aturan peminjaman buku sebagai berikut: 
        • Koleksi buku-buku teks terbagi ke dalam kelompok langka(jumlah koleksi ≤ 3 
        eksemplar) dan bukan kelompok langka. 
        • Jumlah buku yang bisa dipinjam untuk setiap peminjaman dibatasi maksimal 
        3 judul buku. 
        • Jika koleksi yang dipinjam tergolong ke dalam kelompok langka (jumlah 
        koleksi ≤ 3 eksemplar), maka lama peminjaman dibatasi maksimal 3 hari. 
        Keterlambatan pengembalian untuk 4 hari pertama dikenakan denda Rp 
        1.000 per hari, 3 hari berikutnya dikenakan Rp. 2.500 per hari dan hari-hari 
        berikutnya dikenakan denda Rp 5.000 per hari. 
        • Jika koleksi yang dipinjam tidak tergolong ke dalam kelompok langka, maka 
        lama peminjaman dibatasi maksimal 7 hari. Keterlambatan pengembalian 
        dikenakan denda Rp. 500 per hari.
}

program dendaPerpustakaan;
uses crt, sysutils; ////library untuk clearscreen dan thousand separator

const
    MAX_DIPINJAM = 3; //const buku maksimal dipinjam

var
    buku_dipinjam: array[0..2, 0..1] of longWord; //[*, 0..2] buku 1-3. [0..2, *] lama peminjaman, denda
    golongan_buku: string; //menyimpan golongan buku apakah langka atau tidak
    hari_buku_dipinjam_temp, i: Byte; //menyimpan jml hari sementara (temporary)
    total_denda: longWord; //sum of buku_dipinjam[*, 2]
    pilihan: char; //pilihan tambah buku

begin
    while (true) do
        begin
            clrscr;
            writeln('>>>>> PROGRAM PENGHITUNGAN DENDA KETERLAMBATAN PENGEMBALIAN BUKU PERPUSTAKAAN <<<<<');
            total_denda := 0; //initialize total denda pertama = 0
            for i := 0 to MAX_DIPINJAM - 1 do //perulangan sampai max_dipinjam - 1
                begin
                    while(true) do //input langka atau tidaknya buku
                        begin
                            write(sLineBreak, '>> Masukkan golongan buku ', i + 1,' (langka atau tidak): '); readln(golongan_buku);
                            if ((LowerCase(golongan_buku) = 'langka') or (LowerCase(golongan_buku) = 'tidak')) then
                                break
                            else
                                writeln('Masukkan salah!');
                        end;
                    write('>> Masukkan hari meminjam buku ', i + 1,': '); readln(buku_dipinjam[i, 0]);

                    hari_buku_dipinjam_temp := buku_dipinjam[i, 0]; //input jml hari buku ke-i ke temporary
                    if golongan_buku = 'langka' then //buku langka
                        begin
                            hari_buku_dipinjam_temp -= 3;
                            if hari_buku_dipinjam_temp > 0 then //peminjaman > 3 hari
                                begin
                                    if hari_buku_dipinjam_temp - 4 > 0 then //peminjaman > 7 hari
                                        begin
                                            buku_dipinjam[i, 1] += 4 * 1000;
                                            hari_buku_dipinjam_temp -= 4;
                                            if hari_buku_dipinjam_temp - 3 > 0 then //peminjaman > 10 hari
                                                begin
                                                    buku_dipinjam[i, 1] += 3 * 2500;
                                                    hari_buku_dipinjam_temp -= 3;
                                                    buku_dipinjam[i, 1] += hari_buku_dipinjam_temp * 5000;
                                                end
                                            else //7 < peminjaman buku <= 10
                                                buku_dipinjam[i, 1] += hari_buku_dipinjam_temp * 2500;
                                        end
                                    else //3 < peminjaman buku <= 7
                                        buku_dipinjam[i, 1] := hari_buku_dipinjam_temp * 1000;
                                end
                            else //peminjaman buku <= 3
                                buku_dipinjam[i, 1] := 0;   
                        end
                    else //bukan buku langka
                    begin
                        hari_buku_dipinjam_temp -= 7; //batas min untuk denda
                        if hari_buku_dipinjam_temp > 0 then //peminjaman > 7 hari
                            buku_dipinjam[i, 1] := hari_buku_dipinjam_temp * 500
                        else
                            buku_dipinjam[i, 1] := 0;        
                    end;
                    total_denda += buku_dipinjam[i, 1];
                    if i < MAX_DIPINJAM - 1 then
                        begin
                            write('>> Apakah anda akan meminjam buku lagi? (Y/N): '); readln(pilihan); //pilihan keluar dari looping atau tidak
                            if not(UpperCase(pilihan) = 'Y') then
                                break;
                        end;
                end;
            clrscr;
            writeln('>>> RINCIAN TOTAL DENDA <<<', sLineBreak);
            for i := 0 to MAX_DIPINJAM do
                begin
                    if not(buku_dipinjam[i, 1] = 0) then
                        writeln('Denda buku ', i + 1 ,': Rp', format('%.0n',[double(buku_dipinjam[i, 1])])); //print denda perbuku
                end;
            writeln(sLineBreak, '==> Total denda anda sebesar Rp', format('%.0n',[double(total_denda)])); //print total denda
            write(sLineBreak, '>> Apakah anda akan mengulang program kembali?? (Y/N): '); readln(pilihan); //input user akan mengulang program atau tidak dengan meminjam variabel pilihan karena sudah tidak terpakai lagi

            if not(UpperCase(pilihan) = 'Y') then //jika user tidak memasukkan 'Y' atau 'y'
                begin
                    writeln('PROGRAM KELUAR. TERIMAKASIH.');
                    break; //menghentikan looping
                end;
        end;
end.