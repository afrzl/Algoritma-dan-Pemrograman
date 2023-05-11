Program Contoh9F;
uses crt;

type 
    Hari1pekan= (Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu);
    haribulan= 1..31;

var
    i, awalbulan: hari1pekan;
    j, tglmaks: haribulan;
    x, y, k, lebar: integer;

begin
    clrscr;
    write('Hari pertama awal bulan: '); readln(awalbulan);
    write('Jumlah hari bulan ini: '); readln(tglmaks);
    writeln;

    lebar := 7;
    for i := Ahad to sabtu do write(i:lebar);

    y:=5;
    x:=ord(awalbulan);
    for j:=1 to tglmaks do begin
        TextColor(White);
        if x=7 then begin
            x:=0;
            y:=y+1;
            TextColor(Red);
        end;
        gotoxy(lebar*x+1,y); write(j:3);
        x:=x+1;
    end;
    readln
end.