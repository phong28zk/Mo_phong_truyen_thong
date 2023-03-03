% Code by Tran Nam Phong - B20DCVT288

function output = bai16()
    % vẽ hình cầu bán kính = 3
    [x, y, z] = sphere(20);
    x = x * 3;
    y = y * 3;
    z = z * 3;
    surf(x, y, z);



