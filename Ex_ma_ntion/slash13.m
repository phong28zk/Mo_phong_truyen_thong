% Code by Tran Nam Phong - B20DCVT288

% Slash 13
% a = 8, b = 8, c = 14
function x = slash13(a,b,c)
    A = [a -b -c; c 2*b -a; a c -3*c];
    B = [10; 5; 2];
    [hang, cot] = size(A);
    if size(B) ~= hang
        error('Error', A1)
    end
    if hang == cot
        x = A\B;
    else if hang < cot
            x = pinv(A)*B;
        else
            x = A'*pinv(A*A')*B;
        end
    end
    disp(x);
end

