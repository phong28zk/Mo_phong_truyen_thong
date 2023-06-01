function output = b22(a,b,N)
    f = @(x) 4*x^3*2*exp(x)*cos(x);
    s = 0;
    h = abs(a-b)/N;
    x = a:h:b;
    for i=1:N
        s = s + f(x(i));
    end
    output = s*h;
end
