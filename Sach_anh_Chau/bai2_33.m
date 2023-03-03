% Code by Tran Nam Phong - B20DCVT288

% Bai 2.34
% Try to use magic, det, rank, rref, trace, cov, orth... in Matlab

function [x,y,z,t,u,v] = bai2_33()
    x = randn(3,3);
    y = randn(3,3);
    z = x/y;
    t = x\y;
    u = (y'/x')';
    v = (y'\x')';

    % => z = v; t = u;
end
