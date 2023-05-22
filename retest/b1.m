% Cho tín hiệu hình sin có chu kỳ T=a, biên độ là 1.5xa. Viết chương trình thực hiện
% lấy mẫu với tần số lấy mẫu gấp 32 lần tấn số Nyquist của tín hiệu. Vẽ tín hiệu trước
% và sau khi lấy mẫu
function output = b1(a,b)
    T = a;
    A = 1.5*a;
    Fs = 32/T;
    Ts = 1/Fs;
    t = 0:Ts:2*T;
    x = A*sin(2*pi*t/T);
    subplot(2,1,1);
    plot(t,x);
    xlabel('t');
    ylabel('x(t)');
    title('Tin hieu truoc khi lay mau');
    subplot(2,1,2);
    stem(t,x);
    xlabel('t');
    ylabel('x(t)');
    title('Tin hieu sau khi lay mau');
end

    