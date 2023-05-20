% a = 8, b = 8, c= a+b-2
function [A] = a3(a,b)
    A = randi([0,100],a,b);
    A = diag(diag(A));
end