% Convert music file ( .wav ) to binary string
% Input: wavFile - the name of the wav file
% Output: binaryString - the binary string of the wav file

function binaryString = wav2bin(wavFile)
    fid = fopen(wavFile, 'r');
    wavData = fread(fid, [1, Inf], 'uint8');
    fclose(fid);
    binaryString = uint8(rem(floor((1 ./ [128, 64, 32, 16, 8, 4, 2, 1].') .* wavData), 2));
    binaryString = binaryString(:)';
end
