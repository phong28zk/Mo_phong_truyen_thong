function output = de1_bai3_2(a,b)
    fc = 200; fs = 32*fc;
    ts = 1/fs;
    t = 0:ts:1*10;
    f = sin(2*pi*t)+3*cos(4*pi*t);
    subplot(311);
    plot(t,f);
    ya = ammod(f,fc,fs,0);
    subplot(312);
    plot(t,ya);
    y_chan = awgn(ya,20);
    subplot(313);
    plot(t, y_chan);
end