% Ho va ten: Tran Nam Phong
% Ma sinh vien: B20DCVT288
% Toc do ky hieu: 8Mbps
% Phuong phap dieu che: 2-DPSK

close all;
clear all;
clc;
M = 2;              % So muc
Es = 10;            % Nang luong trung binh cua tin hieu truyen
R = 8e6;            % Toc do truyen bit
Rsym = 4e6;         % Toc do truyen ky hieu
Tsym = 1/Rsym;      % Chu ky truyen ky hieu
n = 10000;          % So ky hieu truyen
phy = 0;            % Goc pha ban dau
fs = 32*Rsym;       % Tan so lay mau
fc = 2*Rsym;        % Tan so song mang
ts = 1/fs;          % Chu ky lay mau

% 1. Nhap tin hieu phat
data = randi([0 1],1,n);
data_sym = bi2de(reshape(data,log2(M), length(data)/log2(M)).','left-msb');
d = dpskmod(data_sym,M);

% 2. s(t) function
% s(t) = ∑ dk * p(t-kTsym) * e^(j*theta0) 
% p(t) = sqrt(2*Es/Tsym) * (1-cos(2*pi*t/Tsym))
% => s(t) = ∑ dk * sqrt(2*Es/Tsym) * (1-cos(2*pi*(t-k*Tsym)/Tsym)) * e^(j*theta0)
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

% 4. Do thi va pho tin hieu truoc dieu che
figure;
% Do thi tin hieu
subplot(211);
plot(t, real(sing1));
xlabel('Time'); ylabel('Amplitude');
title('Signal Waveform before modulate');
% Pho tin hieu
subplot(212);
N = length(sing1);
xdft = fft(sing1);
xdft = xdft(1:N/2+1);
psdx = (1/(fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:fs/N:fs/2;
plot(freq,10*log10(psdx));
grid on;
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
title('Spectrum of Signal before modulate')

% 5. Do thi tin hieu sau dieu che 
eyediagram(real(sing1), 20);
title('Eye Diagram of Signal');

% 6. Scatterplot - bieu do chom sao
scatterplot(d,1,0,'or');
title('Scatterplot of Signal');

% 7. Do thi va pho tin hieu sau khi qua AWGN
figure;
sing1_noise = awgn(sing1, 10, 'measured');
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
d_noise = awgn(d, 10, 'measured');
h = scatterplot(d_noise,1,0,'x');
hold on;
scatterplot(d,1,0,'or');
title('Scatterplot of Signal with AWGN');

% 10. Xu ly va khoi phuc, giai dieu che tin hieu
sr = sing1_noise.*exp(-1i*2*pi*fc*t)*exp(-1i*phy);
% Giai dieu che tin hieu
sr = dpskdemod(sr,M);
plot(t, real(sr));
xlabel('Time'); ylabel('Amplitude');
title('Signal Waveform after Raised Cosine Filter');

% 11. Scatterplot of signal after Raised Cosine Filter
scatterplot(sr,1,0,'or');
title('Scatterplot of Signal after Raised Cosine Filter');

% 12. Eye diagram of signal after Raised Cosine Filter
eyediagram(real(sr), 20);
title('Eye Diagram of Signal after Raised Cosine Filter');

% B. BER by Monte-Carlo
SNR_db = [ 2 5 10 ];
for i = 1:length(SNR_db)
    SNR = exp(SNR_db(i)*log(10)/10);
    theory_BER(i) = 0.5*erfc(sqrt(SNR));
    sim_BER(i) = monte_carlo_simulation(SNR_db(i), 1e5);
end

figure;
semilogy(SNR_db, theory_BER, 'b');
hold on;
semilogy(SNR_db, sim_BER, 'r');
grid on;
legend('Theoretical BER', 'Simulation BER');
xlabel('SNR (dB)');
ylabel('BER');
title('BER by Monte-Carlo');

% Monte-Carlo Simulation
function [ber_avg] = monte_carlo_simulation(snr_db, num_trials)
    % snr_db: Tỷ lệ tín hiệu nhiễu được biểu diễn dưới dạng dB
    % num_trials: Số lần thử (trials) để đánh giá hiệu năng
    % ber_avg: Mức độ bit (bit error rate) trung bình dựa trên kỹ thuật Monte Carlo
    
    % Thiết lập các thông số của hệ thống truyền thông số
    num_bits = 10000;
    data = randi([0 1], 1, num_bits);
    
    % Tính mức độ bit trung bình sau nhiều lần thử (trials)
    ber_sum = 0;
    for i = 1:num_trials
        % Tạo ra tín hiệu điều chế (modulated signal)
        modulated_signal = dpskmod(data, 2);
        
        % Tạo ra tín hiệu nhiễu Gauss với mức độ nhiễu được biểu diễn dưới dạng SNR_db
        snr_linear = 10^(snr_db/10);
        noise = randn(size(modulated_signal));
        power_signal = mean(abs(modulated_signal).^2);
        power_noise = power_signal/snr_linear;
        noise = noise*sqrt(power_noise);
        received_signal = modulated_signal + noise;
        
        % Giải điều chế tín hiệu để lấy lại dãy số bit
        demodulated_data = dpskdemod(received_signal, 2);
        
        % Tính số lượng bit sai khác giữa dãy số ban đầu và dãy số được lấy lại
        num_errors = sum(data ~= demodulated_data);
        
        % Tính mức độ bit dựa trên số lượng bit sai khác
        ber_sum = ber_sum + num_errors/num_bits;
    end
    ber_avg = ber_sum/num_trials;
end


    

    
