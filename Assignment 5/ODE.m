dyfunc= @(x) -2*power(x,3)+12*power(x,2)-20*x+8.5;
yfunc= @(x) -0.5*power(x,4)+4*power(x,3)-10*power(x,2)+ 8.5*x+1;

a=0;
b=4;
h=0.5;
n=(b-a)/h;
x=linspace(0,4,n+1);
euler_y=zeros(1,n+1);
heun_y=zeros(1,n+1);
mid_y=zeros(1,n+1);
ral_y=zeros(1,n+1);
ty=zeros(1,n+1);
euler_y(1)=1;
heun_y(1)=1;
mid_y(1)=1;
ral_y(1)=1;
ty(1)=1;

for i=1:1:n
    ty(i+1)=yfunc(x(i));
    euler_y(i+1)=y(i)+dyfunc(x(i))*h;
    
    k1=dyfunc(x(i));
    k2=dyfunc(x(i)+h);
    heun_y(i+1)=heun_y(i)+0.5*(k1+k2)*h;
    
    k2=dyfunc(x(i)+0.5*h);
    mid_y(i+1)=mid_y(i+1)+k2*h;
    
    k2=dyfunc(x(i)+0.75*h);
    ral_y(i+1)=ral_y(i+1)+h*(k1+2*k2)./3;
   

end

ty(2)=yfunc(x(2));

plot(x,ty,'b');
hold on;
plot(x,euler_y,'r');
hold on;
plot(x,heun_y,'g');
hold on;
plot(x,mid_y,'y');
hold on;
plot(x,ral_y,'k');
hold on;


    