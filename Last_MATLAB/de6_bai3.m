T = 2;
t_y = 0:T/1000:T*10-T/1000;
y_all = [];
for i=0:9
t = linspace(T*i, T*(i+1), 1000);
y(t<=T*(i+1)) = exp(t-T*i);
y_all = [y_all y];
end 
plot(t_y,y_all);
axis([-T 11*T -1 20]);

t1 = linspace(0,T,1000);
y1(t1<=2) = exp(t1);

figure;
fft_y = fft(y1);
f = 1/T;
freq = fftshift(linspace(-f/2, f/2, length(y)));
X_mag = abs(fft_y); % Biên độ của phổ Fourier
X_phase = angle(fft_y); % Pha của phổ Fourier
subplot(211);
plot(freq, X_mag);
subplot(212);
plot(freq, X_phase);