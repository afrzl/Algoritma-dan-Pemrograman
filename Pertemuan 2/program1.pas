Program Konversi_suhu;

uses crt;
var
    celcius, fahrenheit: real;

begin
    clrscr;
    writeln('MENCARI KONVERSI SUHU');
    writeln('===================== ');
    write('Derajat Celcius = ');
    readln(celcius);

    fahrenheit := 9/5 * celcius + 32;
    writeln('Derajat Fahrenheit = ', fahrenheit:0:2);
end.