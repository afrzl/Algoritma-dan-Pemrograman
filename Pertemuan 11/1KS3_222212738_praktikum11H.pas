program Penugasan3;
uses crt, sysutils;

Function findBiner(input: integer): string;
    var
        input_positif: word;
    
    begin
        if input = 1 then
            findBiner := '1'
        else if input = -1 then
            findBiner := '-1'
        else begin
            input_positif := input;
            if input < 0 then
                input_positif *= -1;
            findBiner := findBiner(input div 2) + IntToStr(input_positif mod 2);
        end;
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