% Code by Tran Nam Phong - B20DCVT288

% Slash 15
% Ve xung chu nhat co chu ky T
function output = slash15(a,b)
    t = -10:0.01:10;
    f = @(t0, a0, b0) a0*rectpuls(t0, b0);
    plot(t, f(t, a, b), 'r--');
    axis([-10 10 -1 8]);

end

