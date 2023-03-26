% Code by Tran Nam Phong - B20DCVT288
function [p,s] = bai20()
    r = 3;
    p = 2*pi*r;
    s = pi*r^2;
    % print result with 5 digits after decimal point
    fprintf('Perimeter = %.5f\n',p);
    fprintf('Square = %.5f',s);
    x = -r:0.01:r;
    y = sqrt(r^2 - x.^2);
    plot(x,y,'r',x,-y,'r');
    axis equal;
    grid on;
    hold on;
end



