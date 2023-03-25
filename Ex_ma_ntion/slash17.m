% Slash 17
function output = slash17(a,b)
    A1 = [31 28 31 30 31 30 31 31 30 31 30 31];
    A2 = [31 29 31 30 31 30 31 31 30 31 30 31];
    if mod(b,4) == 0
        A = A2;
    else
        A = A1;
    end
    output = A(a)
end