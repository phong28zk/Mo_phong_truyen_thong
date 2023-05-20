% a = 8, b = 8, c= a+b-2
function sum = a21(a,b,N)
    sum = 0;
    f = @(n) (-2^a)/exp(-n);
    for i=1:N
        sum = sum + f(i);
    end
    sum = sprintf('%.8f', sum);
end