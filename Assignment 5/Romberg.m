func= @(x) 1./(1+x*x);
a=-3;
b=3;
n=1;
true_val=2.498091544796509;
stop=0;
step=1;
siz=8;
mat=zeros(siz,siz);

for i=1:1:8
    h=(b-a)/n;
    mat(i,1)=Integral(a,b,h);
    n=n*2;
end

ratio=2;
step=siz-1;
k=2;


while stop==0

    %h1=(a-b)/n;
    %h2=h1/ratio;
    
    for i=1:1:step
        I1=mat(i,k-1);
        I2=mat(i+1,k-1);
    
        temp=1./((ratio*ratio)-1);
        I=I2+temp*(I2-I1);
        mat(i,k)=I;
    
        err=abs(true_val-I)/true_val;
        err=err*100;
        
        disp(err);
        
        if(err<1)
            stop=1;
        end
    
    end
    k=k+1;
    ratio=ratio*2;
    step=step-1;
    
end

fprintf('The integral is %f \n ',I);
        