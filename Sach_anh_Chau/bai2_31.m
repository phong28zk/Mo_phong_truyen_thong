% Code by Tran Nam Phong - B20DCVT288

% Bai 2.31
% Cho ma tran A = [1 2 3; 4 5 6]
% Tao cac ma tran nhu hinh duoi.

function [A,B,C,D,E,F,G,H,K]= bai2_31()
    A = [1 2 3; 4 5 6];
    B = 3*A + 1;
    C = 1./A;
    D = A.*C;
    E = D-A;
    F = 1-A;
    G = A.^2;
    H = A^2;
    K = A*A';
end

