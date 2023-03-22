var
    tis: integer;

begin
    tis := 143;
    while tis > 10 do
        tis := (tis div 10) * 3 + (tis div 50);
    writeln(tis);
    
    // if(a < 10) then
    //     tis := a
    // else
    //     tis := tis(a div 10) * 3 + tis(a div 50);
end.