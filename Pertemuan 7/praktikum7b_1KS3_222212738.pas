program jumlahDeret;
uses crt;

var
    i, n: integer;
    jumlah: real;
    plus: boolean;

begin
    clrscr;
    jumlah := 1;
    plus := False; //inisialisasi plus F untuk pertama kali sehingga print '-' diawal
    repeat //repeat sampai user input angka ganjil dan positif
        write('Masukkan bilangan ganjil positif: '); readln(n);
    until (n mod 2 = 1) and (n > 0);

    for i := 1 to n do begin //looping i dari 1-n
        if i = 1 then //jika i = 1 maka print 1 - sebagai awalan
            write('1 - ')
        else if i mod 2 = 1 then begin //jika i ganjil
            write('1/'); //print 1/ untuk penyebut
            if i <> n then begin //jika i tidak sama dengan n
                if plus then begin //jika var plus bernilai true
                    write(i, ' - '); //print i (penyebut) dan tanda '-'
                    jumlah += 1/i; //jumlah diincrement dengan 1/i
                    plus := False; //var plus menjadi F
                end
                else begin
                    write(i, ' + '); //print i (penyebut) dan tanda '+'
                    jumlah -= 1/i; //jumlah didecrement dengan 1/i
                    plus := True; //var plus menjadi T
                end
            end
            else begin //jika i == n
                write(i, ' = '); //write i dan tanda '=' sebagai akhir suku
                if plus then jumlah += 1/i else jumlah -= 1/i; //jika plus bernilai T maka jumlah += 1/i selain itu jumlah -= 1/i
            end;
        end;
    end;
    writeln(jumlah:0:2); //print jumlah
end.