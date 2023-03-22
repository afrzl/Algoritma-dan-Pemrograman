Program latihan;

uses crt;

var
    mid, res: integer;

begin
    clrscr;
    mid := 1; //1 2 3 4 5 6 7 8 9 10 11
    res := 0; //1 2 3 4 5
    while (mid <= 10) do
        begin
            if (mid mod 3 = 0) then
                begin
                    res += 1;
                    mid += 1;
                end
            else if (mid mod 4 = 0) then
                mid += 1
            else
                begin
                    if (mid mod 2 = 0) then
                        res += 1;
                    mid += 1;
                end;
        end;
    writeln(res);
end.