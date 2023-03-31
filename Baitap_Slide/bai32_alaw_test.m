% Code by Tran Nam Phong - B20DCVT288

% Bai 32:
% Xay dung cac function de nen va giai nen tin hieu
% theo luat A co dang
% function [y,amax] = alaw(x,A)
% function x = alawinv(y,A)

% fs = 8000;
% t = 0:1/fs:1-1/fs;
% f = 1000;
% x = 0.5 * sin(2 * pi * f * t);
% A = 0.7
function [y,a_max] = bai32_alaw_test(A,x)
    sign_x = sign(x);
    if abs(x) < 1/A
        y = sign_x * A .* log(1 + A * abs(x));
    else if abs(x) >= 1/A && abs(x) <= 1
        y = sign_x * (1 + log(A * abs(x)));
        end
    end
    a_max = max(abs(x));
    plot(x,y);
    grid on;
end




