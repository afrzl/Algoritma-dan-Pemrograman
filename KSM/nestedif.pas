program nestedIf;

var
    i : integer;

begin
    i := 5;
    // if i < 5 then
    //     begin
    //         if i = 3 then
    //             Writeln('halo')
    //         else
    //             writeln('bukanjuga');
    //     end
    // else
    //     writeln('bukan');

    if i < 5 then
        Writeln('halo1')
    else
        writeln('bukan');
    if i = 3 then
        Writeln('halo')
    else
        writeln('bukanjuga');
end.