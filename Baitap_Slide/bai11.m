% Code by Tran Nam Phong - B20DCVT288

function output = bai11(t)
    t = 0:0.1:10;
    output = sin(2*pi*5.3*t) + cos(2*pi*5.3*t);
    % round output
    output = round(output);
end


