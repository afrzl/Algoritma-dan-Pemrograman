Program TwoConditions(INPUT, OUTPUT);

const
    Limit = 1000000;

var
    jumlah: real;

begin
    write('Masukkan jumlah: '); readln(jumlah);
    if jumlah <= Limit then
        writeln('Tagihan Anda diterima.');
    if jumlah > Limit then
        writeln('Jumlah tersebut melebihi batas limit kredit Anda.');
    writeln('Terima kasih telah menggunakan kartu kredit Pascal');
    writeln('Tekan ENTER untuk keluar..');
    readln();
end.
        