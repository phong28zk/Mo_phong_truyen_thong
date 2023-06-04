function output = conghuong(a,b)
    fc = a*100; fs = 32*fc;
    ts = 1/fs;
    
    f1 = 15; f2 = 5;
    f_ch = min(f1, f2); T_ch = 1/f_ch;
    t = 0:ts:5*T_ch;
    f = sin(30*pi*t) - 3*cos(10*pi*t);
    subplot(311);
    plot(t,f);

    c = sin(2*pi*fc*t);
    ya = (1+f).*c;
    subplot(312);
    plot(t,ya);

    ya = awgn(ya,20);
    subplot(313);
    plot(t,ya);
    

end