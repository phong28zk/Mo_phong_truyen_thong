function a28(a,b,T)
    b = b+2;
    f = 1/T;
    fs = 100*f;
    t = linspace(0, b*T, fs*b*T);
    x = (1/2) * sawtooth(2*pi*f*t) + 1/2;
    plot(t,x,'LineWidth',2);
    grid on;
    xlabel('t');
    ylabel('Amb');
    grid on;
    axis([0 b*T -0.5 1.5]);
end