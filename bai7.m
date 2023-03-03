% Code by Tran Nam Phong - B20DCVT288

function [M,N,comp] = bai7()
    A = [ 1 -3 3 14 -10 12];
    B = [ 12 6 0 -1 -10 2];
    M = A&B;
    N = A|B;
    comp = A>B;
end

