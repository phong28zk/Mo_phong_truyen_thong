function [t,y,code] = nrz(d,R,Ns,type)
    Tb = 1/R;
    Nb = length(d);
    Twd = Tb*Nb;
    ts = Twd/(Ns-1);
    t = 0:ts:Twd;
    y=zeros(size(t));
    code = [];
    if(nargin<=3)
        type = 'nrz';
    end
    for k = 1:Ns
        n = fix(t(k)/Tb)+1;
        if n >= Nb
            n = Nb;
        end
        switch(type)
        case 'nrz'
            y(k) = d(n);
            code(n) = d(n);
        case 'nrzi'
            y(k) = d(n)*2 - 1;
            code(n) = d(n)*2-1;
        end
    end
    plot(t,y,'r','linewidth',2);
    axis([0 Twd -1.5 1.5]);
    grid on;
end

% Input:
% [t,y,code] = nrz([1 0 1 1 0 1 0 1],1,100,'nrzi');