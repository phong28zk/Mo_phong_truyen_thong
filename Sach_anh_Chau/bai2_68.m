% Code by Tran Nam Phong - B20DCVT288

% Bai 2.68


function [A] = bai2_68()
    figure;
    domain = -4:0.01:4;
    plot(domain, normpdf(domain, 0, 1), 'r');
    hold on;
    plot(domain, normpdf(domain, 0, 2), 'b');
    hold on;

    L = fix(length(domain)/3);
    R = fix(length(domain)*2/3);

    area(domain(1:L), normpdf(domain(1:L), 0, 1), 'FaceColor', 'r');
    area(domain(R:end), normpdf(domain(R:end), 0, 1), 'FaceColor', 'r');

    stem([-0.7,0.1,0.4], normpdf([-0.7,0.1,0.4], 0, 1), 'r', 'filled');
    
    axis([-4 4 0 0.5]);
    
    set(gca, 'XTick', on);
    set(gca, 'YTick', on);


end

