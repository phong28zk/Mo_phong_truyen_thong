function output = test7()
    w = 0:0.01:5;
    H1 = 1./1i*w;
    H2 = 1./(1+1i*w);
    plot(w, H1);
    figure;
    plot(w, H2);
    figure;
end