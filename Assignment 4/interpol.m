function [ output_args ] = interpol(x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

m=length(x);
n=length(y);

mat=zeros(n,n);

testx=[-0.5727 -0.4667 -0.3333 -0.2000 -0.0667 0.0667 0.2000 0.3333 0.4667 0.6000]
testy=[4.8068807 2.5042230 1.2679470 0.6012800 0.1555561 -0.1111117 -0.2012800 -0.1568358 -0.3264447 -2.1992942]


disp(m);
disp(n);

for i=1:1:n
    mat(i,1)=y(i);
end

for i=2:1:n;
    for j=2:i
        mat(i,j)=(mat(i,j-1)-mat(i-1,j-1))/(x(i)-x(i-j+1));
    end
end

disp(mat);

for i=2:1:n
    space=ceil(linspace(1,23,i));
    [r c]=size(space);
    b=zeros(1,c);
    a=zeros(1,c);
    for j=1:1:c
        a(j)=x(j);
        b(j)=mat(n,n);
        cnt=1;
        for k=n-1:-1:1
            if cnt==i
                break;
            end
            b(j)=b(j)*(a(j)-x(k))+mat(k,k);
        end
        scatter(a(j),b(j));
        hold on;
    end
    
    err=0;
    
    for j=1:1:10
        var=testx(1,j);
        sum=mat(n,n);
        cnt=1;
        for k=n-1:-1:1
            if cnt==i
                break;
            end
            sum=sum*(var-x(k))+mat(k,k);
            cnt=cnt+1;
        end
        
        temp=abs((sum-testy(j))/testy(j));
        temp=temp*100;
        
        err=err+temp;
        
    end
    
    err=err/10;
    
    fprintf('The error is--> %f \n ',err);
        
        %str={'The error% is--> %f',temp};
    
    
    plot(a,b);
    pause(2);
end
    
    
    
    
    
        
    


end

