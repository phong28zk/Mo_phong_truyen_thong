% Code by Tran Nam Phong - B20DCVT288

% Bai 21:
% We have f(x) = x^3/3 + 4x^2 +x - 6
% x belongs to [-1, 3]
% Find x such that f(x) = 0 use bi-section with a = 0 and b = 3
function [output,i] = bai21_2(a,b)
    x = (a + b)/2;
    i = 0;
    f = @(x) x^2 - 5;
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

