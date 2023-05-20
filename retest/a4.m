% a = 8, b = 8, c= a+b-2
function [a,b] = a4(a,b)
    A = randi([1,100],a,b);
    A = reshape(A,1,a*b);
    a = max(A);
    b = min(A);
end