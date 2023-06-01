N = 10;
M = 8; k = log2(M);
a = 8; b = 8; c = a+b-2;
bits = randi([0 M-1],1,N*5);
y_mod = pskmod(bits, M);
scatterplot(y);
y_awgn = awgn(y_mod,2*a);
scatterplot(y_awgn);




