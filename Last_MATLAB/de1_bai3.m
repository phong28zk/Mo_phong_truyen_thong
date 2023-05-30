function output = bai3_de1(a,b)
    fc = 200; fs = 32*fc;
    ts = 1/fs;
    t = 0:ts:1/5*10;
    f = sin(2*pi*t)+3*cos(4*pi*t);
    subplot(311);
    plot(t,f);
    c = sin(2*pi*fc*t);
    ya = (1+f).*c;
    subplot(312);
    plot(t,ya);
    y_chan = awgn(ya,20);
    subplot(313);
    plot(t, y_chan);
    
end