% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

b = b+2;
T = 1e-3;
for i=0:N
    t = linspace(T*i, T*(i+1), 1000);
    y = exp((t-T*i).^2);
    plot(t,y);
    hold on;
    xlabel('x');
    ylabel('A');
end



   



