Program typeDataPointer;

Type
    tipeString = string[40];
    pointerString = ^tipeString;

var
    letakNama: pointerString;

begin
    letakNama^ := 'Pascal';
    writeln(letakNama^);
end.