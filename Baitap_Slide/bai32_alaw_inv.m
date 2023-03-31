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
function x = bai32_alaw_inv(y, A)

    sign_y = sign(y);
    if abs(y) < 1/(1+log(A))
        x = sign_y .* abs(y) .* (1+log(A))/A;
    else if abs(y) >= 1/(1+log(A)) && abs(y) < 1
        x = sign_y .* (exp(abs(y)*(1+log(A))-1)) ./ A;
    end
end

    plot(y,x,'r');
    grid on;
    hold on;

end