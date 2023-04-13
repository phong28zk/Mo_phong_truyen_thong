function output = test5()
    t = 0:0.1:10;
    output = 20*sin(2*pi*5*t);
    output = round(output);
    xlabel('t');
    ylabel('s(t)');
    grid on;
end