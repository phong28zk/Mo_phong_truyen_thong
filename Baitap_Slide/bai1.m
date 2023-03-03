% Code by Tran Nam Phong - B20DCVT288

function [M,k,v,w,y] = bai1()
    M = [1 0 0; 0 j 1; j j+1 -3];   % vector M
    k = 2.75;                       % value k
    v = [1;3;-7;-0.5];              % vector v
    w = [1 -5.5 -1.7 -1.5 3 -10.7]; % vector w
    y = 1:0.5:100.5;                % vector y
end

