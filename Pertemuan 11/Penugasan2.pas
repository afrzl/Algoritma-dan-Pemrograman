Program Penugasan2;
uses crt;

const
    M = 2;
    N = 2;

type
    matriks_type = array[0..M, 0..N] of integer;
    question_type = (Ya, Tidak);

procedure cetakMatriks(matriks: matriks_type);
    var
        i, j: integer;

    begin
        for i := 0 to M do begin
            for j := 0 to N do begin
                if ((i = 0) or (i = M)) and (j = 0) then
                    write('|- ':3, matriks[i][j]:5)
                else if ((i = 0) or (i = M)) and (j = N) then
                    write('':3, matriks[i][j]:5, ' -|')
                else if j = 0 then
                    write('|  ':3, matriks[i][j]:5)
                else if j = N then
                    write('':3, matriks[i][j]:5, '  |')
                else
                    write('':3, matriks[i][j]:5);
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

procedure transpose(var savedMatriks: matriks_type; var hasSaved: boolean): matriks_type;
    var
        matriks, matriksHasil: matriks_type;
        i, j: integer;

    begin
        clrscr;
        matriks := inputMatriks('Matriks', hasSaved, savedMatriks);
        writeln;

        for i := 0 to M do
            for j := 0 to N do
                matriksHasil[j, i] := matriks[i, j];
        
        clrscr;
        writeln('Matriks = '); cetakMatriks(matriks);
        writeln;
        writeln('Transpose matriks = '); cetakMatriks(matriksHasil);
        writeln;
        write('Apakah anda akan menyimpan matriks hasil? (Ya/Tidak): '); readln(question);
        if question = Ya then begin
            hasSaved := true;
            transpose := matriksHasil;
        end
        else
            transpose := savedMatriks;
    end;

procedure determinan(var savedMatriks: matriks_type; var hasSaved: boolean);
    var
        matriks: matriks_type;
        i, det: integer;
        question: question_type;

    begin
        clrscr;
        matriks := inputMatriks('matriks', hasSaved, savedMatriks);
        clrscr;
        cetakMatriks(matriks);
        det := 0;
        for i := 0 to M do 
            det += matriks[0][i] * ((matriks[1][(i+1) mod 3] * matriks[2][(i+2) mod 3]) - (matriks[1][(i+2) mod 3] * matriks[2][(i+1) mod 3]));
        
        writeln('Determinan dari matriks tersebut adalah ', det);
        readkey;
    end;

function perkalian(var savedMatriks: matriks_type; var hasSaved: boolean):matriks_type;
    var
        matriksA, matriksB, matriksHasil: matriks_type;
        i, j, k: integer;
        question: question_type;

    begin
        clrscr;
        matriksA := inputMatriks('Matriks A', hasSaved, savedMatriks);
        writeln;
        matriksB := inputMatriks('Matriks B', hasSaved, savedMatriks);

        for i := 0 to M do begin
            for j := 0 to N do begin
                matriksHasil[i, j] := 0;
                for k := 0 to M do
                    matriksHasil[i, j] += matriksA[i, k] * matriksB[k, j]; 
            end;
        end;

        clrscr;
        writeln('Matriks A = '); cetakMatriks(matriksA);
        writeln;
        writeln('Matriks B = '); cetakMatriks(matriksB);
        writeln;
        writeln('Matriks A * Matriks B = '); cetakMatriks(matriksHasil);

        write('Apakah anda akan menyimpan matriks hasil? (Ya/Tidak): '); readln(question);
        if question = Ya then begin
            hasSaved := true;
            perkalian := matriksHasil;
        end
        else
            perkalian := savedMatriks;
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
        writeln('6. Keluar');
        write('>>Pilih menu: '); readln(pilihan);
        case pilihan of
            1: savedMatriks := perkalian(savedMatriks, hasSaved);
            2: determinan(savedMatriks, hasSaved);
            3: savedMatriks := transpose(savedMatris, hasSaved);
        end;
    until (pilihan = 6);
end.