clear;
a = 3; b = 2; c = a+b;
bits = randi([0 1],1,c);
duty = 0.1*b;
n = 1000;
T = 0.1*(a+b)*1e-3;
N = n*length(bits);
dt = T/N;
t = 0:dt:T-dt;
x = zeros(1,length(T));
for i=1:length(bits)
    if(bits(i)==1)
        x((i-1)*n+1:(i-1)*n+n*duty) = 1;
        x((i-1)*n+n*duty+1:(i-1)*n+n) = 0;
    else x((i-1)*n+1:(i-1)*n+n) = 0;
    end
end
plot(t,x,'LineWidth',3);

