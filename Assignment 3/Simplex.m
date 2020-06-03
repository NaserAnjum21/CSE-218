function [ output_args ] = Simplex(var,con,mat )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[row col]=size(mat);

disp(row);
disp(col);



repeat=1;

while repeat==1
    
    minc=9999;

    for i=1:1:col
        if mat(1,i)<minc
            minc=mat(1,i);
            pc=i;
        end
    end

    minr=9999;

    for i=2:1:row
        temp=mat(i,col)/mat(i,pc);
        if temp<minr
            minr=temp;
            pr=i;
        end
    end

    pe=mat(pr,pc);
    
    fprintf('PR-PC is %d %d  PE is %f \n ',pr,pc, pe);

    for i=1:1:col
        mat(pr,i)=mat(pr,i)./pe;
    end
    
    mat(1,col)=mat(1,col)-mat(pr,col)*mat(1,pc);
    %disp(mat(1,col));
    
    
    
    for i=1:1:row
        if i~=pr
        for j=1:1:col
            count=0;
            for k=1:1:row
                if mat(k,j)~= 0
                    count=count+1;
                end
            end
                
            if count~=1
                mat(i,j)= mat(i,j)-( mat(pr,j)* mat(i,pc));
            end
        end
        disp(mat);
        end
    end
    
    cnt=0;
    
    for i=1:1:col
        if mat(1,i)<0
            cnt=cnt+1;
        end
    end
    
    if(cnt==0)
        repeat=-1;
    end
end
    
disp(mat);





end

