function ketqua = bai1_de2(x)
    A = [-1 4 -3 5 6 7 8 12 13];
    ind = mod(A,3)~=0;
    A = A(ind);
    disp(A);
    ketqua = A(1);
    for i=2:length(A)
        if ketqua < A(i)
            ketqua = A(i);
        end
    end
end