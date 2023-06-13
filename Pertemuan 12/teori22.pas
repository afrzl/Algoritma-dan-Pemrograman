Program segitigaPascal;
uses crt;

function pascal(n, i: integer):integer;
    begin
        if (n = i) or (i = 0) then
            pascal := 1
        else
            pascal := pascal(n - 1, i) + pascal(n - 1, i - 1);
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
            res := pascal(i, j);
            write(res, ' ');
        end;
        writeln;
    end;
end.