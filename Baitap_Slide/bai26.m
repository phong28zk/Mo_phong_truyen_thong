% Code by Tran Nam Phong - B20DCVT288

% Bai 26:
% Tim nghiem phuong trinh vi phan y'(t) + a*y(t) = r
% a = 1, r = 1, y(0) = 0; h = 0.25; t = 1
% RK 4

function output = bai26(a,r,y0,h,k1,k2)
    f = @(t,y) r - a*y;
    y_gt = @(t) (y0 - r/a)*exp(-a*t) + r/a;
    n = (k2 - k1)/h;
    t0 = k1;
    t(1) = t0; y(1) = y0;
    for i = 1:n
        k1 = f(t(i),y(i));
        k2 = f(t(i) + h/2, y(i) + h*k1/2);
        k3 = f(t(i) + h/2, y(i) + h*k2/2);
        k4 = f(t(i) + h, y(i) + h*k3);
        y(i+1) = y(i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
        t(i+1) = t(i) + h;
    end
    output = [t' y' y_gt(t)'];
    plot(t,y,'ro-','linewidth', 2);
    hold on
    plot(t,y_gt(t),'b*-','linewidth',2);
    legend('y_Euler','y_gt');
    grid on
end


