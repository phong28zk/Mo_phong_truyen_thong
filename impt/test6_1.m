% Ma sinh vien: B20DCVT288      
function output = test6_1(a,b)
    A = randi([0 1],6,10);
    B = zeros(1,6);
    C = [];
    no_column = 0;
    for i=1:6
        for j=1:10
            if A(i,j)==1
                B(i) = B(i) + 1;
            end
        end
    end

    for i=1:6
        if mod(B(i),2)==0
            no_column = no_column + 1;
            C = [C i];
        end
    end

    
    disp(B);
    disp(no_column);
    disp(C); 
    disp(size(C));

    for i=1:no_column
        A(:,C(i)) = 0;
    end
    disp(A);
    D = zeros(1,6);
    for i=1:6
        for j=1:10
            D(i) = D(i) + A(i,j)*2^(10-j);
        end
    end
    disp(D);
            
end
    
    

