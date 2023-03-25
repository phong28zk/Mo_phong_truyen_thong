% Code by Tran Nam Phong - B20DCVT288

% Slash 11

function [A,B] = slash11(a,b)
    A = [1 2; 3 4];
    B = a*ones(b+4,b+4);
    for i = 1:2
        for j = 1:2
            B(i,j) = A(i,j);
        end
    end
    B(b+4, b+4) = 10;
end

