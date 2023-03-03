% Code by Tran Nam Phong - B20DCVT288


function [M,V,b1,z] = bai2()
    M = [1 0 0; 0 j 1; j j+1 -3];   % vector M
    V = [M M; M M];                 % vector V
    % Delete the 2nd row and 3rd column of V
    b1 = V;
    b1(2, :) = [];
    b1(:, 3) = [];
    % z from 4th row of V
    z = V(4, :);
    % The V(4,2) now is equal j+5
    V(4,2) = j+5;
end

