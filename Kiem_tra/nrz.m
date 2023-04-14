function [t,y] = nrz(bits,R,Ns,type)
    Nb = 20;
    Tb = 1/R;
    Time_wind = Nb * Tb;
    ts = Time_wind/(Ns-1);
    t = 0:ts:Time_wind;

    y = zeros(size(t));
    code = [];

    if(nargin<=3)
        type = 'unipol';
    end
    for k = 1:Ns
        n = fix(t(k)/Tb) + 1;
        if n >= Nb
            n = Nb;
        end
        switch(type)
            case 'unipol'
                y(k) = 2*bits(n)-1;
                code(n) = 2*bits(n)-1;
            case 'pol'
                y(k) = 2*bits(n)-1;
                code(n) = 2*bits(n)-1;
        end
    end

    plot(t,y);
    grid on;
    
end