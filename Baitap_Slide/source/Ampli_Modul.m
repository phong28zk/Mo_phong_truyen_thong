% Code by Tran Nam Phong - B20DCVT288

% Dieu che AM
function output = AM(input, fc, fm, Ac, Am, fs, t)
    % input: tin hieu dau vao
    % fc: tan so carrier
    % fm: tan so modulator
    % Ac: amplitude carrier
    % Am: amplitude modulator
    % fs: tan so lay mau
    % t: thoi gian lay mau
    % output: tin hieu dau ra
    t = 0:1/fs:t;
    carrier = Ac*cos(2*pi*fc*t);
    modulator = Am*cos(2*pi*fm*t);
    output = carrier.*(1+modulator).*input;
end