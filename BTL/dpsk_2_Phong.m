% Ma sinh vien: B20DCVT288
% Toc do ky hieu: 8Mbps

% Phuong phap dieu che: 2-DPSK
close all;
clear all;
clc;
M = 2;
Es = 10;
R = 8e6;
Rsym = 4e6;
Tsym = 1/Rsym;
n = 1000;
phy = 0;
fs = 32*Rsym;
fc = 2*Rsym;
ts = 1/fs;

% 1. Nhap tin hieu phat
data = randi([0 1],1,n);
data_sym = bi2de(reshape(data,log2(M), length(data)/log2(M)).','left-msb');
d = dpskmod(data_sym,M);

% 2. s(t) function
% s(t) = ∑ dk * p(t-kTsym) * e^(j*theta0) 
% p(t) = sqrt(2*Es/Tsym) * (1-cos(2*pi*t/Tsym))
% => s(t) = 
t = 0:ts:n/log2(M)*Tsym;
for i = 1:length(t)
    s(i) = 0;
    for k = 1:n/log2(M)
        p_kTsym(k) = sqrt(2*Es/Tsym)*(1-cos(2*pi*(t(i)-k*Tsym)/Tsym));
        s(i) = s(i) + d(k)*p_kTsym(k);
    end
end

% 3. Do thi bang goc
plot(t,s);
xlabel('Time');
ylabel('Amplitude');
title('Signal Waveform');

sing = s.*exp(1i*phy);
sing1 = sing.*exp(1i*2*pi*fc*t);

% 5. Do thi va pho tin hieu sau dieu che 
eyediagram(real(sing1), 20);
title('Eye Diagram of Signal');

% 6. Scatterplot
scatterplot(d,1,0,'or');
title('Scatterplot of Signal');

% 7. Do thi va pho tin hieu sau khi qua AWGN
figure;
sing1_noise = addnoise(sing1, 8);
subplot(211);
plot(t, real(sing1_noise));
xlabel('Time'); ylabel('Amplitude');
title('Signal Waveform with AWGN');
subplot(212);
% Draw spectrum of signal with awgn
N = length(sing1_noise);
xdft = fft(sing1_noise);
xdft = xdft(1:N/2+1);
psdx = (1/(fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:fs/N:fs/2;
plot(freq,10*log10(psdx));
grid on;
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
title('Spectrum of Signal with AWGN');

% 8. Eye diagram of signal with AWGN
eyediagram(real(sing1_noise), 20);
title('Eye Diagram of Signal with AWGN');

% 9. Scatterplot of signal with AWGN
d_noise = addnoise(d,8);