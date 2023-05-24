function nd1_30(a)
    pivot = 1;
    if(a<2)
        pivot = -1;
    else
        for i=1:sqrt(a)
            if(mod(a,i)==0) 
                pivot = 0;
            end
        end
    end
    if(pivot==-1) disp('Nhap lai a')
    else if(pivot == 0) disp('a khong phai SNT')
    else disp('a la so nguyen to')
    end
    end
end



