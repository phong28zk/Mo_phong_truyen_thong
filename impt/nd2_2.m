% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

x = linspace(-a, a, 1e5);
y = exp(x);

m = 8;
levels = 2^m;

ymax = max(y);
ymin = min(y);

delta = (ymax-ymin)/levels;
y_quant = round((y-ymin)/delta);

figure;
plot(x,y,'g', 'LineWidth',2);
hold on;
plot(x,y_quant*delta + ymin, 'r', 'LineWidth', 2);

xlabel('x');
ylabel('y');
legend('Ori Sig', 'Quant Sig');
grid on;


   



