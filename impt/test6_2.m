% Ma sinh vien: B20DCVT288      
function [output,k1,k2] = test6_2(a,b,N)
    f = @(x) x^3 + x^2 - x + 1;
    l = a; r = a+b;
    h = (r-l)/N;
    x = l+h/2:h:r-h/2;
    tmp = zeros(N);
    output = 0;
    for i=1:N
        output = output + f(x(i));
        tmp(i) = f(x(i));
    end
    output = output*h;
    k1 = tmp(N);
    k2 = tmp(1);
end
    
    

