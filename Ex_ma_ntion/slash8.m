% Code by Tran Nam Phong - B20DCVT288

% Slash 8

function [A,B,C] = slash8(a,b)
    A = randi(100,3,5);
    B = A(A>8);
    C = A(A<=8);
end

