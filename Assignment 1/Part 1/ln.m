function sum = ln( x,n )
sum=0;
prod=x-1;
sign=1;

for a=1:1:n
    sum=sum+(sign./a).*power(prod,a);
    sign=-sign;
end

end

