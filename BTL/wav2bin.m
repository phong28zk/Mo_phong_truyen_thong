% Convert music file ( .wav ) to binary string
% Input: wavFile - the name of the wav file
% Output: binaryString - the binary string of the wav file

function binaryString = wav2bin(wavFile)
    [y,Fs] = audioread(wavFile);
    % Convert the audio data to a column vector of 8-bit integers
    data = int8(round(y*127));
    % convert data to vector
    data = reshape(data,1,[]);
    % Convert the audio data to a binary
    binaryString = dec2bin(typecast(data,'uint8'),8);
    % Write the binary to file binary.bin
    fid = fopen('binary.bin','w');
    fwrite(fid,binaryString.','char');
    fclose(fid);
end
