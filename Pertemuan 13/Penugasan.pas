Program penugasan;
uses crt;

type 
    mhs_type = record 
        nim: string[10]; 
        nama: string[255];
        kelas: string[4];
        nilai_alpro: byte;
    end;
    arr_mhs = array[0..99] of mhs_type;
    pilihan_type = (Ya, Tidak);

function SequentialSearch(data_mhs: arr_mhs; N: integer; nama_dicari: string): integer; FORWARD;

procedure cetakMahasiswa(data_mhs: arr_mhs; i: integer);
    begin
        with data_mhs[i] do begin
            writeln('   NIM: ', nim);
            writeln('   NAMA: ', nama);
            writeln('   KELAS: ', kelas);
            writeln('   NILAI ALPRO: ', nilai_alpro);
        end;
        writeln;
    end;

procedure inputData(var data_mhs: arr_mhs; var N: integer; var isInput: boolean);
    var
        pilihan: pilihan_type;

    begin
        clrscr;
        isInput := true;
        N += 1;
        writeln('Silahkan masukkan data dibawah ini');
        while (true) do begin
            with data_mhs[N] do begin
                write('NIM: '); readln(nim); 
                write('NAMA: '); readln(nama);
                write('KELAS: '); readln(kelas); 
                write('NILAI ALPRO: '); readln(nilai_alpro); 
            end;
            if SequentialSearch(data_mhs, N, data_mhs[N].nama) = N then
                break
            else
                writeln('>> Nama sudah dipakai di data lain. Silahkan input nama lain.');
        end;
        write('>> Apakah anda akan menambahkan mahasiswa lagi? (Ya/Tidak): '); readln(pilihan);
        if pilihan = Ya then begin
            inputData(data_mhs, N, isInput);
        end;
    end;

procedure tampilkanData(var data_mhs: arr_mhs; var N: integer);
    var
        i: integer;

    begin
        clrscr;
        for i := 0 to N do begin
            writeln('>> Data ke ', i + 1);
            cetakMahasiswa(data_mhs, i);
        end;
        readkey;
    end;

procedure dataTerkecilTerbesar(data_mhs: arr_mhs; N: integer; tipe: string);
    var
        i, iSelected: integer;

    begin
        iSelected := 0;
        for i := 1 to N do
            if tipe = 'terkecil' then begin
                if data_mhs[i].nilai_alpro < data_mhs[iSelected].nilai_alpro then
                    iSelected := i
            end
            else begin
                if data_mhs[i].nilai_alpro > data_mhs[iSelected].nilai_alpro then
                    iSelected := i;
            end;

        
        writeln('>> Mahasiswa dengan nilai alpro ', tipe ,' : ');
        cetakMahasiswa(data_mhs, iSelected);
        readkey;
    end;

procedure rataRata(data_mhs: arr_mhs; N: integer);
    var
        jumlah, i: integer;
    
    begin
        clrscr;
        jumlah := 0;
        for i := 0 to N do
            jumlah += data_mhs[i].nilai_alpro;
        writeln('Rata-rata Nilai Alpro adalah ', (jumlah / (N + 1)):0:2);
        readkey;
    end;

procedure swap(var x, y: mhs_type);
    var
        temp: mhs_type;

    begin
        temp := x;
        x := y;
        y := temp;
    end;

procedure sortByNilai(var data_mhs: arr_mhs; N: integer);
    var
        newn, i: integer;

    begin
        repeat begin
            newn := 0;
            for i := 1 to N do begin
                if data_mhs[i - 1].nilai_alpro < data_mhs[i].nilai_alpro then begin
                    swap(data_mhs[i - 1], data_mhs[i]);
                    newn := i;
                end;
            end;
            N := newn;
        end;
        until (N = 0);
        writeln('>> Data telah diurutkan berdasarkan nilai alpro dari terbesar ke terkecil.');
        readkey;
    end;

procedure sortByNama(var data_mhs: arr_mhs; N: integer);
    var
        i, j: integer;
        key: mhs_type;

    Begin
        for i := 1 to N do begin
            key := data_mhs[i];
            j := i - 1;
            while (j >= 0) and (data_mhs[j].nama > key.nama) do begin
                data_mhs[j + 1] := data_mhs[j];
                j := j - 1;
            end;
            data_mhs[j + 1] := key;
        end;
        writeln('>> Data telah diurutkan berdasarkan nama secara ascending.');
        readkey;
    End;

function SequentialSearch(data_mhs: arr_mhs; N: integer; nama_dicari: string):integer;
    Var
        i: integer;

    Begin 
        i := 0; 
        while (i <= N) and (data_mhs[i].nama <> nama_dicari) do i += 1; 
        if (data_mhs[i].nama <> nama_dicari) then
            SequentialSearch := -1
        else
            SequentialSearch := i;
    End;
    

procedure cariNilai(var data_mhs: arr_mhs; N: integer);
    var
        indeksKetemu: integer;
        nama_dicari: string[255];

    begin
        clrscr;
        write('Masukkan nama yang ingin dicari: '); readln(nama_dicari);
        indeksKetemu := SequentialSearch(data_mhs, N, nama_dicari);
        if indeksKetemu <> -1 then
            writeln('>> Data ditemukan! Nilai Alpro ', data_mhs[indeksKetemu].nama, ' = ', data_mhs[indeksKetemu].nilai_alpro)
        else
            writeln('>> Data Tidak Ditemukan!');
        readkey;
    end;

var
    N: integer;
    data_mhs: arr_mhs; 
    menu: byte;
    isInput: boolean;

begin
    N := -1;
    isInput := false;
    repeat
        clrscr;
        writeln('Selamat Datang di Program Entri Mahasiswa');
        writeln('1. Tambahkan Data');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terkecil');
        writeln('4. Nilai Alpro Terbesar');
        writeln('5. Rata-rata Nilai Alpro');
        writeln('6. Cari Nilai Mahasiswa');
        writeln('7. Urutkan Berdasarkan Nama');
        writeln('8. Urutkan Berdasarkan Nilai Alpro');
        writeln('9. Keluar');
        write('>> Masukkan Menu: '); readln(menu);
        if (isInput) then
            case menu of
                1: inputData(data_mhs, N, isInput);
                2: tampilkanData(data_mhs, N);
                3: dataTerkecilTerbesar(data_mhs, N, 'terkecil');
                4: dataTerkecilTerbesar(data_mhs, N, 'terbesar');
                5: rataRata(data_mhs, N);
                6: cariNilai(data_mhs, N);
                7: sortByNama(data_mhs, N);
                8: sortByNilai(data_mhs, N);
            end
        else
            case menu of
                1: inputData(data_mhs, N, isInput);
                2..8: begin
                            writeln('>> Data kosong. Silahkan tambahkan data terlebih dahulu');
                            readkey;
                        end;
            end;
    until (menu = 9);
end.