M = 8; k = log2(M);
N = 8;
a = 8; b = 8;
bits = randi([0 1], 1, N*50);
SNR_db = 2*a;
SNR = 10^(SNR_db/10);

% Modulation
y = dpskmod(bits, M);

% Channel with AWGN
y = awgn(y, SNR_db);

% Demodulation
bits_hat = dpskdemod(y, M);

% Scatter plot
scatterplot(y);