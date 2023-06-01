
f = @(x) 3.*x.^4 - 7.*x.^2 + 2.*x + 2;
epsilon = 5e-6;
a = -1; b = 2;
c = (a+b)/2;
fa = f(a); fb = f(b);
fc = f(c);
if fa > epsilon && fb > epsilon
    disp('No solution')
else
    while(abs(f(c)>epsilon))
        if(f(c)>0)
            b = c;
        else
            a = c;
        end
        c = (a+b)/2;
    end
    disp(c);
end