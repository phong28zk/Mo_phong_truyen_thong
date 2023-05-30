function [A1,B,C,D,sum_D] = bai1_de1(a,b)
    A = [1 -5 1*j 0 2+3j; 3-i 9 22 -31*i -7; 87 -8*i 5 9-35*i 10; 0 3+19*i 2-43*i -73 -8; 7+13*i -13 39 3+53*i 99];
    A1 = A';
    B = real(A);
    [x y]= size(A);
    C = reshape(B,1,x*y);
    D = C(C>0);
    sum_D = sum(D);
end