% a = 8, b = 8, c= a+b-2
function [A] = a2(a,b)
    A = randi([0,1],a,b);
    A = reshape(A,a*b,1);
end