{
    NAMA        : MUH. NUR AFRIZAL
    KELAS / NO  : 1KS3 / 24
    NIM         : 222212738

    Menggunakan statement CASE-OF, simulasikan sebuah kalkulator sederhana untuk 
    melakukan operasi aritmatika sebagai berikut:  
    • baca operand 1, operator, dan operand 2 
    • Tentukan hasil operasi aritmatika yang tepat, 
    • Dan cetak hasilnya ke piranti keluaran!  
    
    Misalnya, bila dibaca 8, ‘+’, 7, maka hasilnya = 15 (yaitu 8+7). Bila dibaca 6, ‘*’, 5, maka 
    hasilnya = 30 (yaitu 6 x 5).
}

program kalkulatorSederhana;
uses crt, sysutils; //library clearscreen dan system utility

var //deklarasi variabel
    operasi: string;
    operand1, operand2: real;
    i: byte;
    calc_operator: char;

begin
    while(true) do
        begin
            clrscr;
            writeln('>>>>> PROGRAM CALCULATOR SEDERHANA <<<<<', sLineBreak);
            write('>> Masukkan operasi (contoh 8+3): '); readln(operasi);
            for i := 0 to length(operasi) - 1 do //loop dari 0 sampai panjang operasi - 1
                if (operasi[i] = '+') or (operasi[i] = '-') or (operasi[i] = '*') or (operasi[i] = '/') then //jika ditemukan character +, -, *, atau /
                    begin
                        calc_operator := operasi[i]; //operasi [i] dimasukkan ke variabel calc_operator
                        operand1 := strToFloat(leftStr(operasi, i - 1)); //operand1 diisi dengan character sebelah kiri operasi sebanyak i - 1
                        operand2 := strToFloat(rightStr(operasi, length(operasi) - i)); //operand2 diisi dengan character sebelah kanan operasi sebanyak panjang char operasi - i   
                        break;
                    end;

            case calc_operator of //pemilihan untuk operator
                '+' : writeln('Hasil = ', operand1 + operand2:0:2);
                '-' : writeln('Hasil = ', operand1 - operand2:0:2);
                '/' : writeln('Hasil = ', operand1 / operand2:0:2);
                '*' : writeln('Hasil = ', operand1 * operand2:0:2);
                else writeln('Operator yang anda masukkan salah!');
            end;
            write(sLineBreak, '>> Apakah anda akan mengulang program kembali?? (Y/N): '); readln(calc_operator); //input user akan mengulang program atau tidak dengan meminjam variabel calc_operator karena sudah tidak terpakai lagi
            if not(UpperCase(calc_operator) = 'Y') then //jika user tidak memasukkan 'Y' atau 'y'
                begin
                    writeln('PROGRAM KELUAR. TERIMAKASIH.');
                    break; //menghentikan looping
                end;
        end;
end.