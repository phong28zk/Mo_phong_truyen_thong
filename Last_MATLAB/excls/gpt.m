function [output,i] = gpt(a,b)
    x = (a + b)/2;
    i = 0;
    f = @(x) x^3/3 + 4*x^2 + x - 6;
    eps = 2.71828e-15;
    % if min f in [a,b] > eps => display No solution
    if f(a) > eps && f(b) > eps
        disp('No solution');
    else
        while(abs(f(x)) > eps)
            if f(x) > 0
                b = x;
            else
                a = x;
            end
            x = (a + b)/2;
            i = i + 1;
        end
        output = x;
    end
end

