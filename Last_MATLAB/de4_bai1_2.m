function output = de4_bai1_2(T,a,b)
    for i=0:10
        t = linspace(T*i, T*(i+1), 1000);
        x = zeros(size(t));
        x(abs(t) <= (T/2+T*i)) = -1;
        x(T*(i+1))=-1;
        plot(t,x,'linewidth',2);
        hold on;
        xlabel('x'); ylabel('A');
    end
    t1 = linspace(T*i, T*(i+1), 1000);
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