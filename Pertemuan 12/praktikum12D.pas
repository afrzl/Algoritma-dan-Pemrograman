program penugasan12D_function;
var
    x, i: integer;

function fib(n: integer): integer;
    begin
        if (n = 1) then
            fib := 1
        else if (n = 2) then
            fib := 1
        else
            fib := fib(n - 1) + fib(n - 2);
    end;

begin
    writeln('deret fibonacci');
    write('input value : ');
    readln(x);
    writeln;
    for i := 1 to x do write(fib(i),' ');
    readln;
end.
