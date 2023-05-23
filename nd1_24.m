% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;
N_samp = 1000;

f = @(x) 4.*x^3-13.*x^2+13.*x-10;
if(a==b)
    a=0;
else
    a = min(a,b);
    b = max(a,b);
end

x = linspace(a,b,N_samp);
if(f(a)*f(b)>0)
    disp('khong co nghiem giua a va b')
else
    while(abs(a-b)>1e-6)
        c = (a+b)/2;
        if(f(a)*f(c)<0)
            b = c;
        else
            a = c;
        end
    end
end
disp(c);


   



