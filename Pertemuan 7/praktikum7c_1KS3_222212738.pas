program jumlahGenap;
uses crt;

var
    i, n, bilangan, jumlah: integer;

begin
    clrscr;
    write('Masukkan jumlah bilangan N: '); readln(n);
    for i := 1 to n do begin //looping dari 1 to n
        write('Masukkan bilangan ke-', i, ': '); readln(bilangan); //input ke var bilangan
        if bilangan mod 2 = 0 then //jika bilangan = genap
            jumlah += bilangan; //jumlah + bilangan
    end;
    writeln('Jumlah bilangan genap = ', jumlah); //print jumlah
end.