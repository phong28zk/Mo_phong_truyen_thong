function [y,code, filtered_nrz] = bai2(R)
    Nb = 20;
    Ns = Nb * 16;
    bits = randi([0 1], 1, Nb);
    Tb = 1/R;
    Timewindows = Tb*Nb;
    ts = Timewindows/(Ns-1);
    t = 0:ts:Timewindows;

    w_B = 2*pi*150*10e6;
    n = 5;
    
    % User butterwortth filter
    [b,a] = butter(n,2*R/w_B);
    

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
                code = 2*bits(n)-1;
        end
    end

    % User butterwortth filter
    [b,a] = butter(n,2*R/w_B);
    filtered_nrz = filter(b,a,y);
    
    subplot(2,1,1);
    plot(t,y);
    subplot(2,1,2);
    plot(t, filtered_nrz);
    % set x axis from 0 to 5*ts
    xlim([0*Tb 5*Tb]);
    % y limit to -5 to 3 
    ylim([-5 3]);
end





