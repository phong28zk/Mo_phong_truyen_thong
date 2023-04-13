% ma hoa kenh
function c = encode(k,g)
    for i=1:2^k
        for j=k:-1:1
            if rem(i-1,2^(-j+k+1))>=2^(-j+k)
                u(i,j)=1;
                else
                u(i,j)=0;
            end
        end
    end
    c = rem(u*g,2); 
    w_min = min(sum((c(2:2^k,:))'));
end