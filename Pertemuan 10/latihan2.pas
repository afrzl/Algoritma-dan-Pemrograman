Program latihan2;

var
    n, i: integer;
    arr: Array of integer;

begin
    write('Masukkan N: '); readln(n);
    if n mod 2 <> 0 then exit;
    setLength(arr, n);
    for i := 0 to n-1 do begin
        if i = 0 then
            arr[i] := 2
        else if i = 1 then
            arr[i] := 3
        else
            arr[i] := arr[i-1] + arr[i-2];
        writeln('Bilangan ke ', i + 1, ' = ', arr[i]);
    end;
    writeln('Elemen ke n/2 adalah elemen ke ', n div 2, ' yaitu ', arr[n div 2 - 1]);
end.