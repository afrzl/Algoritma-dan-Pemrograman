Program Penugasan2;
uses crt;

const
    M = 2;
    N = 2;

type
    matriks_type = array[0..M, 0..N] of real;
    matriks_type2 = array[0..1, 0..1] of real;
    question_type = (Ya, Tidak);

function hitungDeterminan(matriks: matriks_type):integer; FORWARD;
function hitungTranspose(matriks: matriks_type): matriks_type; FORWARD;

procedure cetakMatriks(matriks: matriks_type);
    var
        i, j: integer;

    begin
        for i := 0 to M do begin
            for j := 0 to N do begin
                if ((i = 0) or (i = M)) and (j = 0) then
                    write('|- ':3, matriks[i][j]:5:1)
                else if ((i = 0) or (i = M)) and (j = N) then
                    write('':3, matriks[i][j]:5:1, ' -|')
                else if j = 0 then
                    write('|  ':3, matriks[i][j]:5:1)
                else if j = N then
                    write('':3, matriks[i][j]:5:1, '  |')
                else
                    write('':3, matriks[i][j]:5:1);
            end;
            writeln;
        end;
    end;

function inputMatriks(nama_matriks: string; var hasSaved: boolean; var savedMatriks: matriks_type):matriks_type;
    var
        matriks: matriks_type;
        i, j: integer;
        question: question_type;

    begin
        if hasSaved then begin
            write('Apakah anda akan menggunakan matriks tersimpan? (Ya/Tidak): '); readln(question);
        end;
            
        if (question = Ya) and hasSaved then
            inputMatriks := savedMatriks
        else begin
            writeln('Masukkan ', nama_matriks, ' :');
            for i := 0 to M do
                for j := 0 to N do begin
                    write(nama_matriks, '[', i+1, ', ', j+1, '] = '); readln(matriks[i][j]);
                end;
        end;
        inputMatriks := matriks;
    end;

function getCofactor(matriks: matriks_type; row_selected: integer; col_selected: integer):matriks_type2;
    var
        i, j, row, col: integer;
        matriks_cov: matriks_type2;

    begin
        i := 0;
        j := 0;

        for row := 0 to 2 do
            for col := 0 to 2 do
                if (row <> row_selected) and (col <> col_selected) then begin
                    matriks_cov[i][j] := matriks[row][col];
                    j += 1;
                    if j = 2 then begin
                        j := 0;
                        i += 1;
                    end;
                end;

        getCofactor := matriks_cov;
    end;

function hitungInvers(matriks: matriks_type):matriks_type;
    var
        sign: shortInt;
        matriks_cov_element: matriks_type2;
        matriks_cov, matriks_adj, matriksHasil: matriks_type;
        i, j, det: integer;
        det_cov_element: real;

    begin
        sign := -1;
        for i := 0 to M do
            for j := 0 to N do begin
                sign *= -1;
                matriks_cov_element := getCofactor(matriks, i, j);
                det_cov_element := matriks_cov_element[0, 0] * matriks_cov_element[1, 1] - (matriks_cov_element[0, 1] * matriks_cov_element[1, 0]);
                matriks_cov[i][j] := sign * det_cov_element;
            end;
        det := hitungDeterminan(matriks);
        if det < 0 then
            det *= -1;

        matriks_adj := hitungTranspose(matriks_cov);
        for i := 0 to M do
            for j := 0 to N do
                matriksHasil[i][j] := (1 / det) * matriks_adj[i][j];

        hitungInvers := matriksHasil;
    end;

procedure invers(var savedMatriks: matriks_type; var hasSaved: boolean);
    var
        matriks, matriksHasil: matriks_type;
        question: question_type;
    
    begin
        clrscr;
        matriks := inputMatriks('Matriks', hasSaved, savedMatriks);
        writeln;

        matriksHasil := hitungInvers(matriks);

        clrscr;
        writeln('Matriks = '); cetakMatriks(matriks);
        writeln;
        writeln('Invers matriks = '); cetakMatriks(matriksHasil);
        writeln;
        write('Apakah anda akan menyimpan matriks hasil? (Ya/Tidak): '); readln(question);
        if question = Ya then begin
            hasSaved := true;
            savedMatriks := matriksHasil;
        end
    end;

function hitungTranspose(matriks: matriks_type): matriks_type;
    var
        matriksHasil: matriks_type;
        i, j: integer;

    begin
        for i := 0 to M do
            for j := 0 to N do
                matriksHasil[j, i] := matriks[i, j];

        hitungTranspose := matriksHasil;
    end;

