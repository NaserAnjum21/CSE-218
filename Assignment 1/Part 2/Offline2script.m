q=2.0e-5;
Q=q;
a=0.85;
e=8.9e-12;
x=linspace(0.1,3);
y=1.25+0*x;

plot(x,force_calc(x),x,y);


r=bisection(@force_calc,0,0.5,0.005,15);
s=false_position(@force_calc,1,1.5,0.005,25);
disp(r);
disp(s);


