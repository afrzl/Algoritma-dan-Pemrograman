Program ScoresAndGrades1;

var
    nilai: integer;

begin
    write('Masukkan skor/nilai: '); readln(nilai);
    writeln(); //nilai = 80
    if nilai > 59 then //T
        if nilai > 69 then //T
            if nilai > 79 then //T
                if nilai > 89 then //T
                    writeln('Excellent. Grade Anda A')
                else
                    writeln('Very good. Grade Anda B')
            else
                writeln('Good. Grade Anda C')
        else
            writeln('Passed. Grade Anda D')
    else
        writeln('Better luck next time. Grade Anda E');
    writeln('Tekan ENTER untuk melanjutkan..');
    readln;
end.