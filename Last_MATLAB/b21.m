function output = b21(a,b)
    f = @(x) x.^3/3 + 4*x^2 + x - 6;
    c = (a+b)/2;
    esp = 1e-6;
    if(f(a)>esp&f(b)>esp)
        disp('No sol')
    else
        if(f(c)>esp)
            a = c;
        else
            b = c;
            
        end
        c = (a+b)/2;
    end
    output = c;
end
