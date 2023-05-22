function a30(a)
    pivot = 1;
    if(a<=0)
        pivot = -1;
    else
        for i=2:sqrt(a)
            if(mod(a,i))==0
                pivot = 0;
            end
        end
    end
    if(pivot==-1) disp('khong phai so duong');
        else if(pivot==0) disp('khong phai prime');
            else disp('Is prime');
        end
    end

end