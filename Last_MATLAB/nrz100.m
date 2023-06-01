%NRZ
d=randi(2,1,10)-1;
R=50e6;
Tb=1/R;
Nb=length(d);
Timewindow =Nb*Tb;
Ns=10*Nb;
ts=Timewindow/(Ns-1);
t=0:ts:Timewindow;
y=zeros(size(t));
for i=1:Nb;
    n=fix(t(i)/Tb)+1;
    if n>=Nb
        n = Nb;
    end
    y(i)=d(n)*2-1;
end
hold on
plot(t,y);
f=[0:Ns/2-1 -Ns/2:-1]/(Ns*1);
Xf=fft(y);
Hf=exp((-f.^2)/2);
Yf=Xf.*Hf;
y1=ifft(Yf);
plot(t,y1,'r');