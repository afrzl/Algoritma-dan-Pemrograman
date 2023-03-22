{Program Menentukan Hasil Ujian} 
{ 1}Program Contoh3; 
{ 2}var 
{ 3}   Nilai : integer; 
{ 4} 
{ 5}begin 
{ 6}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 7}   write('Nilai Anda = '); 
{ 8}   readln(Nilai); 
{ 9} 
{10}   case nilai of 
{11}     0..59   : writeln(' Anda tidak lulus'); 
{12}     60..100 :  
{13}       begin 
{14}         write('Anda lulus '); 
{15}         case nilai of 
{16}           60..74: writeln('dengan nilai cukup'); 
{17}           75..89: writeln('dengan nilai baik'); 
{18}           else writeln('dengan nilai sangat baik'); 
{19}         end; 
{20}       end; 
{21}     else 
            begin
                writeln(' Anda salah input nilai'); 
                exit;
            end;
{22}   end; 
{23} 
{24}   readln; 
{25}end.