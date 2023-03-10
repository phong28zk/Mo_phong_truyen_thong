% Code by Tran Nam Phong - B20DCVT288

% Slash 5

function [x,y] = slash5(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = 1:(a*b);
    % x is sum of all elements in matrix
    x = sum(A(:));
    % y is avg of all elements in matrix
    y = mean(A(:));
    
end

