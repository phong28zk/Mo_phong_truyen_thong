% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

    Mu = 255;
    t = -a:0.01:a;
    y=  exp(t);
    V = max(y);
    partition = 0:2^6-1;
    codebook = 0:2^6;
    [~,~,distor1] = quantiz(y, partition, codebook);
    compsig = compand(y, 255, V, 'mu/compressor');
    [~,quants] = quantiz(compsig, partition, codebook);

    newsig = compand(quants, 255, max(quants), 'mu/expander');
    distor2 = sum((newsig-y).^2)/length(y);

    plot([y' compsig'], 'linewidth', 2);
    legend('Original Signal', 'Compressed Signal');
    set(gca, 'fontsize', 16);

