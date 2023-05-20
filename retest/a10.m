% a = 8, b = 8, c= a+b-2
function [C] = a10(a,b)
    A = zeros(9,9);
    A = randi([0 100],9,9);
    B = randi(100,9);
    C = [A B];
    C(a,:) = [];
    C(:,b) = [];
    C(a*b) = [];
end