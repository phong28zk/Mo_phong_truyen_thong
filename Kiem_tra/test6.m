function [C] = test6()
    B = [1024 1000 100 2 1];
    C = log2(B);
    D = log10(B);
    C = [C D];
end