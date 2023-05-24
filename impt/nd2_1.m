% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

T = a;
A = a*1.5;
f = 1/T;
fs = 32*f;
Ts = 1/fs;
t = 0:Ts:2*T;
x = A*sin(2*pi*t/T);
plot(t,x);
xlabel('t');
ylabel('A');



   



