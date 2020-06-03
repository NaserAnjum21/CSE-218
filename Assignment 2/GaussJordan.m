function [x] = GaussJordan(a,b)

[m,n]=size(a);
[p,q]=size(b);

mat=a;

for i=1:1:p
    mat(i,n+1)=b(i,1);
end

for i=n:-1:2
    if mat(i-1,1)< mat(i,1)
        for j=1:1:n+1
            temp=mat(i,j);
            mat(i,j)=mat(i-1,j);
            mat(i-1,j)=temp;
        end
    end
end



%disp(mat);

for j=1:1:n
    for i=1:1:n
        if i~=j
            factor=mat(i,j)/mat(j,j);
            for k=1:1:n+1
                mat(i,k)=mat(i,k)-factor*mat(j,k);
            end
        end
    end
end

for i=1:1:n
    mat(i,n+1)=mat(i,n+1)/mat(i,i);
    mat(i,i)=1;
end

for i=1:1:n
    x(i,1)=mat(i,n+1);
end

fprintf('The final matrix after Gauss Jordan---\n');
disp(mat);
fprintf('The solution after Gauss Jordan---\n');
disp(x);



end

