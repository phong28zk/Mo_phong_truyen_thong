% Code by Tran Nam Phong - B20DCVT288

function output = bai15()
    x = (-2:0.2:2);
    y = (-1:0.1:1)';
    v = ones(length(x),1);
    X = v.*x;
    Y = y.*v;
    f = X.^2 + Y.^2;
    mesh(x,y,f);
    axis([-2 2 -1 1 -2 6]);
    xlabel('x');
    ylabel('y');
    zlabel('f(x,y)');
    title('Bai 15');
end
