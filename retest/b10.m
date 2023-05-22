M = 8; k = log2(M);
N = 8;
a = 8; b = 8;
bits = randi([0 N-1], 1, N*50);
SNR_db = 2*a;
SNR = 10^(SNR_db/10);

% Modulation qammod
txSig = qammod(bits, M);

% Channel with AWGN
rxSig = awgn(txSig, SNR_db, 'measured');
scatterplot(rxSig);
set(gcf, 'color', 'w');

txSig_N = qammod(bits, M, 'UnitAveragePower', true);
rxSig_N = awgn(txSig_N, SNR_db, 'measured');
scatterplot(rxSig_N);
set(gcf, 'color', 'w');