program segitigaAtas;
uses crt;

var
    n, i, j: integer;

begin
    clrscr;
    write('Masukkan N: '); readln(n);
    for i := 1 to n do begin //looping dari 1 to n
        for j := n downto i do //looping dari n downto i
            write(i:2); //print i
        writeln(); //enter
    end;
end.