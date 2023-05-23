% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = [1 2; 3 4];
b = b+4;
A = randi([1 100],b,b);
for i=1:b
    for j=1:b
        A(i,j) = a;
    end
end
A(b,b) = 10;
A(1,1) = 1; A(1,2) = 2;
A(2,1) = 3; A(2,2) = 4;
disp(A);