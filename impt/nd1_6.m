% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = ones(a,a);
A = diag(diag(A));
B = zeros(b,b);
B(1:b*b) = b;
C = [A B];
disp(C);
