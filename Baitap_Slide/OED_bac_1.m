% Code by Tran Nam Phong - B20DCVT288

% OED bac 1: y'(t) + a*y(t) = r with y(0) = y0;
% Solve it!

function output = bac1(a,r,y0)
    syms t;
    y = dsolve('Dy + a*y = r','y(0) = y0','t');
    output = y;
end

