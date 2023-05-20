% a = 8, b = 8, c= a+b-2
function [B,C] = a8(a,b)
    A = zeros(3,5);
    A = randi([-2 12],3,5);
    B = A(A>8);
    C = A(A<=8);
end