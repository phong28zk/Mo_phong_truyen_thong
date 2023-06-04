function output = phase_s(a,b,N)
    bits = randi([0 1],1,N);
    M = 2; k = log2(M);
    txSig = pskmod(bits, M);
    scatterplot(txSig);
    rxSig = awgn(txSig, 10);
    scatterplot(rxSig);
end