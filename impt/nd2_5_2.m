a = [1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];
%a = [1 1 0 0 1 0 1];
n = length(a);
ts = 10;
t1 = 0 : ts : ts*(n-1);
cnt = 0;
for i = 1 : n
   if(a(i) == 1)
       cnt = cnt + 1;
       if(mod(cnt, 2) == 1)
          a(i) = 1;
       else
           a(i) = -1;
       end
   end
end
Rp = 1e6;
Tp = 1/Rp;
Np = length(a);
ns1 = 100;
ts = Tp/(ns1 - 1);
t = 0 : ts : Tp;
p = zeros(1, length(t));
p(1 : round(length(t)/2)) = 1;
tt = [];
pt = [];
for i = 1 : Np
    tt = [tt t + (i-1)*Tp];
    pt = [pt p*a(i)];
end
plot(tt, pt);