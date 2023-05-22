% Define the signal y = e^x over the range [-a, a]
a = 5;
x = linspace(-a, a, 10000);
y = exp(x);

% Define the number of quantization levels (bits)
m = 8;
levels = 2^m;

% Find the maximum and minimum values of the signal y
y_max = max(y);
y_min = min(y);

% Define the quantization step size
delta = (y_max - y_min) / levels;

% Quantize the signal y
y_quantized = round((y - y_min) / delta);

% Plot the original and quantized signals
figure;
plot(x, y, 'g', 'LineWidth', 2);
hold on;
plot(x, y_quantized*delta + y_min, 'r', 'LineWidth', 1);
xlabel('x');
ylabel('y');
title('PCM Encoding of Signal y = e^x');
legend('Original Signal', 'Quantized Signal');
grid on;