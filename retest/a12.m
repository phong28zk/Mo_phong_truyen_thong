% a = 8, b = 8, c= a+b-2
function [B] = a12(a,b)
    A = zeros(9,10);
    A = randi([1 100],9,10);
    B = reshape(A,5,18);
end