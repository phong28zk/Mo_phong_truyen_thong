% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = zeros(a,b);
A = reshape(A,1,a*b);
for i=1:(a*b)
    A(i) = i;
end
disp(sum(A));
disp(mean(A));
