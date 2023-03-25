% Code by Tran Nam Phong - B20DCVT288

% Slash 14

function [A,B] = slash14(a,b)
    x = -2*pi:pi/20:2*pi;
    y1 = sin(x);
    y2 = cos(x);
    h1 = plot(x,y1,'r--');
    grid on;
    hold on;
    h2 = plot(x,y2, 'b--');
    hold off;
    title('y = sin(x) & y = cos(x)');
    ylabel('y');
    xlabel('x');
    hold on;
    xhalf = -2*pi:pi/2:2*pi;
    yhalf = sin(xhalf);
    stem(xhalf, yhalf, 'rp','MarkerFaceColor','red','MarkerEdgeColor','navy');
    yhalf = cos(xhalf);
    stem(xhalf, yhalf, 'gp', 'MarkerFaceColor','green', 'MarkerEdgeColor','white');
    legend('sin(x)','cos(x)', 'Location', 'southwest');    
end

