Program output;
uses crt;

begin
    Writeln('Integers');
    Writeln(1234:7);
    Writeln(1234:6);
    Writeln(1234:4);
    Writeln(1234:1);
    Writeln(1234:0);
    Writeln();

    Writeln('Real numbers');
    Writeln(12.35:10:4);
    Writeln(12.35:10:3);
    Writeln(12.35:8:1);
    Writeln(12.35:8:0);
    Writeln(-12.35:10:1);
    Writeln(12.35:9);
    Writeln(12.35:7);
    Writeln(12.35:0:2);

    Writeln('Strings');
    Writeln('a':6);
    Writeln('abc':6);
    Writeln('abc':9);
end.