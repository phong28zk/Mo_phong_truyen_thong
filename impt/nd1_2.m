% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = randi([0 1],a,b);
B = reshape(A,1,a*b);
disp(B);