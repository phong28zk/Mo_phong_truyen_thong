function output = de5_bai3(a,b,dy,y0,h)
    a = 0; b = 8;
    dy = @(t) exp(-t).*cos(t) - 1;
    y(1) = y0; x(1) = a;
    h = 0.05;
    n = abs(a-b)/h;
    for k = 2:n
        x(k) = x(k-1) + h;
        y(k) = y(k-1) + h*dy(x(k));
    end
    output = [x' y' dy(x)'];  
    plot(x,y,'-','linewidth', 2);
    legend('y_gt');
    xlabel('x');
    ylabel('y');
end