function root = bisection(f,lo,hi,es,imax);

low_val=f(lo);
high_val=f(hi);
fval=1.25;

if (low_val-fval).*(high_val-fval)>0
    return
end

mid=0;
fl=f(lo);

for i=1:1:imax
    mid_old=mid;
    mid=(lo+hi)./2;
    %ea=abs((lo-hi)./hi);
    ea=abs((mid-mid_old)./mid);
    
    fm=f(mid);
    
    temp=(fl-1.25)*(fm-1.25);
    
    if temp<0
        hi=mid;
    end
    
    if temp>0
        lo=mid;
        fl=fm;
    end
    
    if temp==0
        ea=0;
    end
    
    if ea<es
        break;
    end
    
end
fprintf('Iter. count for bisection= %f\n',i);
root=mid;

end

