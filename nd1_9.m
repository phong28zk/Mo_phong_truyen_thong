% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = zeros(3,5);
A = reshape(A,1,3*5);
A(1:(3*5)) = (1:(3*5))-3;
B = A(A>a);
C = A(A<=a);

disp(B); disp(C);
