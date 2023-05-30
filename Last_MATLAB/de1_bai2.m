function output = bai2_de1(a,b)
    bits = randi([0 1],1,20);
    Rb = 50e6;
    Tb = 1/Rb;
    Nb = length(bits); disp(Nb);
    Ns = 1000*Nb;
    Tw = Nb*Tb;
    ts = Tw/(Ns-1);
    t = 0:ts:Tw;
    y = zeros(size(t));
    code = [];
    for k=1:Ns
        n = fix(t(k)/Tb)+1;
        if n>=Nb
            n=Nb;
        end
        y(k) = 2*bits(n)-1;
        code(n) = 2*bits(n)-1;
    end
    plot(t,y,'r');
    figure;
    plot(t,y);
    f=[0:Ns/2-1 -Ns/2:-1]/(Ns);
    Xf=fft(y);
    Hf=1./(1+(f./150).^(10));
    Yf=Xf.*Hf;
    y1=ifft(Yf);
    plot(t,y1,'r');
    
end