function output = de4_bai2(N,M)
    data = randi([0 M-1], 1, N);
    pmod = qammod(data, M);
    scatterplot(pmod);
    
end