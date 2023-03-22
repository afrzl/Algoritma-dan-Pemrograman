{
    Buatlah algoritma dan program untuk mencetak semua bilangan yang habis dibagi 3 mulai 
    1 sampai 100. 
}

Program mod3;
uses crt;

var
    i: integer;

begin
    clrscr;
    write('Bilangan habis dibagi 3 mulai 1 sampai 100 : ');
    for i := 1 to 100 do //loop 1-100
        if i mod 3 = 0 then //jika mod 3 = 0 maka print i
            write(i, ' ');
end.