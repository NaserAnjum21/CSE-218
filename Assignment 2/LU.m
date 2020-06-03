function [l,u] = LU(a,b)

[m,n]=size(a);
u=zeros(n);
l=zeros(n);

%for i=n:-1:2
%   if a(i-1,1)< a(i,1)
%        for j=1:1:n
%            temp=a(i,j);
%            a(i,j)=a(i-1,j);
%            a(i-1,j)=temp;
%        end
%   end
%end

for i=1:1:n
    u(i,i)=1;
    
    for j=i:1:n
        sum=0;
        for k=1:1:i-1
            sum=sum+l(j,k)*u(k,i);
        end
        l(j,i)=a(j,i)-sum;
    end
    
    for j=i+1:1:n
        sum=0;
        for k=1:1:i-1
            sum=sum+l(i,k)*u(k,j);
        end
        u(i,j)=(a(i,j)-sum)/l(i,i);
    end
end

fprintf('The Lower matrix---\n');
disp(l);
fprintf('The Upper matrix---\n');
disp(u);


end

