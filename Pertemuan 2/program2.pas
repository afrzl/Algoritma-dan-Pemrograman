Program Menentukan_harga_bayar;

uses crt;
var
    jml: integer;
    harga_satuan, pajak, harga_bayar: longint;

begin
    clrscr;
    writeln('Menentukan Harga Bayar');
    writeln('======================');
    write('Jumlah barang = ');
    readln(jml);
    write('Harga satuan Rp. = ');
    readln(harga_satuan);
    write('Pajak Rp. = ');
    readln(pajak);

    harga_bayar := jml * harga_satuan + pajak;
    writeln('Harga Bayar Rp. = ', harga_bayar);
end.
