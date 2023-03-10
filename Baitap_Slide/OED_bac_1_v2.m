% Code by Tran Nam Phong - B20DCVT288

% OED bac 1: y'(t) + a*y(t) = r with y(0) = y0;
% Solve it by Euler method

function output = Euler(a, r, y0, h, t0, tf)
    t = t0:h:tf;
    y = zeros(1, length(t));
    y(1) = y0;
    for i = 1:length(t)-1
        y(i+1) = y(i) + h*(r - a*y(i));
    end
    output = y;
end

