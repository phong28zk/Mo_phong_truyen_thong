% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

t = -10:1e-2:10;
f = @(t0,a0,b0) a0*rectpuls(t0,b0);
plot(t,f(t,a,b), 'r--');
axis([-10 10 -1 8]);
