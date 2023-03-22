Program CreditCard(INPUT, OUTPUT);

const
    Limit = 1000000;

var
    jumlah: real;

begin
    write('Masukkan jumlah: '); readln(jumlah);
    if jumlah <= Limit then
        begin
            writeln('Tagihan Anda diterima.');
            writeln('Your price + tax is $', 1.05*jumlah:0:2);
        end
    else //if jumlah > limit
        begin
            writeln('Jumlah tersebut melebihi batas limit kredit Anda.');
            writeln('batas maksimum dalma $', limit);
        end;
    writeln('Terima kasih telah menggunakan kartu kredit Pascal');
    writeln('Tekan ENTER untuk keluar..');
    readln();
end.
        