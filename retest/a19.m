% a = 8, b = 8, c= a+b-2
function output = a19(a)
    output = 0;
    i = 1;
    while(output<=a*100)
        output = output + i*i;
        i=i+1;
    end
    output = output - i*i;
    disp(i-1);
end