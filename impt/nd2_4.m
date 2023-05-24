% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

M = 2^M;
T = 0.01;
x = -a:T:a;
y = exp(t);
ymax = max(y);
partition = 0:2^6-1;
codebook = 0:2^6;
[~,~,distor1] = quantiz(y, partition, codebook);
compsig = compand(y, M-1, ymax, 'mu/compressor');
[~,quants] = quantiz(compsig, partition, codebook);

newsig = compand(quants, M-1, max(quants), 'mu/expander');
distor2 = sum((newsig-y).^2)/length(y);

plot([y' compsig'], 'linewidth', 2);
legend('Org Sig', 'Com Sig');
set(gca, 'fontsize', 16);

