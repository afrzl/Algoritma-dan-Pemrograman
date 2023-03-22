{Program Konversi Nilai CASE} 
{ 1}Program Contoh2;  
{ 2}var  Nilai : integer; 
{ 3}     grade : char; 
{ 4}begin 
{ 5}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 6}   write('Nilai Anda = '); 
{ 7}   readln(Nilai); 
{ 8}    
{ 9}   case Nilai of 
{10}      0..59:  grade:='D'; 
{11}     60..69:  grade:='C'; 
{12}     70..79:  grade:='B'; 
{13}     80..100: grade:='A'; 
        else 
        begin
            writeln('Anda salah memasukkan nilai');
            exit;
        end;
{14}   end; 
{15}   writeln('Grade Anda', Grade ); 
{16} 
{17}   Case Grade of 
{18}    'D': writeln(' Kurang memuaskan'); 
{19}    'C': writeln(' Cukup'); 
{20}    'B': writeln(' Baik'); 
{21}    'A': writeln(' Sangat Baik'); 
{22}   end; 
{23}   readln 
{24}end.