Program Praktikum10B;

Var
    X : array[1..10] of Integer;
    Terbesar: Integer;
    i : Integer;
    
Begin
    For i:=1 to 10 do Begin
        Write('Input data ke-', i,'= ');
        Readln(X[i]);
    End;
    Terbesar := X[1];
    For i:=2 to 10 do Begin
        If X[i] > Terbesar then Terbesar := X[i];
    End;
    Writeln(Terbesar);
    Readln;
End.