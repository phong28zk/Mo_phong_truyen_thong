function output = de2_bai3(a,b)
    % ve xung tin hieu va 10 xung tin hieu
    T = 10;
    t1 = linspace(T,2*T,1000);
    y1(abs(t1)<=2*T) = 1+exp(-t1(t1<=2*T)+T);
    y1(abs(t1)>2*T) = 0;
    figure;
    plot(t1,y1);
    
    figure;
    T = 10;
    for i=0:10
        t = linspace(T*i, T*(i+1), 1000);
        y(abs(t)<=T*(i+1)) = 1+exp(-t(t<=T*(i+1))+T*i);
        y(abs(t)>T*(i+1)) = 0;
        hold on; plot(t,y);
    end 
    
end
