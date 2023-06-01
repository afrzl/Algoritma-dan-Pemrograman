program praktikum12D_procedure;

procedure pib(n:integer; var hsl :integer);
    var f1, f2: integer;
    begin
        if(n = 1) or (n = 2) then
            hsl := 1
        else begin
            pib(n - 1, f1);
            pib(n - 2, f2);
            hsl := f1 + f2;
        end;
    end;

var
    x, i: integer;
    hsl: integer;

begin
    writeln('Barisan Bilangan Fibonacci');
    write('Jumlah bilangan Fibonnaci yang ingin ditampilkan : ');
    readln(x); writeln;
    for i := 1 to x do begin
        pib(i, hsl);
        write(hsl, ' ');
    end;
    readln;
End.