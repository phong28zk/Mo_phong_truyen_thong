function [A,B,C,D] = bai1()
    A = [1 -5 1i 0 2+3i; 3 - 1i 9 22 -31i -7; 87 -8i 5 9-35i 10; 0 3+19i 2-43i -73 -8; 7+13i -13 39 3+53i 99];
    A = A';
    % B chi gom cac phan thuc cac phan tu cua A
    B = real(A);
    % Tao vector hang C tu ma tran B
    C = reshape(B,1,25);
    D = C(C>=0);
    % sum of element in D
    sum(D)
end