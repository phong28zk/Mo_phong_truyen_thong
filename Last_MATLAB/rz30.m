% draw RZ 30%
a = 8; b= 8;
R = 10e6;
T = 1/R*a;
bit_duration = 2*T;
duty = 0.3;

n = a+b;
bits = ones(1,n);

t = linspace(0,n*bit_duration,1000*n);
pulse = zeros(size(t));
for i=1:n
    if bits(i)==1
        pulse = pulse + (t>=bit_duration*(i-1) & t<bit_duration*(i-1)+duty*bit_duration);
    end
end
disp(pulse);
plot(t,pulse);
axis([0 n*bit_duration -0.5 1.5]);
hold on;

% mark in the middle of the pulse
for i=1:n
    if bits(i)==1
        plot(bit_duration*(i-1),1,'g*');
    end
end

title("RZ 30%");
xlabel("Time");
ylabel("Amp");
legend("RZ 30%");
