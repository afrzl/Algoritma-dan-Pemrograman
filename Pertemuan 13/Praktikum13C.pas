program Pencarian;

Type Larik = array [1..100] of integer;

Function BinarySearch(A:larik; N: Integer; X:Integer): integer;
    Var
        low, mid, high: integer;

    begin
        low := 1;
        high := N;
        while (low <= high) do begin
            mid := (low + high) div 2;
            if(A[mid] < X) then high := mid - 1
            else if(A[mid] > X) then low := mid + 1
            else break;
        end;
        if A[mid] = X then BinarySearch:= mid {ditemukan}
        else BinarySearch := 0; {tidak ditemukan}
    end;

var
    A: larik;
    i,n,x : integer;

begin
    n:=10;
    x:=500;
    for i :=1 to n do A[n-i+1]:= i*100;
    writeln(BinarySearch(A,n,x));
end.
