T = 10;
t = 0:T/100:T*10;
rect = zeros(size(t)); 
check = 0;
test=0;

for i = 1:length(t)
    if t(i) <= test+T/2
        rect(i)= -1; 
    end
    if t(i) == test+T
        check = check+1;
        test = T*check;
        continue;
    end
    if t(i) > test+T/2
        rect(i) = 0;
    end
end

plot(t, rect, 'LineWidth', 2); 

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