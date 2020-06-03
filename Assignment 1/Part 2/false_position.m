function root = false_position(f,lo,hi,es,imax);

low_val=f(lo);
high_val=f(hi);
fval=1.25;

if (low_val-fval).*(high_val-fval)>0
    return
end

mid=0;

for i=1:1:imax
    fl=f(lo);
    fu=f(hi);
    fltemp=abs(fl-fval);
    futemp=abs(fu-fval);
    mid_old=mid;
    mid=(lo.*futemp-hi.*fltemp)./(futemp-fltemp);
    ea=((mid-mid_old)./mid);
    
    temp=(fl-fval)*(f(mid)-fval);
    
    if temp<0
        hi=mid;
    end
    
    if temp>0
        lo=mid;
    end
    
    if temp==0
        ea=0;
    end
    
    if ea<es
        break;
    end
    
end

fprintf('Iter. count for false position= %f\n',i);
root=mid;

end

