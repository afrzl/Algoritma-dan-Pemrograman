        for i := 0 to M do begin
            det += matriks[0][i] * (matriks[1][(i+1) mod 3] * matriks[2][(i+2) mod 3] - matriks[1][(i+2) mod 3] * matriks[2][(i+1) mod 3]);
            writeln(det);