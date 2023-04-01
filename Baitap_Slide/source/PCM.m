% Code by Tran Nam Phong - B20DCVT288

% PCM luong tu hoa deu

mu = 255;
t = -4:0.1:4;
sig = sin(t);
V = max(sig);
partition = 0:2^6-1;
codebook = 0:2^6
[~,~,distorl] = quantiz(sig,partition,codebook);

compsig = compand(sig,mu,V,'mu/compressor');
[~,quants] = quantiz(compsig,partition,codebook);
newsig = compand(quants,mu, max(quants),'mu/expander');
distor2 = sum((newsig-sig).^2)/length(sig);

plot([sig' compsig'], 'LineWidth', 2);
set(gca, 'color', 'w');