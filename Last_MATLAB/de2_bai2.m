function output = bai2_de2(a,b,N)
    % Tạo chuỗi bit gồm 50 phần tử
    bits = randi([0 1], 1, 50);
    
    % Thực hiện điều chế chuỗi bit bằng 4-QAM
    M = 4; % Số mức
    k = log2(M); % Số bit trên mỗi mức
    symbols = bi2de(reshape(bits, k, [])', 'left-msb'); % Chuyển đổi từ dạng nhị phân sang số nguyên
    qam_symbols = qammod(symbols, M); % Điều chế 4-QAM
    
    % Vẽ tín hiệu sau điều chế trên figure
    figure;
    scatter(real(qam_symbols), imag(qam_symbols), 'filled');
    xlabel('Phần thực');
    ylabel('Phần ảo');
    title('Tín hiệu sau điều chế bằng 4-QAM');
    axis([-2 2 -2 2]);
end
    
