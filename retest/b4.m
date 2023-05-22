% Cho tín hiệu 𝑦 = 𝑒^x với x trong khoảng [-a,a]. Viết chương trình mã hóa PCM đều.
% Vẽ tín hiệu trước và sau khi lượng tử hoá trên cùng một hình.
function output = b4(a,b)
    Mu = 255;
    t = -a:0.01:a;
    y=  exp(t);
    V = max(y);
    partition = 0:2^6-1;
    codebook = 0:2^6;
    [~,~,distor1] = quantiz(y, partition, codebook);
    compsig = compand(y, 255, V, 'mu/compressor');
    [~,quants] = quantiz(compsig, partition, codebook);

    newsig = compand(quants, 255, max(quants), 'mu/expander');
    distor2 = sum((newsig-y).^2)/length(y);

    plot([y' compsig'], 'linewidth', 2);
    legend('Original Signal', 'Compressed Signal');
    set(gca, 'fontsize', 16);
end


    