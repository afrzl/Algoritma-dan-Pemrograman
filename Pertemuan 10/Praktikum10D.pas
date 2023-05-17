Program penjum_matriks;

var
    a, b, c: array[1..3, 1..3, 1..3] of integer;
    i, j, k: integer;

begin
    writeln('buat matriks A');
    for i:=1 to 3 do
        for j:=1 to 3 do
            for k := 1 to 3 do begin  
                write('[', i, ', ', j, ', ', k, '] = ');
                readln(a[i,j,k]);
            end;
    writeln('buat matriks B');
    for i:=1 to 3 do
        for j:=1 to 3 do
            for k := 1 to 3 do begin       
                write('[', i, ', ', j, ', ', k, '] = ');
                readln(b[i,j,k]);
            end;
    writeln('Matriks A');
    for i := 1 to 3 do
        for j := 1 to 3 do
            for k := 1 to 3 do
                writeln('A[', i, ', ', j, ', ', k, '] = ', a[i,j,k]);
    writeln('Matriks B');
    for i:=1 to 3 do
        for j:=1 to 3 do
            for k := 1 to 3 do
                writeln('B[', i, ', ', j, ', ', k, '] = ', b[i,j,k]);
    writeln('Matriks C');
    for i := 1 to 3 do
        for j := 1 to 3 do
            for k := 1 to 3 do begin
                c[i][j][k] := a[i][j][k] + b[i][j][k];
                writeln('C[', i, ', ', j, ', ', k, '] = ', c[i,j,k]);
            end;
    readln;
end.