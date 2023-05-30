function output = nd1_13(a,b,c)
    A = [a -b -c; c 2 -a; a c -3*c];
    B = [10; 5; 2];
    [x y] = size(A);
    disp(inv(A));
    disp(pinv(A));
        


end