procedure transpose(var savedMatriks: matriks_type; var hasSaved: boolean);
    var
        matriks, matriksHasil: matriks_type;
        question: question_type;

    begin
        clrscr;
        matriks := inputMatriks('Matriks', hasSaved, savedMatriks);
        writeln;

        matriksHasil := hitungTranspose(matriks);
        
        clrscr;
        writeln('Matriks = '); cetakMatriks(matriks);
        writeln;
        writeln('Transpose matriks = '); cetakMatriks(matriksHasil);
        writeln;
        write('Apakah anda akan menyimpan matriks hasil? (Ya/Tidak): '); readln(question);
        if question = Ya then begin
            hasSaved := true;
            savedMatriks := matriksHasil;
        end
    end;

function hitungDeterminan(matriks: matriks_type):integer;
    var
        i: integer;
        det_cov, determinan: real;
        matriks_cov: matriks_type2;
        sign: shortInt;
    
    begin
        sign := 1;
        determinan := 0;
        for i := 0 to M do begin
            matriks_cov := getCofactor(matriks, 0, i);
            det_cov := matriks_cov[0, 0] * matriks_cov[1, 1] - (matriks_cov[0, 1] * matriks_cov[1, 0]);
            determinan += sign * matriks[0, i] * det_cov;
            sign *= -1;
        end;

        hitungDeterminan := round(determinan);
    end;

procedure determinan(var savedMatriks: matriks_type; var hasSaved: boolean);
    var
        matriks: matriks_type;

    begin
        clrscr;
        matriks := inputMatriks('matriks', hasSaved, savedMatriks);
        clrscr;
        cetakMatriks(matriks);
        
        writeln('Determinan dari matriks tersebut adalah ', hitungDeterminan(matriks));
        readkey;
    end;

function hitungPerkalian(matriksA, matriksB: matriks_type):matriks_type;
    var
        i, j, k: integer;
        hasil: matriks_type;
    
    begin
        for i := 0 to M do begin
            for j := 0 to N do begin
                hasil[i, j] := 0;
                for k := 0 to M do
                    hasil[i, j] += matriksA[i, k] * matriksB[k, j]; 
            end;
        end;

        hitungPerkalian := hasil;
    end;

procedure perkalian(var savedMatriks: matriks_type; var hasSaved: boolean);
    var
        matriksA, matriksB, matriksHasil: matriks_type;
        question: question_type;
    
    begin
        clrscr;
        matriksA := inputMatriks('Matriks A', hasSaved, savedMatriks);
        writeln;
        matriksB := inputMatriks('Matriks B', hasSaved, savedMatriks);

        matriksHasil := hitungPerkalian(matriksA, matriksB);

        clrscr;
        writeln('Matriks A = '); cetakMatriks(matriksA);
        writeln;
        writeln('Matriks B = '); cetakMatriks(matriksB);
        writeln;
        writeln('Matriks A * Matriks B = '); cetakMatriks(matriksHasil);

        write('Apakah anda akan menyimpan matriks hasil? (Ya/Tidak): '); readln(question);
        if question = Ya then begin
            hasSaved := true;
            savedMatriks := matriksHasil;
        end
    end;

procedure deleteHistory(var savedMatriks: matriks_type; var hasSaved: boolean);
    begin
        hasSaved := false;
    end;

var
    hasSaved: boolean;
    pilihan: byte;
    savedMatriks: matriks_type;
    i, j: integer;

begin
    hasSaved := false;

    repeat
        clrscr;
        if hasSaved then begin
            writeln('Matriks tersimpan : '); cetakMatriks(savedMatriks);
            writeln;
        end;

        writeln('Selamat datang di aplikasi kalkulator matriks sederhana');
        writeln('Silahkan pilih menu berikut: ');
        writeln('1. Perkalian matriks');
        writeln('2. Determinan matriks');
        writeln('3. Transpose matriks');
        writeln('4. Invers matriks');
        writeln('5. Clear history');
        writeln('6. Keluar');
        write('>>Pilih menu: '); readln(pilihan);
        case pilihan of
            1: perkalian(savedMatriks, hasSaved);
            2: determinan(savedMatriks, hasSaved);
            3: transpose(savedMatriks, hasSaved);
            4: invers(savedMatriks, hasSaved);
            5: deleteHistory(savedMatriks, hasSaved);
        end;
    until (pilihan = 6);
end.