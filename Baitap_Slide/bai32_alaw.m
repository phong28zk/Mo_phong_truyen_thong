% Code by Tran Nam Phong - B20DCVT288

% Bai 32:
% Xay dung cac function de nen va giai nen tin hieu
% theo luat A co dang
% function [y,amax] = alaw(x,A)
% function x = alawinv(y,A)


function [y,a_max] = bai32_alaw(A)
    fs = 8000;
    t = 0:1/fs:1-1/fs;
    f = 1000;
    x = @ (t) sin(2*pi*f*t);
    x = x(t);
    a_max = max(abs(x));
    sign_x = sign(x);
    if(a_max) <= 1/A
        y = A * a_max * (1+log(1/A));
    else
        y = (1+log(A*abs(x))) ./ (1+log(A*a_max));
    end
    y = y .* sign_x;
end


