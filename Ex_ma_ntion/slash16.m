% Slash 16
% Ve xung tam giac co chu ky T
function output = slash16(a,b)
    t = -10:0.01:10;
    f = @(t0, a0, b0) a0*sawtooth(2*pi*t0/b0, 0.5);
    plot(t, f(t, a, b), 'r--');
    axis([-10 10 -1 8]);
end