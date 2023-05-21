function a29(a,b,T)
    N = b+2;
    for i=0:N
        t = linspace(T*i, T*(1+i), 1000);
        y = exp((t-T*i).^2);
        plot(t,y);
        hold on;
        xlabel('x');
        ylabel('A');
    end
end