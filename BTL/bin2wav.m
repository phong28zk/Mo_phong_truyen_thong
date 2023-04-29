% Convert binary string to .wav file
% Input: binaryString - binary string to convert
%        wavFileOut - name of .wav file to write to
%        fs - sampling frequency ( 44100 Hz by default )
% Output: none

function bin2wav(binaryString, wavFileOut, fs)
    % Default sampling frequency is 44100 Hz
    if nargin < 3
        fs = 44100;
    end

    % Calculate the number of complete bytes in the binary string
    numBytes = floor(length(binaryString) / 8);

    % Extract only the complete bytes and reshape them
    data = double(reshape(binaryString(1:numBytes*8), 8, []).');

    % Convert to decimal and scale to between -1 and 1
    data = (bin2dec(num2str(data)) / 128) - 1;

    % Write to WAV file
    audiowrite(wavFileOut, data, fs);
end
