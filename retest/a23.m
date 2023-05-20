% a = 8, b = 8, c= a+b-2
function y = a23(a,b,N)
    N = N*100;
    f = @(x) (exp(x)*atan(x^2))/cos(x);
    % Tinh tich phan theo phuong phap diem giua
    h = (b-a)/N;
    y = 0;
    for i=1:N
        xmid = a + (i - 0.5) * h;
        y = y + f(xmid);
    end
    y = y*h;
end