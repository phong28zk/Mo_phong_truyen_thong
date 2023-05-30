function [A1,B,C,D] = de3_bai1(x)
    A = [1-1i -5 1i 0 2+3*1i; 3 9 22 -31*1i -7; -8*1i -8+2*1i 5 3+53 -10*1i; 0 3+19*1i 0 -73 -8; 7+13*1i -103 39 3+53*1i 99];
    A1 = A';
    disp(A1);
    [x y] = size(A);
    disp([x y]);
    B = abs(A);
    C = reshape(B,1,x*y);   % reshape(ma tran can chuyen doi kich thuoc, so hang, so cot)
    D = C(C>=x);            
end