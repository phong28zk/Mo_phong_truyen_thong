clear all
close all
a =1;
b = 0;
f = 100;
fc = 1000*f;
fm = 16*2*fc;
t = 0:1/fm:0.02;
% song tin hieu
m = a*cos(2*pi*f*t + b)+cos(2*pi*f/2*t + b);
figure(1)
plot(t,m)
% song mang
c = sin(2*pi*fc*t);
% tin hieu dieu che pm
yp = sin(2*pi*fc*t + a*cos(2*pi*f*t + b)+cos(2*pi*f/2*t + b));
% dieu che am
ya = (1+m).*c;
% dieu che fm
yf = sin(2*pi*fc*t + a*cos(2*pi*f*t + b)+cos(2*pi*f/2*t + b));
figure(2)
subplot(311)
plot(t,ya)
axis([0 0.02 -5 5])
title('dieu che am')
subplot(312)
plot(t,yp)
axis([0 0.0002 -1 1])
title('tin hieu dieu che pm')
subplot(313)
plot(t,yf)
axis([0 0.0005 -1 1])
title('dieu che fm')