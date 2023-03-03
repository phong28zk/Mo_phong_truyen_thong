% Code by Tran Nam Phong - B20DCVT288

function [M,N] = bai8()
    C = [1 2 3 4 10; -22 1 11 -12 4; 8 1 6 -11 5; 18 1 11 6 4];
    % find number > 10 and < -10
    for i = 1:4
        for j = 1:5
            if C(i,j) <= 10 && C(i,j) >= -10
                M(i,j) = C(i,j);
            end
        end
    end
    % other function to export
    % M = C(C <= 10 & C >= -10);
end

