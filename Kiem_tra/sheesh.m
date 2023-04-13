

function output = sheesh(a,b)
    f_org = a*100;
    t0 = 0; t_end = 3*b*1/f_org;
    t = t0 : 1/(32*f_org) : t_end;
    output = 3*(sin(pi*f_org*t+pi/2).^2);
    plot(t,output);
    hold on;
end
    
    