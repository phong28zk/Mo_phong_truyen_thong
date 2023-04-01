% Code by Tran Nam Phong - B20DCVT288

% PCM luong tu hoa deu cho tin hieu roi rac
f = 1000;
fs = 8000;
mu = 255;
t = -4:0.05:4;
% sig = 0.5*randn(1,length(t));
x = 0.5*sin(2*pi*f*t);

% plot sig
stem(t,sig,'LineWidth',2);
hold on;

V = max(sig);
partition = 0:2^6-1;
codebook = 0:2^6
[~,~,distorl] = quantiz(sig,partition,codebook);

compsig = compand(sig,mu,V,'mu/compressor');
[~,quants] = quantiz(compsig,partition,codebook);
newsig = compand(quants,mu, max(quants),'mu/expander');
distor2 = sum((newsig-sig).^2)/length(sig);

plot([sig' compsig'], 'LineWidth', 2);
grid on; 
hold on;
set(gca, 'color', 'w');