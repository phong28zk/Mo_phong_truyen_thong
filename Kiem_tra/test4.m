function output = test4()
    t = 0:0.1:10;
    output = sin(2*pi*5*t).*cos(2*pi*3*t)+exp(-0.1.*t);
    plot(t, output);
    xlabel('t');
    ylabel('s(t)');
    title('s(t) = sin(2*pi*5*t) * cos(2*pi*3*t) + exp(-0.1*t)');
    grid on;
end