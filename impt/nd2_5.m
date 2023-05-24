% Ma sinh vien: B20DCVT288      
a = 8; b = 8; c = a + b - 2;
M = 8; N = 8;

code = [1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];
Rp = 1e6;
Tp = 1/Rp;
Np = length(code);
Ns1 = 100;
ts = T/(Ns1-1);
t = 0:ts:Tp;
p = zeros(1, length(t));
p(1:round(length(t)/2)) = 1;
tt = []; pt = [];
for i = 1:Np
    tt = [tt t+(t-1)*Np];
    pt = [pt p*code(i)];
end
plot(tt,pt);


