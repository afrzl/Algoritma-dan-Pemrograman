type
    data_brg = record
    namaBrg : string[15];
    unitBrg : array[1..3] of byte;
end;

var
    Barang : array[1..10] of data_brg;
    i : integer;

Begin
    //Inisialisasi data di sini
    With Barang[1] do begin
        namaBrg := 'Scanner';
        unitBrg[1] := 4;
        unitBrg[2] := 5;
        unitBrg[3] := 3;
    end;

    With Barang[2] do begin
        namaBrg := 'Printer';
        unitBrg[1] := 1;
        unitBrg[2] := 2;
        unitBrg[3] := 4;
    end;

    For i:=3 to 10 do begin
        With barang[i] do Begin
            Writeln('Barang ke-', i);
            Write('nama='); Readln(namaBrg);
            Write('jumlah 1= '); Readln(unitBrg[1]);
            Write('jumlah 2= '); Readln(unitBrg[2]);
            Write('jumlah 3= '); Readln(unitBrg[3]);
        End;
    End;
End.