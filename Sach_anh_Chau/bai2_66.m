% Code by Tran Nam Phong - B20DCVT288

% Bai 2.66

function [A] = bai2_66()
    N = 50;
    x = 0:2*pi/N:4*pi;
    f = @sin;
    g = @cos;

    y1 = f(x);
    y2 = g(x);

    e1 = std(y1)*ones(size(x));
    e2 = std(y2)*ones(size(x));

    plot(x,y1,'--g','LineWidth',2);
    errorbar(x,y1,e1);
    xlabel('x');
    ylabel('y1,y2');

    grid on; 
    hold on;

    plot(x,y2,'--b','LineWidth',2);
    axis([0 4*pi -1.5 1.5]);
end

