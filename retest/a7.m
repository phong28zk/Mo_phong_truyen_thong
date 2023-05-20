% a = 8, b = 8, c= a+b-2
function [B,C,z] = a7(a,b)
    A = zeros(10,11);
    A = randi([1 100],10,11);
    B = A(a,:);
    C = A(:,b);
    z = A(a,b);
end