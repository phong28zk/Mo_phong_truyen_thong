function output = euler(a,b)
    dy = @(t) cos(t) - sin(t);
    h = 0.01;
    y(1)=0;
    N = abs(a-b)/h;
    disp(N);
    x = a:h:b;
    for i=1:N
        y(i+1) = y(i) + h*dy(x(i));
    end

    output = [x' y' dy(x)'];  
    plot(x,y,'-','linewidth', 2);
    legend('y_gt');
    xlabel('x');
    ylabel('y');

end