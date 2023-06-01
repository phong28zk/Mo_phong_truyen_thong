% Code by Tran Nam Phong - B20DCVT288

% 38. Tạo chuỗi bit ngẫu nhiên có độ dài 5000 bits. Chuyển đổi chuỗi bit
% này thành dạng sóng mã đường NRZ lưỡng cực tại tốc độ 100
% Mbit/s. Sử dụng bộ lọc raised cosine có độ rộng băng tần 300 MHz
% và hệ số rolloff bằng 0.5 để lọc chuỗi tín hiệu NRZ này. Vẽ biểu
% diễn dạng sóng tín hiệu trên 10 chu kỳ bit trước và sau khi lọc tín
% hiệu. Vẽ biểu đồ mắt của tín hiệu sau khi lọc trên cửa sổ 2 chu kỳ
% bit. (Sử dụng hàm eyediagram để vẽ mẫu mắt).

function output = bai38()
    bit = randi([0,1],1,5000);
    f = 10e6; w = 2*pi*f; T = 1/f;
    fs = 300e6; Ts = 1/fs;
    R = 0.5; S = 6;
    t1 = -0.5*T:Ts:0.5*T;

    % NRZ
    nrz_signal = kron(2*bit - 1, ones(1, round(T*100)));
    y = pskmod(bit, 2);
    ynoise = awgn(y,15);
    hold on;
    
    yt = real(y);
    yp = imag(y);

    for i=1:length(yt)
        if yt(i) == 1
            yt(i) = 1;
        else
            yt(i) = -1;
        end
    end
    
    scatterplot(y);
end


