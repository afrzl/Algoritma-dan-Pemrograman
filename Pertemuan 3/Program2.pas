Program StandarDeviasi;

type
    intArray = array of integer;

var
    n, i, total_rata: integer;
    rata, total_selisih, sd: real;
    data: intArray;

begin
    n := 0;
    setlength(data, 1);
    writeln('Mencari Standar Deviasi (SD)');
    writeln('============================');
    while(true) do
        begin
            Write('Data ke ', n+1, ' (data) (-99 untuk berhenti) = ');
            read(data[n]);
            if (data[n] = -99) then
                break
            else
            begin
                total_rata += data[n];
                n += 1;
                setlength(data, n + 1);
            end;
        end;
    rata := total_rata / (n);
    writeln('Rata - rata (rata) = ', rata:0:2);
    writeln('Jumlah Data (n) = ', n);
    for i := 0 to n-1 do
    begin
        total_selisih += sqr(data[i]-rata);
    end;
    sd := sqrt(total_selisih / (n-1));
    writeln('Standar Deviasi (sd) = ', sd:0:2);
end.