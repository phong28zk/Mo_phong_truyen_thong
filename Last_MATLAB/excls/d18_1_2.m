a = 3; b = 2;
s = @(t) 3*(sin(100*a*pi*t + pi/2).^2);
f = 50*a; T = 1/f;
fs = 100*f; Ts = 1/fs;

for i=0:(3*b-1)
    t = linspace(T*i, T*(i+1), 1000);
    y = s(t-T*i);
    plot(t,y); hold on;
end
axis([0 10*T -5 5]);