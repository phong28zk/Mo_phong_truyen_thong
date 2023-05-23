% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = randi([1 100],9,9);
B = randi([1 100],1,9);
C = [A;B];
C(a,:) = [];
C(:,b) = [];
disp(C);

