function output = de4_bai1(T,a,b)
    t = -10:1e-2:10;
    t = linspace(0,T*b,1000*b);
    x = square(2*pi*t/T, 50);
    x = (x-1)/2;
    plot(t,x,'linewidth',2);
    xlabel('x'); ylabel('A');
    axis([0 b*T -1.5 1.5]);
    f = 1/T;
    X = fft(x); % Biến đổi Fourier của tín hiệu xung vuông
    freq = fftshift(linspace(-f/2, f/2, length(x))); % Tần số ứng với các phần tử của X
    X_mag = abs(X); % Biên độ của phổ Fourier
    X_phase = angle(X); % Pha của phổ Fourier
    figure;
    subplot(2, 1, 1);
    stem(freq, X_mag);
    title('Biên độ của phổ Fourier');
    xlabel('Tần số');
    ylabel('Biên độ');
    xlim([-2*f, 2*f]);
    subplot(2, 1, 2);
    stem(freq, X_phase);
    title('Pha của phổ Fourier');
    xlabel('Tần số');
    ylabel('Pha');
    xlim([-2*f, 2*f])
end