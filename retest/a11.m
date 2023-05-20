% a = 8, b = 8, c= a+b-2
function [A] = a11(a,b)
    b = b+4;
    A = [1 2;3 4];
    A = zeros(b,b);
    A(:) = a;
    A(b,b) = 10;
end