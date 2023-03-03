% Code by Tran Nam Phong - B20DCVT288

% Bai 2.35
% Cho ma tran A = magic(3)
function [A,x,y] = bai2_35()
    A = magic(3);
    A(:,:,2) = magic(3)';
    x = size(A);
    y = ndims(A);
end
