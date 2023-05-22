% Khai báo biến
a = 5; % Khoảng [-a,a]
T = 0.01; % Chu kỳ lấy mẫu
delta = 0.1; % Khoảng lượng tử hoá
x = -a:T:a; % Tạo mảng giá trị của x
y = exp(x); % Tạo tín hiệu y

% Lượng tử hoá không đều theo luật A
yq = zeros(size(y)); % Khởi tạo mảng lượng tử hoá
for i = 1:length(x)
    if y(i) >= 0
        yq(i) = delta * floor(y(i)/delta + 1/2);
    else
        yq(i) = delta * ceil(y(i)/delta - 1/2);
    end
end

% Vẽ tín hiệu trước và sau khi lượng tử hoá
plot(x,y,'LineWidth',2)
hold on
plot(x,yq,'r--')
xlabel('x')
legend('Tín hiệu trước khi lượng tử hoá','Tín hiệu sau khi lượng tử hoá')