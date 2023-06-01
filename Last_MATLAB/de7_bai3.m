a = 8; b = 1; t0 = 0; t1 = b;
dy = @(x,y) 1+4*y;
h = 0.1;
t = 0:h:1;
N = length(t)-1;
y(1) = 1;
x(1) = t0;
i = 1;
while(i<=N)
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h*dy(x(i),y(i));
    i=i+1;
end
disp([x' y']);

plot(x,y,"LineWidth",2);


