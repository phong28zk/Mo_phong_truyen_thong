function [t,y] = rectpulse(T,Rp,Ns,Np)
    Tp = 1/Rp;
    T_W = Np*Tp;
    ts = T_W/(Ns-1);
    t = 0:ts:T_W;
    Nsp = round(Tp/ts);

    y=zeros(size(T));
    for k = 1:Ns
        if mod(t(k),Nsp*ts) <= T
            y(k) = 1;
        else
            y(k) = 0;
        end
    end

    plot(t,y);
    axis([0 T_W -0.5 1.5])
    
end