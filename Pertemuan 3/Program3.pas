Program StandarDeviasi;
uses crt;

type
    intArray = array of integer;

var
    n, i, total_rata, dataX: integer;
    rata, total_selisih, sd, m: real;
    data: intArray;

begin
    n := 0;
    setlength(data, 1);
    while(true) do
        begin
            Write('Masukkan data ke-', n+1, ' (-99 untuk berhenti): ');
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
    clrscr;
    writeln('NILAI TABEL DARI DISTRIBUSI NORMAL');
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    writeln('Nilai Rata - rata masing-masing (x) = ', rata:0:2);
    write('Nilai rata-rata keseluruhan (m) = ');
    read(m);
    for i := 0 to n-1 do
    begin
        writeln('Data ke ', i+1, ' (data) = ', data[i]);
        total_selisih += sqr(data[i]-rata);
    end;
    writeln('Jumlah Data (n) = ', n);
    sd := sqrt(total_selisih / (n-1));
    writeln('Nilai Tabel (z) = ', (rata-m)/sd:0:2);
end.