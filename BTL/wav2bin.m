% Convert music file ( .wav ) to binary string
% Input: wavFile - the name of the wav file
% Output: binaryString - the binary string of the wav file

function binaryString = wav2bin(wavFile)

    % [y,Fs] = audioread(wavFile);` is reading the audio data from the specified WAV file (`wavFile`)
    % and storing it in the variables `y` (the audio data) and `Fs` (the sample rate of the audio
    % data).
    [y,Fs] = audioread(wavFile);
    %  `data = int8(round(y*127));` is converting the audio data from a double precision floating point
    %  format to an 8-bit integer format. The `round` function rounds the values in `y` to the nearest
    %  integer, and then multiplies them by 127 to scale the values to the range of -127 to 127. The
    %  `int8` function then converts the values to 8-bit integers.
    data = int8(round(y*127));

    % `data = reshape(data,1,[]);` is reshaping the `data` array into a row vector. The `1` argument
    % specifies that the resulting row vector should have one row, and the `[]` argument specifies that
    % the number of columns in the resulting row vector should be automatically determined based on the
    % size of the input array. This operation is useful for converting a multi-dimensional array into a
    % one-dimensional array, which is often required for further processing or analysis.
    data = reshape(data,1,[]);

    % `binaryString = dec2bin(typecast(data,'uint8'),8);` is converting the `data` array, which
    % contains the audio data in 8-bit integer format, into a binary string.
    binaryString = dec2bin(typecast(data,'uint8'),8);
    
    % Write the binary to file binary.bin
    fid = fopen('binary.bin','w');
    fwrite(fid,binaryString.','char');
    fclose(fid);

    % Info audio file
    info = audioinfo(wavFile);
end





