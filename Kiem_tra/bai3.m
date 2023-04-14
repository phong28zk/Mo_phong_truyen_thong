% Tinh tich phan cua ham x^2 + 3x - 1 tu a -> a+b
% Voi so diem giua N = 3*a*b
% Su dung phuong phap diem giua

function output = bai3(a,b)
    N = 3*a*b;
    k = b/N;
    x1 = a;
    x2 = a+b;
    x = x1:k:x2;
    y = x.^2+3.*x-1;
    output = 0;
    for i = 1:N
        output = output + y(i);
    end
    output = output*k;
end