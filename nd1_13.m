% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

A = [a -b -c; c 2*b -a; a c -3*c];
B = [10; 5; 2];
[hang, cot] = size(A);
if size(B)~=hang
    error('Error');
end
if(hang==cot)
    x = A\B;
else if hang<cot
        x = pinv(A)*B;
else
    x = A'*pinv(A*A')*B;
end
end
disp(x);
