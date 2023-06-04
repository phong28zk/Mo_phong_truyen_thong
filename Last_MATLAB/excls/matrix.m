function [A,A0,A1,B,C,D] = matrix(a,b)
    A = [1 -5 1*j 0 2+3j; 3-i 9 22 -31*i -7; 87 -8*i 5 9-35*i 10; 0 3+19*i 2-43*i -73 -8; 7+13*i -13 39 3+53*i 99];
    A0 = real(A);
    A1 = A';
    [x y] = size(A);
    A = reshape(A,1,x*y)   
    B = A(A>a);
    C = A(A<=b);
    D = abs(A);
end