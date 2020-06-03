value=[1:1:50];
new=0;
for a=1:1:50
    old=new;
    new=ln(1.5,a);
    error=(((new-old).*100.)/new);
    value(a)=error;
end

a=[1:1:50];
plot(a,value);
    

