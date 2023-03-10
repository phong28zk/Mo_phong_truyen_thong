% Code by Tran Nam Phong - B20DCVT288

% Slash 1

function output = slash1(a,b)
    A = zeros(a,b);
    A(1:(a*b)) = randi([1,100],1,a*b);
    output = size(A);
end

