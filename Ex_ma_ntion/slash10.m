% Code by Tran Nam Phong - B20DCVT288

% Slash 9

function [A,B] = slash10(a,b)
    A = randi(100,9,9);
    B = randi(9,9);
    B = [A B];
    B(a,:) = [];
    B(:,b) = [];
    B(a*b) = [];
end

