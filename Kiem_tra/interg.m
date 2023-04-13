

function inter = interg(N,a,b)
    y = @(x) 4.*x^3.*2.*exp(x).*cos(x);
    h = (b-a)/N;
    inter = y(a+h/2);
    for k = 2:N
        x_k = a + (k-1/2)*h;
        inter = inter + y(x_k);
    end

    inter = inter*h;
    
end
    
    