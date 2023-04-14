function [code, xq, sqnr] = pcm_deu(x,M)
    No_bit = log2(M);
    Amax = max(abs(x));
    delta = 2*Amax/(M-1);
    Mq = -Amax:delta:Amax;  % Quantization levels
    Ml = 0:M-1; % Quantization levels in binary

    xq = zeros(1,length(x));
    xcode = xq;

    for k = 1:M
         % Find the indices of the samples in the kth interval
        ind = find(x>=Mq(k) - delta/2 & x<Mq(k) + delta/2);
        xq(ind) = Mq(k);
        xcode(ind) = Ml(k);
    end

    sqnr = 20*log10(norm(x)/norm(x-xq));
    code = de2bi(xcode,No_bit);
    
    stem(xq);
end
    
% Input
% x = sin(2*pi*1000*(0:1/8000:0.1));
% M = 16;