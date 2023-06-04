a = 1; b = 8; c = a+b-2;
r = 1;
dy = @(y) r - a*y;
y_gt = @(t) (0 - r/a)*exp(-a*t) + r/a;

h = 0.25;
t1 = 1; t2 = 2;
y(1) = 0;
t = t1:h:t2; N = abs(t1-t2)/h;
for i=1:N
    y(i+1) = y(i) + h*dy(y(i));
end

plot(t,y,'r');
legend('Euler')
hold on;
plot(t,y_gt(t));
legend('Giai tich')
