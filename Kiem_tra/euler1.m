% Giai phuong trinh vi phan theo phuong phap Euler
% y' = a*x^2 - b*y
% y(0) = 0, x(0) = 0, khoang chia h = a/20

function [x,y] = euler1(a,b)
    h = a/20;
    x = 0:h:a;
    y = zeros(1,length(x));
    for i = 1:length(x)-1
        y(i+1) = y(i) + h*(a*x(i)^2 - b*y(i));
    end
    plot(x,y,'r');
    hold on;
end
    
    