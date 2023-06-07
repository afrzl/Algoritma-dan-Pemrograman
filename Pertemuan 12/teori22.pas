Program segitigaPascal;
uses crt;

function pascalTriangle(n, i: integer):integer;
    begin
        if (n = i) or (i = 0) then
            pascalTriangle := 1
        else
            pascalTriangle := pascalTriangle(n - 1, i) + pascalTriangle(n - 1, i - 1);
    end;

var
    i, j, res, input: integer;

begin
    clrscr;
    write('Masukkan jumlah baris: '); readln(input);

    for i := 0 to input - 1 do begin
        for j := 2 to input - i do
            write(' ');
        for j := 0 to i do begin
            res := pascalTriangle(i, j);
            write(res, ' ');
        end;
        writeln;
    end;
end.