% Convert music file ( .wav ) to binary string
% Input: wavFile - the name of the wav file
% Output: binaryString - the binary string of the wav file

function binaryString = wav2bin(wavFile)
    fid = fopen(wavFile, 'r');
    wavData = fread(fid, [1, Inf], 'uint8');
    fclose(fid);
    % This line of code is converting the wav file data into a binary string. It does this by first
    % dividing each element of the wavData array by the corresponding element in the array [128, 64, 32,
    % 16, 8, 4, 2, 1]. This creates a new array of values between 0 and 1. The floor function is then used
    % to round these values down to either 0 or 1. The rem function is used to take the remainder of each
    % value when divided by 2, effectively converting the values to binary (0 or 1). Finally, the uint8
    % function is used to convert the resulting array of binary values to an array of 8-bit unsigned
    % integers.
    binaryString = uint8(rem(floor((1 ./ [128, 64, 32, 16, 8, 4, 2, 1].') .* wavData), 2));
    binaryString = binaryString(:)';
    % write the binary vector to a file
    fid = fopen('binaryString.txt', 'w');
    fprintf(fid, '%d', binaryString);
    fclose(fid);
end
