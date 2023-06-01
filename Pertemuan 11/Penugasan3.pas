program Penugasan3;
uses crt, sysutils;

Function findBiner(input: integer): string;
    begin
        if input = 1 then
            findBiner := '1'
        else
            findBiner := findBiner(input div 2) + IntToStr(input mod 2);
    end;

var
    hasil: string;
    input: integer;

begin
    clrscr;
	write('Input: '); readln(input);
    hasil := findBiner(input);
    writeln('Output: ', hasil);
end.