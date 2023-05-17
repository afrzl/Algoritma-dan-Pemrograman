Program Praktikum10A;

Var
    A: array[0..9] of Real;
    B: array[-10..20] of String;
    C: array['a'..'j'] of Boolean;
    X : array[1..10] of Integer;

begin
    X[1] := 10; {array X indeks pertama kita isi nilai 10}
    X[2] := X[1] - 5; {array X indeks kedua kita isi nilai
    array X indeks pertama dikurangi 5 yang mana hasilnya adalah
    5}
    X[3] := X[2] + X[1];
    Writeln(X[3]);
    Writeln(X[13]);
    Writeln(A[10]);
end.