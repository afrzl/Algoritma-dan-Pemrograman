Program soal_2021_3_a;
uses crt;

var
    i, n, j, nilai_awal: integer;

begin
    nilai_awal := 1;
    write('Masukkan N: '); readln(n);
    for i := 1 to n do begin
        for j := 1 to n do begin
            write(nilai_awal:2);
            if nilai_awal = n then nilai_awal := 1 else nilai_awal += 1;
        end;
        writeln;
        nilai_awal += 1;
    end;
end.