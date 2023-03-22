Program Contoh74; 
var 
    i, j, panjang, lebar: integer;
    symbol: char;

begin 
    write('Masukkan character: '); readln(symbol);
    write('Masukkan panjang: '); readln(panjang);
    write('Masukkan lebar: '); readln(lebar);
    for i := 1 to lebar do 
        begin 
            for j := 1 to panjang do 
                begin
                    if (i = 1) or (i = lebar) then
                        write(symbol:2)
                    else
                        begin
                            if (j = 1) or (j = panjang) then
                                write(symbol:2)
                            else
                                write('':2);
                        end;
                end;
            writeln; 
        end; 
end. 