function output = nd1_26(a,b)
    dy = @(x,y) a*x^2-b*y;
    l = 0; r = max(a,b);
    h = 0.01*a;
    x(1) = l; y(1) = 1;
    N = (r-l)/h;
    for i=1:N
        y(i+1) = y(i) + h*dy(x(i), y(i));
        x(i+1) = x(i) + h;
    end

    plot(x,y,'r');
    output = [x', y'];

end