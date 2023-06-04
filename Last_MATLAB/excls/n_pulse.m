function output = n_pulse(a,b,T)
    y_all = [];
    for i=0:9
        t = linspace(T*i, T*(i+1), 1000);
        y(abs(t)<=T*(i+1)) = 1-(t(abs(t)<=T*(i+1))-T*i)/T;
        y(abs(t)>=T*(i+1)) = 0;
        y_all = [y_all y];
    end
    t_y = linspace(0, T*9,10000);
    plot(t_y,y_all);
end