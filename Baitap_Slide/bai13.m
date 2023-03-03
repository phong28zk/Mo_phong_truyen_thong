% Code by Tran Nam Phong - B20DCVT288

function output = bai13()
    w = 0:0.01:5;
    H1 = 1./(i*w);
    H2 = 1./((i*w)+1);
    plot(w,H1);
    title('H1');
    xlabel('w');
    ylabel('H1(jw)');
    figure;

    plot(w,H2);
    title('H2');
    xlabel('w');
    ylabel('H2(jw)');
    figure;



