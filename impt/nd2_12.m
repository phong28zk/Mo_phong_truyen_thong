% Tạo chuỗi bit ngẫu nhiên
bits = randi([0 1], 1, 1000);

% Chuyển đổi chuỗi bit thành dạng sóng NRZ lưỡng cực
T = 1/10e6; % Chu kỳ tín hiệu
tx = repmat(bits, 1, 10); % Tạo chuỗi tín hiệu lặp lại từ chuỗi bit
tx = 2*tx - 1; % Đưa về dạng sóng lưỡng cực
tx = tx.*sqrt(T); % Nhân với hệ số để đưa về độ lớn phù hợp

% Thiết kế bộ lọc raise-cosine
rolloff = 0.5; % Hệ số roll-off
span = 6; % Chiều dài bộ lọc (tính theo số chu kỳ bit)
sps = 10; % Số mẫu trên mỗi chu kỳ bit
h = rcosdesign(rolloff, span, sps); % Thiết kế bộ lọc

% Áp dụng bộ lọc raise-cosine lên chuỗi tín hiệu để lọc nó
rx = filter(h, 1, tx);

% Vẽ dạng sóng biểu diễn tín hiệu trước và sau khi lọc trên 10 chu kỳ bit
subplot(2,1,1);
plot(tx(1:10*sps));
title('Tín hiệu trước khi lọc');
xlabel('Mẫu');
ylabel('Biên độ');

subplot(2,1,2);
plot(rx(1:10*sps));
title('Tín hiệu sau khi lọc');
xlabel('Mẫu');
ylabel('Biên độ');

% Vẽ biểu đồ mắt của tín hiệu trước và sau khi lọc trên cửa sổ 2 chu kỳ bit
eyediagram(tx, 2*sps);
title('Biểu đồ mắt tín hiệu trước và sau khi lọc');