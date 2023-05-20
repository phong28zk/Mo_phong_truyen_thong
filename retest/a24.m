% a = 8, b = 8, c= a+b-2
function output = a24(a,b,N)
    if(a==b)
        a = 0;
    else
        a = min(a,b);
        b = max(a,b);
    end
    f = @(x) 4*x.^3 -13*x.^2 + 13*x - 10;
    % Tim nghiem cua f(x) = 0 trong khoang [a,b]
    x = linspace(a,b,N);
    y = f(x);
    plot(x,y);
    hold on;
    plot(x,zeros(1,N));
    hold off;
    % Tim nghiem cua f(x) = 0 trong khoang [a,b] bang phuong phap chia doi
    % Neu f(a)*f(b) > 0 thi khong co nghiem trong khoang [a,b]
    if(f(a)*f(b) > 0)
        output = 'Khong co nghiem trong khoang [a,b]';
    else
        % Neu f(a)*f(b) < 0 thi co nghiem trong khoang [a,b]
        % Tim nghiem bang phuong phap chia doi
        while(abs(a-b) > 1e-6)
            c = (a+b)/2;
            if(f(a)*f(c) < 0)
                b = c;
            else
                a = c;
            end
        end
        output = c;
    end


end