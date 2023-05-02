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
    binarySignal = fread(fileID);
    fclose(fileID);
    binarySignal = binarySignal - 48;
    binarySignal = reshape(binarySignal, 8, [])';
    dataOutput = bi2de(binarySignal, 'left-msb');
    dataOutput = typecast(uint8(dataOutput), 'int8');
    dataOutput = reshape(dataOutput, [],2);
    dataOutput = double(dataOutput) / 127;
    audiowrite('test_output.wav', dataOutput, Fs, 'BitsPerSample', 8);
end
