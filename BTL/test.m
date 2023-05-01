clear all;
close all;
clc;
%   Nguyen Hai Dang
%   B20DCVT104
%   Nhiem vu 1:

filename = 'AssigmentD20.wav';
[y,Fs] = audioread(filename);
%sound(y,Fs);

info = audioinfo(filename)

% Convert the audio data to a column vector of 16-bit integers
audio_int = int16(round(y*32767));

% Reshape the audio data into a row vector
audio_int = reshape(audio_int, 1, []);

% Convert the audio data to binary data
binary = dec2bin(typecast(audio_int, 'uint16'), 16);

% Write the binary data to a file
fid = fopen('binary_data.bin', 'w');
fwrite(fid, binary.','char');
fclose(fid);

% Doc dãy nh? phân t? file
fileID = fopen('binary_data.bin','r');
binary2 = fread(fileID);
fclose(fileID);

% Chuy?n ??i dãy nh? phân thành tín hi?u âm thanh
binary2 = binary2-48;
binary2 = reshape(binary2, 16, [])';
audioData2 = bi2de(binary2, 'left-msb');
audioData2 = typecast(uint16(audioData2), 'int16');
audioData2 = reshape(audioData2, [],2);
audioData2 = double(audioData2) / 32767;
% L?u tín hi?u âm thanh vào file WAV
audiowrite('output.wav', audioData2, Fs, 'BitsPerSample', 16);