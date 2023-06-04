a = 8; b = 8; c = a+b;

bits = randi([0 1],1,a+b);
bitrate = 0.1*b;
n = 1000;
T = 0.3*(a+b)*1e-3; % Tong thoi gian cua a+b xung ( 16 )
N = n*length(bits); % So mau
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t));
for i=1:length(bits)
  if bits(i)==1
    x((i-1)*n+1:(i-1)*n+n/2) = 1;
  else x((i-1)*n+1:(i-1)*n+n/2) = -1;
  end
end

plot(t, x, 'Linewidth', 3);
counter = 0;
for i = 1:length(t)
  if t(i)>counter
    counter = counter + 1;
    if x(i)>0
      result(counter) = x(i);
    else result(counter) = 0;
    end
  end
end

disp('RZ Decoding:');
disp(result);