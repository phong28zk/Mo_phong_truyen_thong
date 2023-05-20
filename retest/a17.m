% a = 8, b = 8, c= a+b-2
function output = a17(a,b)
    A1 = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    A2 = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if mod(b,4)==0
        output = A2(a);
    else
        output = A1(a);
    end
end