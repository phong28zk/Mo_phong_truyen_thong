% Code by Tran Nam Phong - B20DCVT288

% Slash 9

function [A] = slash9(a,b)
    A = randi(100,9,9);
    A(a,b) = 4;
    for i = 1:9
        for j = 1:9
            if A(i,j) == 5
                A(i,j) = -5;
            end
        end
    end
end

