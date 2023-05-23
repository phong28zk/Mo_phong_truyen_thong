% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = randi([1 100],10,11);
B = A(a,:);
C = A(:,b);
z = A(a,b);
disp(A); disp(B); disp(C); disp(z);
