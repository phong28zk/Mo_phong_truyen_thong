function output = pcm_khongdeu(mu,M)
    t = -4:0.01:4;
    x = sin(2*pi*t);
    V = max(x);
    partition = 0:M-1;
    codebook = 0:M;
    distor1 = quantiz(x,partition,codebook);
    compsig = compand(x, mu, V, 'mu/compressor');
    quants = quantiz(compsig,partition,codebook);
    new_x = compand(quants, mu, max(quants), 'mu/expander');
    distor2 = sum((new_x - x ).^2)/length(x);

    plot([x' compsig'], 'LineWidth', 2);
    legend('Original Signal', 'Compressed Signal');
end
