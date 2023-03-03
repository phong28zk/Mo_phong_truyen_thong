% Code by Tran Nam Phong - B20DCVT288

% Bai 2.29
% Cho 1 ma tran A(3,10) co gia tri tu 1 den 30.
% Viet chuong trinh tao cac ma tran sau:
% Ma tran B la ma tran 1x30
% Ma tran C la ma tran 30x1
% Ma tran D la ma tran 5x6
% Ma tran E la ma tran 2x15

% Su dung ham Reshape de tao cac ma tran


function [A,B,C,D] = bai2_29()
    A = zeros(3,10);
    A(1:30) = 1:30;
    B = A(:);
    C = A(:)';
    D = reshape(A,5,6);
    E = reshape(A,2,15);
end
