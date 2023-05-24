function output = nd1_26_fc(a,b)
    dy = @(x,y) a*x^2 - b*y;
    l = 0; r = max(a,b);
    h = a*0.01;
    N = (r-l)/h;
    x(1) = l;
    y_e1(1) = 1; y_e2(1) = 1;

    % Euler
    for i = 1:N
        y_e1(i+1) = y_e1(i) + h*dy(x(i),y_e1(i));
        x(i+1) = x(i) + h;
    end

    % Euler modify
    for i = 1:N
        F = dy(x(i), y_e2(i));
        G = dy(x(i)+h/2, y_e2(i)+h/2*F);
        H = dy(x(i)+h/2, y_e2(i)+h/2*G);
        K = dy(x(i)+h, y_e2(i)+h*H);
        y_e2(i+1) = y_e2(i) + h/6*(F+2*G+2*H+K);
    end

    plot(x,y_e1,'r',x,y_e2,'b')
    output = [x',y_e1',y_e2'];
end