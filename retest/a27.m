function a27(a,b,T)
    b = b+2;
    t = linspace(0, T*b, 1000*b);
    x = square(2*pi*t/T, 50);
    plot(t,x, 'LineWidth',2);
    xlabel('x');
    ylabel('A');
    axis([0 b*T -1.5 1.5])
end