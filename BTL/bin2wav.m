% Convert binary string to .wav file
% Input: binaryString - binary string to convert
%        wavFileOut - name of .wav file to write to
%        fs - sampling frequency ( 44100 Hz by default )
% Output: none

function bin2wav()
    % Default sampling frequency is 8000 Hz
    if nargin < 3
        Fs = 8000;
    end

    % Doc dãy nh? phân t? file
    fileID = fopen('binary.bin','r');
    binary2 = fread(fileID);
    fclose(fileID);
    binary2 = binary2 - 48;
    binary2 = reshape(binary2, 8, [])';
    audioData2 = bi2de(binary2, 'left-msb');
    audioData2 = typecast(uint8(audioData2), 'int8');
    audioData2 = reshape(audioData2, [],2);
    audioData2 = double(audioData2) / 127;
    audiowrite('test_output.wav', audioData2, Fs, 'BitsPerSample', 8);
end
