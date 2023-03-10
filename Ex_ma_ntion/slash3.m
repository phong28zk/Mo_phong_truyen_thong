% Code by Tran Nam Phong - B20DCVT288

% Slash 3

function [A,B] = slash3(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = randi([1,100],1,a*b);
    B = diag(diag(A));
end

