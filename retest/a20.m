% a = 8, b = 8, c= a+b-2
function f3 = a20(a)
    f1 = 0;
    f2 = 1;
    f3 = f1+f2;
    for i=3:a
        f3=f1+f2;
        f1=f2;
        f2=f3;
    end
end