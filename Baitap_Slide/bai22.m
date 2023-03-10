% Code by Tran Nam Phong - B20DCVT288

% Bai 22:
% Tinh tich phan cua 4x^3*2e^x*cos(2x) voi x thuoc [-1.5,1.5]
% voi N la so diem chia va N = 100
function output = bai22(a,b,N)
    h = (b-a)/N;
    x = a:h:b;
    y = 4*x.^3.*2.*exp(x).*cos(2*x);
    output = 0;
    for i = 1:N
        output = output + y(i);
    end
    output = output*h;
end

