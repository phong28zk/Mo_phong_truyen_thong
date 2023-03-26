% Code by Tran Nam Phong - B20DCVT288
function [p,s] = bai19()
    r = 3;
    p = 2*pi*r;
    s = pi*r^2;
    x = -r:0.01:r;
    y = sqrt(r^2 - x.^2);
    plot(x,y,'r',x,-y,'r');
    axis equal;
    grid on;
    hold on;
end



