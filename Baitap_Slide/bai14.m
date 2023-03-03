% Code by Tran Nam Phong - B20DCVT288

function output = bai14()
    w = 0:0.01:5;
    H1 = 1./(i*w);
    H2 = 1./((i*w)+1);

    subplot(2,1,1);
    plot(w,abs(H1));
    title('H1');
    xlabel('w');
    ylabel('|H1(jw)|');

    subplot(2,1,2);
    plot(w,angle(H1));
    title('H1');
    xlabel('w');
    ylabel('angle(H1(jw))');
    





