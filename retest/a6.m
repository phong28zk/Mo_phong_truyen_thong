% a = 8, b = 8, c= a+b-2
function [a,b] = a6(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = (1:a*b);
    a = sum(A(:));
    b = mean(A(:));
end