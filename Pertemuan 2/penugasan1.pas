type
    intArray = array of integer;

var
    n, i, total_rata: integer;
    rata_rata, total_selisih, deviasi: real;
    nilai: intArray;

begin
    write('Masukkan n = ');
    read(n);
    setlength(nilai, n);

    for i := 1 to n do
    begin
        write('Masukkan nilai ke-', i, ' = ');
        read(nilai[i - 1]);
        total_rata := total_rata + nilai[i - 1];
    end;

    rata_rata := total_rata / n;
    writeln('Rata-rata data = ', rata_rata:0:2);

    for i := 1 to n do  
        total_selisih := total_selisih + sqr(nilai[i - 1] - rata_rata);
    deviasi := sqrt(total_selisih / n);
    writeln('Standar deviasi data = ', deviasi:0:2);
end.