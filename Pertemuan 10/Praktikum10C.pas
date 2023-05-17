Program penjum_matriks;

var
    a,b,c: array[1..3, 1..3] of integer;
    i,j: integer;

begin
    writeln('buat matriks A');
    for i:=1 to 3 do
        for j:=1 to 3 do begin
            write('[',i,',',j,']=');
            readln(a[i,j]);
        end;
    writeln('buat matriks B');
    for i:=1 to 3 do
        for j:=1 to 3 do begin
            write('[',i,',',j,']=');
            readln(b[i,j]);
        end;
    writeln('Matriks A');
    for i:=1 to 3 do begin
        for j:=1 to 3 do
            write(a[i,j],' ');
            writeln;
        end;
    writeln('Matriks B');
    for i:=1 to 3 do begin
        for j:=1 to 3 do
            write(b[i,j],' ');
        writeln;
    end;
    writeln('Matriks C');
    for i := 1 to 3 do begin
        for j := 1 to 3 do begin
            c[i][j] := a[i][j] + b[i][j];
            write(c[i, j], ' ');
        end;
        writeln;
    end;
    readln;
end.