Program Contoh9F;
uses crt;

const
    BARIS_BULAN = 8;
    LEBAR = 7;


type 
    Bulan = (Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember);
    Hari1pekan = (Minggu, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
    haribulan = 1..31;

var
    i, awalbulan: hari1pekan;
    j: haribulan;
    tahun, x, y: integer;
    l: Bulan;

function CetakBulan(tahun: integer; namaBulan: Bulan; hariPertama: hari1pekan): hari1pekan;
var
    jumlahHari: hariBulan;

begin
    case namaBulan of
        Januari, Maret, Mei, Juli, Agustus, Oktober, Desember: jumlahHari := 31;
        Februari: if tahun mod 4 = 0 then jumlahHari := 29 else jumlahHari := 28;
        April, Juni, September, November: jumlahHari := 30;
    end;

    y := 4 + ((ord(namaBulan) div 2) * BARIS_BULAN);
    if ord(namaBulan) mod 2 = 0 then x := 1 else x := LEBAR * 8;
    gotoxy(x, y);
    TextColor(Blue);
    write(namaBulan, ' ', tahun);
    TextColor(White);
    y += 1;
    gotoxy(x, y);
    for i := Minggu to Sabtu do write(i:LEBAR);

    y += 1;
    x := ord(hariPertama);

    if ord(namaBulan) mod 2 = 1 then x += 8;

    for j := 1 to jumlahHari do begin
        TextColor(White);
        if ((x=0) or (x=7)) or ((x=8) or (x=15)) then begin
            TextColor(Red);
            if (X=7) or (x=15) then begin 
                if ord(namaBulan) mod 2 = 0 then x := 0 else x := 8;
                y += 1;
            end;
        end;
        gotoxy(LEBAR * x + 1, y); write(j:3);
        x += 1;
        
        if hariPertama = Sabtu then hariPertama := Minggu else hariPertama := succ(hariPertama);;
    end;
    CetakBulan := hariPertama;
end;

begin
    clrscr;
    TextColor(White);
    writeln('>> Zoom out terminal terlebih dahulu agar calender tergenerate sempurna');
    write('Masukkan tahun: '); readln(tahun);
    write('Hari pertama awal bulan: '); readln(awalbulan);
    writeln;

    for l := Januari to Desember do begin
        awalbulan := CetakBulan(tahun, l, awalbulan);
    end;

    readln
end.