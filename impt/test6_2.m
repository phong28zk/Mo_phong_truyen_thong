% Ma sinh vien: B20DCVT288      
function output = test6_2(a,b,N)
    f = @(x) x^3 + x^2 - x + 1;
    l = 0; r = b;
    disp(N);
    h = (r-l)/N;
    x = l:h:r;
    output = 0;
    for i=1:N+1
        output = output + f(x(i));
    end
    output = output*h;
end
    
    

