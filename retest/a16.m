% a = 8, b = 8, c= a+b-2
function x = a16(a,b,c)
    t = -10:1e-2:10;
    f = @(t0,a0,b0) a0*sawtooth(2*pi*t0/b0,0.5);
    plot(t,f(t,a,b), 'r--');
    axis([-10 10 -1 8]);
end