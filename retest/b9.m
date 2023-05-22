% Khai báo biến
N = 8; % Số bit trong mỗi ký tự
bits = randi([0 1],1,N*10); % Tạo chuỗi bit đầu vào
fc = 1000; % Tần số cơ bản của sóng mang
fs = 10*fc; % Tần số lấy mẫu% Tạo mảng thời gian
t = 0:1/fs:length(bits)/N-1/fs;

% Điều chế số ASK
s = zeros(size(t)); % Khởi tạo mảng tín hiệu điều chế
for i = 1:length(bits)
    if bits(i) == 1
        s((i-1)*fs/N+1:i*fs/N) = sin(2*pi*fc*t((i-1)*fs/N+1:i*fs/N));
    end
end

% Vẽ đồ thị tín hiệu điều chế
plot(t,s,'LineWidth',2)
xlabel('Thời gian')
ylabel('Tín hiệu điều chế ASK')
ylim([-1.5 1.5])