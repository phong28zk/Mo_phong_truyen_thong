% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

f1 = 0;
f2 = 1;
f3 = f1+f2;

for i=3:N
    f3 = f1+f2;
    f1 = f2;
    f2 = f3;
end

disp(f3);