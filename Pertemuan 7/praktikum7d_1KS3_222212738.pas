program usiaMahasiswa;
uses crt;

var
    i, n, umur: integer;
    kelasUmur: array[0..4] of byte;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa: '); readln(n);
    for i := 1 to n do begin //looping dari 1 to n
        write('Masukkan usia mahasiswa ke-', i, ': '); readln(umur); //input umur ke i dan ditampung ke var umur
        case umur of
            17: kelasUmur[0] += 1; //jika umur = 17, array kelasUmur index ke-0 bertambah 1
            18: kelasUmur[1] += 1; //jika umur = 18, array kelasUmur index ke-1 bertambah 1
            19: kelasUmur[2] += 1; //jika umur = 19, array kelasUmur index ke-2 bertambah 1
            20: kelasUmur[3] += 1; //jika umur = 20, array kelasUmur index ke-3 bertambah 1
            else kelasUmur[4] += 1; //selain itu, array kelasUmur index ke-4 bertambah 1
        end;
    end;
    for i := 0 to length(kelasUmur) - 1 do begin //looping dari 0 sampai panjang array kelasUmur
        if i <> length(kelasUmur) - 1 then //if i tidak sama dengan panjang array - 1
            writeln('Jumlah mahasiswa berusia ', i + 17, ' tahun = ', kelasUmur[i])
        else
            writeln('Jumlah mahasiswa berusia selain itu  = ', kelasUmur[i]);
    end;
end.