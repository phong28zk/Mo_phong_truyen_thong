T = 10;
t_y = 0:T/1000:T*10-T/1000;
y_all = [];
for i=0:9
        t = linspace(T*i, T*(i+1), 1000);
        y(abs(t)<=T*(i+1)-T/2) = 1;
        y(abs(t)>=T*(i+1)-T/2) = 0;
        y_all = [y_all y];
end 
plot(t_y,y_all);
axis([-T 11*T -1 2]);

t1 = linspace(0,T,1000);
y1(abs(t1)<=T/2) = 1;
y1(abs(t1)>=T/2) = 0;

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