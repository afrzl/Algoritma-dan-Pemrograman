program praktikum12A;

Function Sum(x: integer):integer; 
Begin 
    If x = 0 then
        Sum := 0
    Else if x > 0 then
        Sum := x + Sum(x - 1)
    Else
        Sum := x + Sum(x + 1);
End;

begin
    writeln(sum(5));
    writeln(sum(-5));
end.