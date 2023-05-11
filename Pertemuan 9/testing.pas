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
    awalbulan := Kamis;
    writeln(succ(awalbulan));
    readln
end.