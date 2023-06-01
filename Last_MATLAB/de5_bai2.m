% Tao chuoi bit 100 phan tu
bits = randi([0 1],1,100);

% QPSK chuoi bit va ve gian do chom sao
M = 4; k = log2(M);
q = 1;
% Reshape and convert to value from 0 to M-1
bits = reshape(bits, length(bits)/k, k);
% Convert to integers
sym = bi2de(bits, 'left-msb');
sym = sym';
disp(sym);
N = 10;
txSig = pskmod(syms,M);
scatterplot(txSig);
awgnSig = awgn(txSig,N);
scatterplot(awgnSig);