function output = de2_bai3(a,b)
    T = 10;
    
    for i=0:10
        t = linspace(T*i, T*(i+1), 1000);
        y(t<=T*(i+1)) = exp(-t(t<=T*(i+1))+T*i);
        y(t>T*(i+1)) = 0;
        hold on; plot(t,y);
    end

    figure;
    
    P = abs(fft(p).^2);
    f = (0:length(P)-1)/length(P)*T*(1/T);
    figure; plot(f,P);
end
