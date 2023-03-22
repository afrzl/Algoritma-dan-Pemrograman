Program input1;
Uses Crt;
Var
    nama,alamat: String; 
    umur: Integer;
    ipk: Real;
Begin
    Clrscr;
    Writeln ('Masukkan Data Mahasiswa'); 
    Writeln ('======================='); 
    Write ('Nama :');
    Readln (nama);
    Write ('Alamat :');
    Readln (alamat);
    Write ('Umur :');
    Read (umur);
    Write ('IPK :');
    Readln (ipk);
    Writeln;
    Writeln ('=========HASIL=========');
    Write ('Nama: ',nama,'. Alamat: ',alamat); 
    Writeln ('. Umur: ',umur,'. IPK: ',ipk:1:2); 
    Readln;
End.
