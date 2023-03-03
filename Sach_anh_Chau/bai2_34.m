% Code by Tran Nam Phong - B20DCVT288

% Bai 2.34
% Try to use magic, det, rank, rref, trace, cov, orth... in Matlab

function [A,B,C,D,E,F,G] = bai2_34()
    A = magic(5);
    B = det(A);
    C = rank(A);
    D = rref(A);
    E = trace(A);
    F = cov(A);
    G = orth(A);
end
