% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

b = b+2;
T = 1e-3;
f = 1/T;
fs = 100*T;
t = linspace(0,T*b,1000*b);
x = sawtooth(2*pi*f*t)*1/2 + 1/2;
plot(t,x,'linewidth',2);
xlabel('x'); ylabel('A');
axis([0 b*T -1.5 1.5]);


   



