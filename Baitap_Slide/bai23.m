% Code by Tran Nam Phong - B20DCVT288

% Bai 23:
% Dung while de tinh gan dung sqrt(2) dua tren phuong phap newton
% x(n+1) = x(n) - f(x(n))/f'(x(n)), x0 = 2
% while cho toi khi x(n+1) - x(n) < 0.0001

function output = bai23()
    x0 = 2;
    x1 = x0 - (x0^2 - 2)/(2*x0);
    while abs(x1 - x0) > 0.0001
        x0 = x1;
        x1 = x0 - (x0^2 - 2)/(2*x0);
    end
    output = x1;
end

