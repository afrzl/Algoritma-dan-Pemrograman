Type Larik = array [1..100] of integer; 

Function SequentialSearch(A:Larik; N:integer; X:integer): integer; 
    Var 
        i:integer; 
    Begin 
        i:=1; 
        while (i<N) and (A[i] <> X) do i:= i + 1; 
        if (A[i] <> X) then SequentialSearch:=0 
        else SequentialSearch:=i; 
    End;

var
    data: Larik;
    i, searchRes, X: integer;

begin
    for i := 1 to 100 do
        data[i] := random(100);
    
    write('Data: ');
    for i := 1 to 100 do
        write(data[i], ' ');
    writeln;

    X := 45; //data yg dicari
    searchRes := SequentialSearch(data, 100, X);
    if searchRes <> 0 then
        write('Data ', X, ' ditemukan pada elemen ke-', searchRes)
    else
        write('Data tidak ditemukan');
end.