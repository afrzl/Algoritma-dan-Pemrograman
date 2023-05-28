Program Penugasan1;
uses crt;

const
    JML_INDEX = 10;

type
    arr = array[0..(JML_INDEX - 1)] of integer;

procedure error();
    begin
        writeln('Anda belum menginputkan data. Silahkan input data terlebih dahulu.');
        readkey();
    end;

function inputData(var data: arr; var isInputData: boolean):arr;
    var
        i: integer;

    begin
        clrscr;
        for i := 0 to (JML_INDEX - 1) do begin
            write('Masukkan data ke-', i + 1, ': '); readln(data[i]);
        end;
        inputData := data;
        isInputData := true;
    end;

procedure tampilkanData(data: arr);
    var
        i: integer;

    begin
        write('Ditemukan ', JML_INDEX, ' data dengan rincian: ');
        for i := 0 to (JML_INDEX - 1) do
            if i <> (JML_INDEX - 1) then
                write(data[i], ', ')
            else
                writeln(data[i]);
        readkey();
    end;

procedure tampilkanDataMinMax(data: arr; tipe: string);
    var
        i, dataTerpilih: integer;

    begin
        dataTerpilih := data[0];
        for i := 1 to (JML_INDEX - 1) do
            if tipe = 'terkecil' then begin
                if data[i] < dataTerpilih then dataTerpilih := data[i];
            end
            else begin
                if data[i] > dataTerpilih then dataTerpilih := data[i];
            end;
        writeln('Data ', tipe, ' adalah = ', dataTerpilih);
        readkey();
    end;

procedure tampilkanRata(data: arr);
    var
        i, jml_data: integer;

    begin
        jml_data := 0;
        for i := 0 to (JML_INDEX - 1) do
            jml_data += data[i];
        writeln('Rata-rata data adalah ', (jml_data/JML_INDEX):0:2);
        readkey();
    end;

var
    pilihan: byte;
    data: arr;
    i: integer;
    isInputData: boolean;

begin
    isInputData := false;
    repeat
        clrscr;
        writeln('Selamat datang di aplikasi statistik sederhana');
        writeln('Silahkan pilih menu berikut: ');
        writeln('1. Input data');
        writeln('2. Tampilkan semua data');
        writeln('3. Tampilkan data terkecil');
        writeln('4. Tampilkan data terbesar');
        writeln('5. Tampilkan rata-rata');
        writeln('6. Keluar');
        write('>> Masukkan pilihan: '); readln(pilihan);
        case pilihan of
            1: data := inputData(data, isInputData);
            2: if isInputData then tampilkanData(data) else error();
            3: if IsInputData then tampilkanDataMinMax(data, 'terkecil') else error();
            4: if IsInputData then tampilkanDataMinMax(data, 'terbesar') else error();
            5: if IsInputData then tampilkanRata(data) else error();
        end;
    until (pilihan = 6);
end.