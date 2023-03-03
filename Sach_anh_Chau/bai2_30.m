% Code by Tran Nam Phong - B20DCVT288

% Bai 2.30
% Cho ma tran A 9x10 co gia tri giam dan tu 90 ve 1.
% Su dung matlab de tao ma tran co so hang giam dan tu 10 den 1

% function A = bai2_30()
%     A = ones(9,10);
%     A(1:numel(A)) = numel(A):-1:1;
%     for idx = 9:-3:3
%         reshape(A,idx,numel(A)/idx);
% end

function A = bai2_30()
    A = ones(9,10);
    A(1:90) = 90:-1:1;
    for idx = 9:-3:3
        reshape(A,idx,numel(A)/idx);
end

