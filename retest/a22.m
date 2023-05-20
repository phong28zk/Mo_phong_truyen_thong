% a = 8, b = 8, c= a+b-2
function mul = a22(a,b,N)
    mul = 1;
    f = @(n) sqrt((a*n+1)/2+n^2);
    for i=1:N
        mul = mul * f(i);
    end
    mul = sprintf('%.8f', mul);
end