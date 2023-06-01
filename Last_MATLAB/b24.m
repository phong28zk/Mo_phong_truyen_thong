function output = b24(a,r,y0,h,t0,t1)
    dy = @(t,y) r - a*y;
    y_gt = @(t) (y0 - r/a)*exp(-a*t) + r/a;
    n = (t1-t0)/h;
    y(1) = y0; t(1) = t0;
    y_2(1) = y0;
    for i=1:n
        y(i+1) = y(i) + h*dy(t(i),y(i));
        t(i+1) = t(i) + h;
    end

    for i=1:n
        F = dy(t(i),y_2(i));
        G = dy(t(i)+h/2,y_2(i) + h/2 * F);
        H = dy(t(i)+h/2, y_2(i)+h/2*G);
        K = dy(t(i)+h, y_2(i) + h*H);
        y_2(i+1) = y_2(i) + h/6*(F+2*G+2*H+K);
    end
    output = [t' y' y_2'];
    plot(t,y,'-','LineWidth',2);
    hold on;
    plot(t,y_2,'-','LineWidth',2);

        
end
