x=3.5667;
f=3*power(x,2)-power(x,3);
fo=6*x-3*power(x,2);
foo=6-6*x;
err=0;

while err>0.0001 | fo~=0.00000
    if(abs(fo)<0.000001)
        break;
    end
    temp=x;
    fo=6*x-3*power(x,2);
    foo=6-6*x;
    if foo==0.00000
        break;
    end
    x=x-(fo/foo);
    err=abs(x-temp)/x;
    fprintf('%f --%f--%f--%f \n ',x,fo,foo,err);
    if(err<0.0001)
        break;
    end
end

f=3*power(x,2)-power(x,3);
fprintf('Maximum is for this value of x-> %f \n ',x);
fprintf('The maximum is %f \n ',f);
    