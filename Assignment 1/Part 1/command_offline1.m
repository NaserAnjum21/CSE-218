p=input('Lower bound of interval   ');
q=input('Higher bound of interval  ');

x=linspace(p,q);
y1=log(x);
y2=ln(x,1);
y3=ln(x,3);
y4=ln(x,5);
y5=ln(x,200);
plot(x,y1);
hold on;
plot(x,y2,x,y3,x,y4,x,y5);
