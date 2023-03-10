% Code by Tran Nam Phong - B20DCVT288

% Slash 6

function [output] = slash6(a,b)

    A = ones(a,a);
    B = ones(a,a);

    B(1:end,1:end) = a;

    output = [A B];

end

