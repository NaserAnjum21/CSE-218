a=[3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10];
b=[7.85;-19.3;71.4];    
%GaussJordan(a,b);
[lo,up]=LU(a,b);
d=GaussJordan(lo,b);
sol=GaussJordan(up,d);
fprintf('The solution is---\n');
disp(sol);