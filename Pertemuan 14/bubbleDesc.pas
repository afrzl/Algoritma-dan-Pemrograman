Program Praktikum14Bubble;
Uses crt;

Const
    JML = 5;

Type
    Larik = array [1..JML] of integer;

Procedure BubbleSort(var data: Larik; n:integer);
    var
        i, j, temp:integer;

    Begin
        for i := 1 to n - 1 do
            for j := n downto i + 1 do
                if (data[j] > data[j - 1]) then begin
                    temp := data[j];
                    data[j] := data[j - 1];
                    data[j - 1] := temp;
                end;
End;

var
    data: Larik;
    i: integer;

Begin
    clrscr;
    data[1] := 2;
    data[2] := 4;
    data[3] := 3;
    data[4] := 5;
    data[5] := 1;

    write('Data awal: ');
    for i := 1 to JML do
        write(data[i], ' ');

    BubbleSort(data, JML);
    writeln;
    writeln;

    write('Data terurut: ');
    for i := 1 to JML do
        write(data[i], ' ');
End.