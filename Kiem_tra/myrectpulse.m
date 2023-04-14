function [t,y] = myrectpulse(Tw, Rp, Ns, Np)
    Tp = 1/Rp;
    Time_wind = Np*Tp;
    ts = Time_wind/(Ns-1);
    t = 0:ts:Time_wind;
    Nsp = round(Tp/ts);
    y = zeros(size(t));
    for k = 1:Ns
        if mod(t(k),Nsp*ts)<=Tw
            y(k) = 1;
        else
            y(k) = 0;
        end
    end
    plot(t,y);
    ylim([-2 2]);
end