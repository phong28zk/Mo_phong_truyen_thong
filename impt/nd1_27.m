% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

b = b+2;
T = 1e-3;
t = linspace(0,T*b,1000*b);
x = square(2*pi*t/T, 50);
plot(t,x,'linewidth',2);
xlabel('x'); ylabel('A');
axis([0 b*T -1.5 1.5]);


   



