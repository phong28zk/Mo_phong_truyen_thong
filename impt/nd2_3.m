% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

T = 0.01;
delta = 0.1;
x = -a:T:a;
y = exp(x);

yq = zeros(size(y));
for i = 1:length(x)
    if y(i) >= 0
        yq(i) = delta * floor(y(i)/delta + 1/2);
    else
        yq(i) = delta * ceil(y(i)/delta - 1/2);
    end
end

plot(x,y,'LineWidth',2)
hold on
plot(x,yq,'r--')
xlabel('x')
legend('Tín hiệu trước khi lượng tử hoá','Tín hiệu sau khi lượng tử hoá')

