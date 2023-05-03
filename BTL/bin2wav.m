% Convert binary string to .wav file
% Input: binaryString - binary string to convert
%        wavFileOut - name of .wav file to write to
%        fs - sampling frequency ( 8000 Hz by default )
% Output: none

function bin2wav()
    % Default sampling frequency is 8000 Hz
    if nargin < 3
        Fs = 8000;
    end

    % These lines of code are opening a binary file named 'binary.bin' in read mode, reading the
    % contents of the file into a variable called binarySignal using the fread function, and then
    % closing the file.
    fileID = fopen('binary.bin','r');
    binarySignal = fread(fileID);
    fclose(fileID);

    % These lines of code are converting the binary signal read from the file into a decimal
    % representation.
    binarySignal = binarySignal - 48;
    binarySignal = reshape(binarySignal, 8, [])';
    dataOutput = bi2de(binarySignal, 'left-msb');
    dataOutput = typecast(uint8(dataOutput), 'int8');

    % These lines of code are converting the decimal representation of the binary signal into an audio
    % signal and writing it to a .wav file named 'test_output.wav'.
    dataOutput = reshape(dataOutput, [],2);
    dataOutput = double(dataOutput) / 127;
    audiowrite('test_output.wav', dataOutput, Fs, 'BitsPerSample', 8);
end



