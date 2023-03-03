% Code by Tran Nam Phong - B20DCVT288

% Bai 2.65
% Rayleigh Fading = 1 - exp(-sig_th/sig_avg)
% What is SNR? SNR is the ratio 
% of the power of the desired signal 
% to the power of the noise.

function [A] = bai2_65()
    SNRdB = 0:1:30;
    SNR = 10.^(SNRdB/10);
    sig_th = 1;
    OP = 1 - exp(-sig_th./SNR);
    semilogy(SNRdB,OP);
    grid on;
    xlabel('SNR (dB)');
    ylabel('OP');
end
