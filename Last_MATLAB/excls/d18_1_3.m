function y = d18_1_3(a,b)      
    temp = 0;
    if a==b
        a=0;
    else if a<b
        temp = a;
        a = b;
        b = temp;
    end
  
    f = @(x) x.^2 + 3*x - 1;
    N = 3*a*b;
    c = a+b;
    h = abs(a-c)/N; disp(h);
    disp(N); disp(a); disp(b); disp(c);
    a = a+h/2;
    c = c-h/2;
    t = a:h:c;

    val = [];

    output = 0;
    for i=1:N
        output = output + f(t(i));
        val = [val f(t(i))];
    end
    disp(val)
    y = output*h;
    maxVal = max(val)*h; disp(maxVal);
    minVal = min(val)*h; disp(minVal);
    
    
end

