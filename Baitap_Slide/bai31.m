% Code by Tran Nam Phong - B20DCVT288

% Bai 31:
% Viet chuong trinh MATLAB tao chuoi bit ngau nhien deu
% Co do dai 128 bit. Sau do thuc hien chuyen doi chuoi bit nay 
% Thanh cac gia tri thap phan trong dai tu [0,15]


function output = bai31()
    bit = randi([0,1],1,128);
    % convert matrix to size m*4
    bit = reshape(bit,4,[]);    % chuyen ma tran thanh kich thuoc m*4
    disp(bit);                  % in ra chuoi bit
    for i = 1:4:128
        output(i:i+3) = bi2de(bit(i:i+3)); % chuyen doi chuoi bit thanh gia tri thap phan
    end
    disp(output);               % in ra gia tri thap phan
    plot(output);               % ve do thi
end


