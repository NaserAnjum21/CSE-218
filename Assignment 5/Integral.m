function [ res ] = Integral( a,b,h )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    func= @(x) 1./(1+x*x);
    
    n=(b-a)./h;
    x=linspace(a,b,n+1);
    I=0;
    for i=1:1:n
        temp=func(x(i))+func(x(i+1));
        temp=temp./2;
        I=I+temp;
    end
    I=I*h;

    res=I;

end

