function output = tp(a,b)
    f = @(x) x.^3/3 + 4*x^2 + x - 6;
    h = 0.01*a;
    x = a:h:b;
    i = 1;
    output = 0;
    while(i<length(x))
        output = output + f(x(i));
        i = i+1;
    end
    output = output*h; disp(output);

    N = abs(a-b)/h;
    for i=1:N
        output = output + f(x(i));
    end
    output = output*h;
end

