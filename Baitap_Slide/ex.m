function output = ex(t)
    t = 0:1:5;
    output = sin(t);
    plot(t, output);
    xlabel('t');
    ylabel('s(t)');
    title('s(t) = sin(t)');
    grid on;
end