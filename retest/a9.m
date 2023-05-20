% a = 8, b = 8, c= a+b-2
function [B] = a9(a,b)
    A = zeros(9,9);
    A = randi([0 100],9,9);
    A(a,b) = 4;
    A(A==5) = -5;
    B = A;
end