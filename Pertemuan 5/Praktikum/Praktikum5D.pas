{Program Menentukan Hasil Ujian} 
{ 1}Program Contoh3; 
{ 2}var 
{ 3}   Nilai : integer; 
        lulus: string;
{ 4} 
{ 5}begin 
{ 6}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 7}   write('Nilai Anda = '); 
{ 8}   readln(Nilai); 
        lulus := 'Anda lulus dengan';
{ 9} 
{10}   case nilai of 
// {11}     0..59   : writeln(' Anda tidak lulus');
// {12}     60..100 :  
// {13}       begin 
// {14}         write('Anda lulus '); 
// {15}         case nilai of 
// {16}           60..74: writeln('dengan nilai cukup'); 
// {17}           75..89: writeln('dengan nilai baik'); 
// {18}           else writeln('dengan nilai sangat baik'); 
// {19}         end; 
// {20}       end; 
// {21}     else writeln(' Anda salah input nilai'); 
        0..59   : writeln(' Anda tidak lulus');
{16}    60..74  : writeln(lulus, ' nilai cukup'); 
{17}    75..89  : writeln(lulus, ' nilai baik'); 
{18}    90..100 : writeln(lulus, ' nilai sangat baik'); 
{21}    else writeln(' Anda salah input nilai');
{22}   end; 
{23} 
{24}   readln; 
{25}end.