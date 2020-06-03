x1=[0:0.5:20];
y1=(16-x1)/2;
y2=9-x1;
y3=(24-3*x1)/2;
y4=0+0*x1;
plot(x1,y1,x1,y2,x1,y3,x1,y4);
grid;
hold on;

zmax=0;

x1=2; x2=7;
z=40*x1+30*x2;
if(z>zmax)
    zmax=z;
    x1_opt=x1;
    x2_opt=x2;
end
disp(z);

x1=6; x2=3;
z=40*x1+30*x2;
if(z>zmax)
    zmax=z;
    x1_opt=x1;
    x2_opt=x2;
end
disp(z);

x1=8; x2=0;
z=40*x1+30*x2;
if(z>zmax)
    zmax=z;
    x1_opt=x1;
    x2_opt=x2;
end
disp(z);

x1=0; x2=8;
z=40*x1+30*x2;
if(z>zmax)
    zmax=z;
    x1_opt=x1;
    x2_opt=x2;
end
disp(z);

fprintf('The maximum is %d for the value of x1 and x2 respectively %d and %d \n ',zmax,x1_opt,x2_opt);





