(* 
Diadopsi dari https://wiki.freepascal.org/Solution_2
*)
program hitungrerata;

const
    n = 5;

var
    A, B, C, D, E : integer;
    total : integer;
    rerata : real;
    
begin
    write ('Inputkan data pertama: ');
    readln (A);
    write ('Inputkan data kedua: ');
    readln (B);
    write ('Inputkan data ketiga: ');
    readln (C);
    write ('Inputkan data keempat: ');
    readln (D);
    write ('Inputkan data kelima: ');
    readln (E);
    total := A + B + C + D + E;
    rerata := total / 5;
    writeln ('n = ', n);
    writeln;
    writeln ('Data pertama:', A:8);
    writeln ('Data kedua:', B:8);
    writeln ('Data ketiga:', C:8);
    writeln ('Data keempat:', D:8);
    writeln ('Data kelima:', E:8);
    writeln ('================');
    writeln ('Total:', total:12);
    writeln ('Rata-rata:', rerata:10:1);
end.
