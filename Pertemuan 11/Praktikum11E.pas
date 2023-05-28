type
    masuk = record
        tgl : 1..31;
        bln : 1..12;
        thn : integer;
    end;

    alamat = record
        jalan : string[20];
        kota : string[10];
    end;

    nilaipeg = record
        pokok,tunjangan,lembur : real;
    end;

    pegawai = record
        nama : string[20];
        tglmasuk : masuk;
        almt : alamat;
        nilai : nilaipeg;
    end;

var
    datapegawai : array [1..10] of pegawai;

begin
    Datapegawai[5].nilai.pokok := 5000000;
    Datapegawai[5].almt.kota := 'Bekasi';
    
    writeln(Datapegawai[5].nilai.pokok:0:0);
    writeln(Datapegawai[5].almt.kota);
end.