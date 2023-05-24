function output = nd1_26b(a,b)
    dy = @(x,y) a*x^2-b*y;

    l = 0; r = max(a,b);
    h = 0.01*a;
    N = (r-l)/h;
    x(1) = l; y(1) = 1;
    
    for i=1:N
        F = dy(x(i),y(i));
        G = dy(x(i)+h/2, y(i)+h/2+F);
        H = dy(x(i)+h/2, y(i)+h/2*G);
        K = dy(x(i), y(i) + h*H);
        y(i+1) = y(i) + h/6*(F+2*G+2*H+K);
    end

    plot(x,y,'r');
    output = [x' y'];
end

    

