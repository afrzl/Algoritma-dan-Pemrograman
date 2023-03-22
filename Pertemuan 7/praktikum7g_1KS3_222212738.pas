program segitigaBawah;
uses crt;

var
    n, i, j: integer;

begin
    clrscr;
    write('Masukkan N: '); readln(n);
    for i := 1 to n do begin //looping dari 1 to n
        for j := 1 to i do //looping dari 1 to i
            write(i:2); //print i
        writeln(); //enter
    end;
end.