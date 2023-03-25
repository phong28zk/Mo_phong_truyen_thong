% Code by Tran Nam Phong - B20DCVT288

% EXP: Mo phong tin hieu tuong tu don tan
% x_k = A*e^(j*2*pi*f_0*k/f_s + phi)

function output = my_dft()
    fm = 100*100;
    t = 0:1/fm:2;
    x1 = cos(2*10*pi*t + pi/2);
    x2 = 2*cos(2*10*2*pi*t + pi);
    x3 = 3*cos(2*pi*10*3*t + 3*pi/2);
    output = x1 + x2 + x3;
    %y = interp(t, 120*pi);
    plot(t, output);
end