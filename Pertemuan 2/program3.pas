Program Luas_lingkaran;
uses crt;
const
    phi = 22/7;

var
    jari : integer;
    luas : real;

begin
    clrscr;
    writeln('Mencari Luas Lingkaran');
    writeln('======================');
    write('Panjang jari-jari (cm) = ');
    readln(jari);
    luas := phi * sqr(jari);
    writeln('Luas adalah (cm2) = ', luas:0:2);
end.