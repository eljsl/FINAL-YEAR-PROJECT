% Env=[0:1:9;0:1:9]
% 
% n=[0 1 2]
% 
% nrows=243
% ncols=5
% Env1=zeros(nrows,ncols)
% for c = 1:ncols
%     for r = 1:nrows
% 
%         if r == c
%             A(r,c) = 2;
%         elseif abs(r-c) == 1
%             A(r,c) = -1;
%         else
%             A(r,c) = 0;
%         end
% 
%     end
% end
clear all
Env2=[0 0 0 0 0;
    0 0 0 0 1;
    0 0 0 0 2;
    0 0 0 1 0;
    0 0 0 1 1;
    0 0 0 1 2;
    0 0 0 2 0;
    0 0 0 2 1;
    0 0 0 2 2]

G=randi([0 6],9,1)

ALL=[Env2 G]

for r=1:9,
    if (ALL(r,6)==5) && (ALL(r,5)==1)
        x(r)=10;
    elseif (ALL(r,6)==5) && (ALL(r,5)~=1)
        x(r)=-1;
    elseif (ALL(r,6)==1) && (ALL(r,1)==2)
        x(r)=-5;
    elseif (ALL(r,6)==2) && (ALL(r,2)==2)
        x(r)=-5;
    elseif (ALL(r,6)==3) && (ALL(r,3)==2)
        x(r)=-5;
    elseif (ALL(r,6)==4) && (ALL(r,4)==2)
        x(r)=-5;
    else
        x(r)=0;
    end
end
