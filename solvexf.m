function [det_A, x ] = solvexf(r)
A = [5 2*r r; 3 6 2*r-1; 2 r-1 3*r];
b = [2;3;5];
det_A = det(A)
if isempty(A)
    disp('Macierz pusta');
else
    x = A\b;

end

