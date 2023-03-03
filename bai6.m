% Code by Tran Nam Phong - B20DCVT288

function [M,N] = bai6()
    A = [-1 3.5 2; 0 1 -1.3; 1.1 2 1.9];
    B = [ 1 0 -1; -1.5 1.5 -3; 1 1 1];
    % M is A & B, N is A | B
    M = A & B;
    N = A | B;
end

