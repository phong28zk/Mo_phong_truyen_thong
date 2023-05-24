% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

f = 100;
fc = 1000*f;
fm = 32*fc;
t = 0:1/fm:0.02;
m = a*cos(2*pi*f*t + b) + cos(2*pi*f/2*t + b);
figure(1);
plot(t,m);

c = sin(2*pi*fc*t);

% PM
yp = sin(2*pi*fc*t + m);

% AM
ya = (1+m).*c;

% FM
yf = sin(2*pi*fc*t + m);

figure(2);
subplot(311);
plot(t,ya);
axis([0 0.02 -3 3]);
title('AM');

subplot(312);
plot(t,yp);
axis([0 0.0002 -1 1]);
title('PM');

subplot(313);
plot(t,yf);
axis([0 0.0005 -1 1]);
title('FM');


