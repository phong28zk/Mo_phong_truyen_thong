% a = 8, b = 8, c= a+b-2
function [output, A] = a1(a,b)
    A = randi([0,1],a,b);
    output = size(A);
end