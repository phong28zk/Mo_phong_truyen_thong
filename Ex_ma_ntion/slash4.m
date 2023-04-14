% Code by Tran Nam Phong - B20DCVT288

% Slash 4

function [A,x,y] = slash4(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = randi([1,100],1,a*b);
    A = reshape(A,1,a*b);
    x = min(A);
    y = max(A);
end

