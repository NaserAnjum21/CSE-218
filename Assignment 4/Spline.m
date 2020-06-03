x=[-5.0000 -3.3333 -1.6667 0.0000 1.6667 3.3333 5.0000]
y=[0.0000000 2.2360680 2.8284271 3.0000000 2.8284271 2.2360680 0.0000000]

n=length(x);
m=n-1;

matrix=zeros(3*m,3*m);

k=1;
j=0;
temp=0;

for i=1:1:2*m
    if mod(i,2)==0
        k=k+1;
    end
    
    matrix(i,1+j)=x(k)*x(k);
    matrix(i,2+j)=x(k);
    matrix(i,3+j)=1;
    temp=temp+1;
    if temp==2
        j=j+3;
        temp=0;
    end
    
end

j=0;
k=2;

for i=2*m+1:1:3*m-1
    matrix(i,1+j)=2*x(k);
    matrix(i,2+j)=1;
    matrix(i,3+j)=0;
    matrix(i,4+j)=-2*x(k);
    matrix(i,5+j)=1;
    matrix(i,6+j)=0;
    j=j+3;
    k=k+1;
end

matrix(3*m,1)=1;

disp(matrix);

    
    

