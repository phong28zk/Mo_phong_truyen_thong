% PCM luong tu khong deu

% [y,amax] = mulaw(x,mu)
function [y,amax] = mulaw(x,mu)
    amax = max(abs(x));
    y = sign(x).*log(1+mu*abs(x)/amax)/log(1+mu);
end


function [code, xq, sqnr] = pcm_khongdeu(x, M)
    Nb = log2(M);
    Amax = max(abs(x));
    delta = 2*Amax/(M-1);
    Mq = -Amax:delta:Amax;
    Ml = 0:M-1;

    % code
    mu = 255;


    

end
