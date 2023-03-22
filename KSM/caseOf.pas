Program caseOf;

var
    nilai: char;

begin
    write('Nilai huruf yang didapat ?'); readln(nilai);
    case Nilai of
        'A': begin
                writeln('Sangat baik');
                writeln('Mantap');
            end; 
        'B': writeln('Baik');
        'C': writeln('Cukup');
        'D': writeln('Kurang');
        'E': writeln('Gagal');
        else writeln('Boong');
    end;
end.