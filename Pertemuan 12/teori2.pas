Program segitigaPascal;
uses crt;

type
    arr = array[0..100] of integer;

procedure createSegitiga(input: integer; var arrLine: arr);
    var
        i: integer;
        currentArr: arr;

    begin
        if input = 1 then
            writeln('1')
        else begin
            createSegitiga(input - 1, arrLine);
            for i := 0 to (input - 1) do begin
                if (i = 0) or (i = (input - 1)) then
                    currentArr[i] := 1
                else
                    currentArr[i] := arrLine[i - 1] + arrLine[i];
                write(currentArr[i], ' ');
            end;
            arrLine := currentArr;
            writeln;
        end;
    end;

var
    arrLine: arr;

begin
    // clrscr;
    createSegitiga(6, arrLine);
end.