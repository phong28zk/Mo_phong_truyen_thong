% Code by Tran Nam Phong - B20DCVT288

% Slash 2

function [A,B] = slash2(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = randi([1,100],1,a*b);
    A = reshape(A,1,a*b);
    B = reshape(A,a*b,1);
end

