function [C] = test2()
    A = [-1 3.5 2; 0 1 -1.3; 1.1 2 1.9];
    C = diag(diag(A));
end